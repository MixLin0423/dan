import 'package:flutter/material.dart';

import '../main.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 90,
            margin: EdgeInsets.only(top: 40),
            //color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/头像1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        height: 38,
                        width: 240,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(right: 195, top: 5, bottom: 5),
                          child: Image.asset(
                            'assets/images/放大镜.png',
                            width: 15,
                            height: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/信息.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Image.asset(
                          'assets/images/添加.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                            splashFactory: InkRipple.splashFactory,
                            textStyle: TextStyle(fontSize: 17),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "关注",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(250, 204, 42, 100),
                                height: 1,
                                letterSpacing: 2),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                            splashFactory: InkRipple.splashFactory,
                            textStyle: TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "推荐",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(250, 204, 42, 100),
                                height: 1,
                                letterSpacing: 2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                            splashFactory: InkRipple.splashFactory,
                            textStyle: TextStyle(fontSize: 17),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "最新",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(250, 204, 42, 100),
                                //height: 1,
                                textBaseline: TextBaseline.alphabetic,
                                letterSpacing: 2),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                            splashFactory: InkRipple.splashFactory,
                            textStyle: TextStyle(fontSize: 17),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "精华",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(250, 204, 42, 100),
                                height: 1,
                                letterSpacing: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(),
        ],
      ),
    );
  }
}
