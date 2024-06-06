import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amap_flutter_location/amap_flutter_location.dart';
import 'package:amap_flutter_location/amap_location_option.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:ui' as ui;

class map extends StatefulWidget {
  const map({super.key});

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
  final AMapFlutterLocation flutterLocation = AMapFlutterLocation();
  late AMapPrivacyStatement aMapPrivacyStatement;
  final AMapLocationOption aMapLocationOption = AMapLocationOption(
    needAddress: true,
    geoLanguage: GeoLanguage.DEFAULT,
    onceLocation: false,
    locationMode: AMapLocationMode.Hight_Accuracy,
    locationInterval: 2000,
    pausesLocationUpdatesAutomatically: false,
    desiredAccuracy: DesiredAccuracy.Best,
    desiredLocationAccuracyAuthorizationMode: AMapLocationAccuracyAuthorizationMode.FullAccuracy,
    distanceFilter: -1,
  );
  late final StreamSubscription<Map<String, Object>> subscription;
  late int count = 0;

  late AMapController _mapController;
  late double nowLatitude;
  late double nowLongitude;
  Map<String, Object> get locationResult => _locationResult ?? {};
  Map<String, Object>? _locationResult;
  LocationInfo get locationInfo => LocationInfo(locationResult);
  late AMapWidget mapWidget = AMapWidget(
    apiKey: const AMapApiKey(
      iosKey: "null",
      androidKey: "d1c436f65a1c35cf757f82eed0323cb1",
    ),
    privacyStatement: const AMapPrivacyStatement(hasContains: true, hasShow: true, hasAgree: true),
    onMapCreated: onMapCreated,
    myLocationStyleOptions: MyLocationStyleOptions(true),
    //onCameraMove: moveCamera(LatLng(nowLatitude, nowLongitude)),
    //markers: Set.of(markerMap.values),
  );
  //late Map<String, Marker> markerMap;

  @override
  void initState() {
    //markerMap = {};
    nowLatitude = 33.2;
    nowLongitude = 121.0;
    AMapFlutterLocation.updatePrivacyShow(true, true);
    AMapFlutterLocation.updatePrivacyAgree(true);
    requestPermission();
    AMapFlutterLocation.setApiKey("d1c436f65a1c35cf757f82eed0323cb1", "ios ApiKey");

    subscription = flutterLocation.onLocationChanged().listen((event) {
      setState(() {
        _locationResult = event;
      });
      print(event.toString());
      nowLatitude = (event["latitude"] as double);
      nowLongitude = (event["longitude"] as double);
    });
    moveCamera;
    super.initState();
  }
  void onMapCreated(AMapController controller) {
/*    CameraUpdate cameraUpdate = CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(nowLatitude, nowLongitude),
        zoom: 10,
        tilt: 30,
        bearing: 0,
      ),
    );
    controller.moveCamera(cameraUpdate);*/
    CameraUpdate.newCameraPosition(
      CameraPosition(
        //中心点
          target: LatLng(31.230378, 121.473658),
          //缩放级别
          zoom: 13,
          //俯仰角0°~45°（垂直与地图时为0）
          tilt: 30,
          //偏航角 0~360° (正北方为0)
          bearing: 0),
    );
    setState(() {
      _mapController = controller;
    });
/*    getMarker(
      nowLatitude,
      nowLongitude,
      image: "images/me.jpg",
      title: "我",
    );*/
  }

  // static void updatePrivacyShow(bool hasContains, bool hasShow) {
  //   _methodChannel
  //       .invokeMethod('updatePrivacyStatement', {'hasContains': hasContains, 'hasShow': hasShow});
  // }
  //
  // static void updatePrivacyAgree(bool hasAgree) {
  //   _methodChannel
  //       .invokeMethod('updatePrivacyStatement', {'hasAgree': hasAgree});
  // }

  void setLocationOption(AMapLocationOption locationOption) {
    AMapLocationMode locationMode;
    int locationInterval = 3000;
  }

  @override
  void dispose() {
    subscription.cancel();
    flutterLocation.destroy();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('高德地图'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    flutterLocation.setLocationOption(aMapLocationOption);
                    flutterLocation.startLocation();
/*                    Timer.periodic(const Duration(seconds: 1), (timer) {
                      count++;
                      print("定位序列号$count");

                    }
                    );*/
                  },
                  child: Text("开始定位"),
                ),
                ElevatedButton(
                  onPressed: () {
                    flutterLocation.stopLocation();
                    dispose();
                  },
                  child: Text("停止定位"),
                ),
                ElevatedButton(
                  onPressed: () {
                    //moveCamera;
                    //_moveCamera;
                    // LatLng latlng = LatLng(locationInfo.latitude ?? 39.909187, locationInfo.longitude ?? 116.397451);
                    // CameraUpdate cameraUpdate = CameraUpdate.newLatLng(latlng);
                    // _mapController.moveCamera(cameraUpdate);
                    LatLng currentPositon=LatLng(nowLatitude, nowLongitude);
                    moveCamera(currentPositon);
                  },
                  child: Text("我的位置"),
                ),
              ],
            ),
            Container(
              //color: Colors.red,
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width,
              child: mapWidget,
            ),
            FutureBuilder<String?>(
              future: getApprovalNumber(),
              builder: (ctx, snapshot) {
                return Column(
                  children: [
                    Text("${snapshot.data}"),
                  ],
                );
              },
            ),
            Text("$nowLatitude , $nowLongitude"),
          ],
        ),
      ),
    );
  }

  /// 动态申请定位权限
  void requestPermission() async {
    bool hasLocationWhenInUsePermission = await requestIosLocationWhenInUserPermission();
    if (hasLocationWhenInUsePermission) {
      bool hasLocationAlwaysWhenInUsePermission = await requestIosLocationAlwaysWhenInUserPermission();
      if (hasLocationAlwaysWhenInUsePermission) {
      } else {}
    } else {}
  }

  /// 申请定位权限
  Future<bool> requestLocationPermission() async {
    var status = await Permission.location.status;
    if (status == PermissionStatus.granted) {
      return true;
    } else {
      status = await Permission.location.request();
      if (status == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  Future<bool> requestIosLocationPermission() async {
    var status = await Permission.location.status;
    if (status == PermissionStatus.granted) {
      return true;
    } else {
      status = await Permission.location.request();
      if (status == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  Future<bool> requestIosLocationWhenInUserPermission() async {
    var status = await Permission.locationWhenInUse.status;
    if (status == PermissionStatus.granted) {
      return true;
    } else {
      status = await Permission.locationWhenInUse.request();
      if (status == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  Future<bool> requestIosLocationAlwaysWhenInUserPermission() async {
    var status = await Permission.locationAlways.status;
    if (status == PermissionStatus.granted) {
      return true;
    } else {
      status = await Permission.locationAlways.request();
      print("Permission.locationAlways - $status");
      if (status == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  void requestAccuracyAuthorization() async {
    AMapAccuracyAuthorization currentAccuracyAuthorization = await flutterLocation.getSystemAccuracyAuthorization();
    if (currentAccuracyAuthorization == AMapAccuracyAuthorization.AMapAccuracyAuthorizationFullAccuracy) {
      print("精确定位类型");
    } else if (currentAccuracyAuthorization == AMapAccuracyAuthorization.AMapAccuracyAuthorizationReducedAccuracy) {
      print("模糊定位类型");
    } else {
      print("未知定位类型");
    }
  }
/*  void _moveCamera(CameraPosition cameraPosition) {
    _mapController.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(29, 119),
        zoom: 18,
        tilt: 30,
        bearing: 30)));
  }*/

  void moveCamera(LatLng position) {
    _mapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          //中心点
            target: position,
            //缩放级别
            zoom: 13,
            //俯仰角0°~45°（垂直与地图时为0）
            tilt: 10,
            //偏航角 0~360° (正北方为0)
            bearing: 0),
      ),
      animated: true,
      duration: 1000,
    );
  }

/*  void moveCamera(LatLng position) async {
    _mapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(nowLatitude, nowLongitude),
          zoom: 20,
          tilt: 30,
          bearing: 0,
        ),
      ),
      animated: true,
      duration: 2000,
    );
  }*/



/*  Future<void> getMarker(
    double latitude,
    double longitude, {
    String? image,
    String? title,
    String? snippet,
  }) async {
    LatLng position = LatLng(latitude, longitude);
    Marker marker = Marker(
      onTap: (s) {
        print(s);
      },
      infoWindow: InfoWindow(
        title: title,
        snippet: snippet,
      ),
      position: position,
      icon:BitmapDescriptor.defaultMarker,
      // icon: image != null
      //     ? await getBitmapDescriptorFromAssetBytes(image, 100, 100)
      //     : BitmapDescriptor.defaultMarker,
    );
    markerMap[marker.id] = marker;
    setState(() {
    });
  }*/

  Future<String?> getApprovalNumber() async {
    // 普通地图审图号
    String? mapContentApprovalNumber = await _mapController.getMapContentApprovalNumber();
    // // 卫星地图审图号
    // String? satelliteImageApprovalNumber =
    //     await _mapController.getSatelliteImageApprovalNumber();
    return mapContentApprovalNumber;
  }

///图片转换
/*  Future<BitmapDescriptor> getBitmapDescriptorFromAssetBytes(
    String path,
    double width,
    double height,
  ) async {
    var imageFile = await rootBundle.load(path);
    var pictureRecorder = ui.PictureRecorder();
    var canvas = Canvas(pictureRecorder);
    var imageUint8List = imageFile.buffer.asUint8List();
    var codec = await ui.instantiateImageCodec(imageUint8List);
    var imageFI = await codec.getNextFrame();
    paintImage(
      canvas: canvas,
      rect: Rect.fromLTWH(0, 0, width.toDouble(), height.toDouble()),
      image: imageFI.image,
      filterQuality: FilterQuality.medium,
    );
    var image = await pictureRecorder.endRecording().toImage(width.toInt(), height.toInt());
    var data = await image.toByteData(format: ui.ImageByteFormat.png);
    return BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
  }*/
}

class ConstConfig {
  static const AMapApiKey amapApiKeys = AMapApiKey(androidKey: 'd1c436f65a1c35cf757f82eed0323cb1', iosKey: '您申请的iOS端key');

  static const AMapPrivacyStatement amapPrivacyStatement = AMapPrivacyStatement(hasContains: true, hasShow: true, hasAgree: true);
}

class LocationInfo {
  //TODO:应当再此类对信息做转换，明确数据类型

  String? locationTime;
  String? province;
  String? callbackTime;
  String? district;
  double? speed;

  double? latitude;
  double? longitude;

  String? country;
  String? city;
  String? cityCode;
  String? street;
  String? streetNumber;
  String? address;
  String? description;

  double? bearing;
  double? accuracy;
  String? adCode;
  double? altitude;
  int? locationType;

  LocationInfo(Map<String, Object> locationResult) {
    locationTime = locationResult["locationTime"] as String;
    province = locationResult["province"] as String;
    callbackTime = locationResult["callbackTime"] as String;
    district = locationResult["district"] as String;
    speed = locationResult["speed"] as double;
    //
    latitude = double.parse(locationResult["latitude"] as String);
    longitude = double.parse(locationResult["longitude"] as String);
    //
    country = locationResult["country"] as String;
    city = locationResult["city"] as String;
    cityCode = locationResult["cityCode"] as String;
    street = locationResult["street"] as String;
    streetNumber = locationResult["streetNumber"] as String;
    address = locationResult["address"] as String;
    description = locationResult["description"] as String;
    //
    bearing = locationResult["bearing"] as double;
    accuracy = locationResult["accuracy"] as double;
    adCode = locationResult["adCode"] as String;
    altitude = locationResult["altitude"] as double;
    locationType = locationResult["locationType"] as int;
  }
}
