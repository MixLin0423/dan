import 'package:flutter/material.dart';
import 'dart:ui';
import '../main.dart';
import 'ride.dart';

class Ride1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RideState();
}

class RideState extends State<Ride1> {
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
                        child: Image.asset(
                          'assets/qx/地图.png',
                          fit: BoxFit.cover,
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
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Ride();
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
                onPressed: () {},
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
                onPressed: () {},
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
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin:EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 30,
                      height: 5,
                    ),
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
                                        '0.0',
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
                                      child: Image.asset('assets/qx/开始骑行.png'),
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
