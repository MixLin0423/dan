import 'package:flutter/material.dart';
import 'dart:ui';
import '../main.dart';
import 'ride.dart';
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

class Ride1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RideState();
}

class RideState extends State<Ride1> {
  LocationInfo get locationInfo => LocationInfo(locationResult);
  Map<String, Object> get locationResult => _locationResult ?? {};
  Map<String, Object>? _locationResult;
  late final StreamSubscription<Map<String, Object>> subscription;

  late AMapController _mapController;
  late double nowLatitude;
  late double nowLongitude;
  late double haiba=0.0;
  late double speed=0.00;
  String sportTime="00:00:00";
  Timer? _timer;
  final Stopwatch _stopwatch = Stopwatch();



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

  void _startTimer() {
    setState(() {
      if (!_stopwatch.isRunning) {
        _stopwatch.start();
        _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
          _updateDisplayTime();
        });
      }
    });
  }

  void _stopTimer() {
    setState(() {
      if (_stopwatch.isRunning) {
        _stopwatch.stop();
        _timer?.cancel();
      }
    });
  }

  void _updateDisplayTime() {
    Duration elapsed = _stopwatch.elapsed;
    int hours = elapsed.inHours;
    int minutes = elapsed.inMinutes % 60;
    int seconds = elapsed.inSeconds % 60;
    int milliseconds = elapsed.inMilliseconds % 1000;

    // 仅当需要显示到毫秒级别且希望保留两位小数时，可以使用以下方式计算
    // 不过题目要求是00:00:00格式，所以这部分注释掉了
    // double decimalSeconds = milliseconds / 1000;
    // String formattedDecimalSeconds = decimalSeconds.toStringAsFixed(2).substring(1); // 去掉前导的0.

    sportTime = "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
    setState(() {});
  }

  @override
  void initState() {
    //markerMap = {};
    nowLatitude = 30.2;
    nowLongitude = 120.0;
    AMapFlutterLocation.updatePrivacyShow(true, true);
    AMapFlutterLocation.updatePrivacyAgree(true);
    //requestPermission();
    AMapFlutterLocation.setApiKey("d1c436f65a1c35cf757f82eed0323cb1", "ios ApiKey");

    subscription = flutterLocation.onLocationChanged().listen((event) {
      setState(() {
        _locationResult = event;
      });
      print(event.toString());
      nowLatitude = (event["latitude"] as double);
      nowLongitude = (event["longitude"] as double);
      haiba=(event["altitude"] as double);
      speed=(event["speed"] as double);
    });
    //moveCamera;
    super.initState();
  }

  @override
  void dispose() {
    subscription.cancel();
    flutterLocation.destroy();
    super.dispose();
  }


  void moveCamera(LatLng position) {
    _mapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            //中心点
            target: position,
            //缩放级别
            zoom: 18,
            //俯仰角0°~45°（垂直与地图时为0）
            tilt: 30,
            //偏航角 0~360° (正北方为0)
            bearing: 0),
      ),
      animated: true,
      duration: 1000,
    );
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
/*    CameraUpdate.newCameraPosition(
      CameraPosition(
          //中心点
          target: LatLng(30.230378, 120.473658),
          //缩放级别
          zoom: 13,
          //俯仰角0°~45°（垂直与地图时为0）
          tilt: 30,
          //偏航角 0~360° (正北方为0)
          bearing: 0),
    );*/
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 120, 0.06),
      body: Stack(
        children: [
          // Map Container
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  flex: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    child: Transform.translate(
                      offset: Offset(0, 0),
                      child: Transform.scale(
                        scale: 1,
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.425,
                          width: MediaQuery.of(context).size.width,
                          child: mapWidget,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Button Interface Container
          Positioned(
            left: MediaQuery.of(context).size.width * 0.02, // 左边距为屏幕宽度的3%
            top: MediaQuery.of(context).size.height * 0.035, // 上边距为屏幕高度的3%
            child: MaterialButton(
                minWidth: 30,
                height: 40,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  _stopTimer();
                  flutterLocation.stopLocation();
                  dispose();
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }),
                  );
                },
                child: Image.asset(
                  'assets/qx/返回.png',
                  width: 30,
                  height: 30,
                )),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.02, // 左边距为屏幕宽度的3%
            top: MediaQuery.of(context).size.height * 0.04, // 上边距为屏幕高度的3%
            child: MaterialButton(
                minWidth: 30,
                height: 40,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                },
                child: Image.asset(
                  'assets/qx/设置.png',
                  width: 30,
                  height: 30,
                )),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.02, // 左边距为屏幕宽度的3%
            bottom: MediaQuery.of(context).size.height * 0.60, // 上边距为屏幕高度的3%
            child: MaterialButton(
                minWidth: 30,
                height: 40,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  LatLng currentPositon = LatLng(nowLatitude, nowLongitude);
                  moveCamera(currentPositon);
                },
                child: Image.asset(
                  'assets/qx/定位.png',
                  width: 30,
                  height: 30,
                )),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter, // Align bottom center
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26.0),
                    topRight: Radius.circular(26.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 30,
                      height: 5,
                    ),
                    ///查看经纬度
                    //Text("$nowLatitude , $nowLongitude"),

                    ///GPS
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'GPS ',
                                  style: TextStyle(
                                    color: Colors.black, // 设置文本颜色为黑色
                                    fontSize: 14, // 设置字号为18
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Image.asset(
                                  'assets/qx/new.png',
                                  width: 23,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 6,
                      child: Container(
                        //color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                //color: Colors.red,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '--',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                '温度(°C)',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                  height: 0.8, // 调整字间距
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.white,
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '--',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                '心率',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                  height: 0.8, // 调整字间距
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Content for second yellow container here
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0.00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 46,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'bahnschrift', // 设置字体为 bahns.ttf
                                        ),
                                      ),
                                      Text(
                                        '时速(km/h)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'MiSans-Bold',
                                          //fontWeight: FontWeight.bold,
                                          height: 0.1, // 调整字间距
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Content for red container here
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                //color: Colors.blue,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.white,
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '--',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                '功率(w)',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                  height: 0.8, // 调整字间距
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Content for first blue container here
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        color: Colors.white,
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '--',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                '踏频',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                  height: 0.8, // 调整字间距
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Content for second yellow container here
                                      ),
                                    ),
                                  ],
                                ),
                                // Content for yellow container here
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        //color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0.00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          height: 1.3, // 调整字间距
                                          fontFamily: 'bahnschrift', // 设置字体为 bahns.ttf
                                        ),
                                      ),
                                      Text(
                                        '里程(km)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'MiSans-Bold',
                                          //fontWeight: FontWeight.bold,
                                          height: 0.8, // 调整字间距
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Content for blue container here
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        sportTime,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          height: 1.3, // 调整字间距
                                          fontFamily: 'bahnschrift', // 设置字体为 bahns.ttf
                                        ),
                                      ),
                                      Text(
                                        '运动时间',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'MiSans-Bold',
                                          //fontWeight: FontWeight.bold,
                                          height: 0.8, // 调整字间距
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Content for red container here
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0.00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          height: 1.3, // 调整字间距
                                          fontFamily: 'bahnschrift', // 设置字体为 bahns.ttf
                                        ),
                                      ),
                                      Text(
                                        '运动均速(km/h)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'MiSans-Bold',
                                          //fontWeight: FontWeight.bold,
                                          height: 0.8, // 调整字间距
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Content for yellow container here
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        //color: Colors.orange,
                        // Add content for orange container here
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0.00',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          height: 1.3, // 调整字间距
                                          fontFamily: 'bahnschrift', // 设置字体为 bahns.ttf
                                        ),
                                      ),
                                      Text(
                                        '极速(km/h)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'MiSans-Bold',
                                          //fontWeight: FontWeight.bold,
                                          height: 0.8, // 调整字间距
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Content for blue container here
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$haiba',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          height: 1.3, // 调整字间距
                                          fontFamily: 'bahnschrift', // 设置字体为 bahns.ttf
                                        ),
                                      ),
                                      Text(
                                        '海拔(m)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'MiSans-Bold',
                                          //fontWeight: FontWeight.bold,
                                          height: 0.8, // 调整字间距
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Content for red container here
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0.0',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          height: 1.3, // 调整字间距
                                          fontFamily: 'bahnschrift',
                                        ),
                                      ),
                                      Text(
                                        '爬升(m)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontFamily: 'MiSans-Bold',
                                          //fontWeight: FontWeight.bold,
                                          height: 0.8, // 调整字间距
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Content for yellow container here
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        //color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                height: 80,
                                //color: Colors.red,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Transform.scale(
                                      scale: 0.6, // 缩小为原来的0.4倍
                                      child: Image.asset('assets/qx/记录.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Container(
                                //color: Colors.green,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(),
                                    child: Transform.scale(
                                      scale: 1,
                                      child: InkWell(
                                        onTap: () {
                                          flutterLocation.setLocationOption(aMapLocationOption);
                                          flutterLocation.startLocation();

                                          // setState(() {
                                          //   haiba;
                                          //   speed;
                                          // });
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor: Colors.white,
                                                title: Text('骑行开始！'),
                                                content: Text('已获取到您的定位，请点击定位按钮跳转到您的位置。',
                                                style: TextStyle(fontSize: 16),),
                                                actions: [
                                                  TextButton(
                                                    onPressed: (){
                                                      _startTimer();
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text('GO'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: Image.asset('assets/qx/开始骑行.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                // Content for red container here
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                height: 80,
                                //color: Colors.red,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 30), // 向右偏移 20 像素
                                    child: Transform.scale(
                                      scale: 0.6, // 缩小为原来的0.4倍
                                      child: Image.asset('assets/qx/码表.png'), // 替换 'assets/qx/记录.png' 为实际图片路径
                                    ),
                                  ),
                                ),
                                // Content for yellow container here
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
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
