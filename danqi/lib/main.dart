import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '4pages/mine.dart';
import '4pages/home.dart';
import '4pages/ride.dart';
import 'test.dart';
import '4pages/zbk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '单骑',
      theme: ThemeData(
        fontFamily: 'MiSans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '单骑'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  static GlobalKey homeKey = GlobalKey();

  static currentInstance() {
    var state = MyHomePageState.homeKey.currentContext?.findAncestorStateOfType<MyHomePageState>();
    return state;
  }

  //final GlobalKey<HomeState> homeKey = GlobalKey<HomeState>();
  //final _key=GlobalKey<_MyHomePageState>();

  var pageIndex = 0;
  var pageList = [const Home(), Ride(), zbk(), const Mine()];

  Color _Bfontc1 = const Color.fromRGBO(250, 192, 31, 1);
  Color _Bfontc2 = const Color.fromRGBO(51, 50, 45, 1);
  Color _Bfontc3 = const Color.fromRGBO(51, 50, 45, 1);
  Color _Bfontc4 = const Color.fromRGBO(51, 50, 45, 1);

  void _Bfont1() {
    setState(() {
      _Bfontc1 = const Color.fromRGBO(250, 192, 31, 1);
      _Bfontc2 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc3 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc4 = const Color.fromRGBO(51, 50, 45, 1);
    });
  }

  void _Bfont2() {
    setState(() {
      _Bfontc1 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc2 = const Color.fromRGBO(250, 192, 31, 1);
      _Bfontc3 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc4 = const Color.fromRGBO(51, 50, 45, 1);
    });
  }

  void _Bfont3() {
    setState(() {
      _Bfontc1 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc2 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc3 = const Color.fromRGBO(250, 192, 31, 1);
      _Bfontc4 = const Color.fromRGBO(51, 50, 45, 1);
    });
  }

  void _Bfont4() {
    setState(() {
      _Bfontc1 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc2 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc3 = const Color.fromRGBO(51, 50, 45, 1);
      _Bfontc4 = const Color.fromRGBO(250, 192, 31, 1);
    });
  }
  //final GlobalKey<_MyHomePageState> homePageKey = GlobalKey<_MyHomePageState>();
  //GlobalKey<_MyHomePageState> homePageKey=new GlobalKey();
  //final GlobalKey _key = GlobalKey();
  //final GlobalKey<_MyHomePageState> _key = GlobalKey<_MyHomePageState>();
  //final GlobalKey<_MyHomePageState> _key = GlobalKey<_MyHomePageState>();

  bool isVisible = false;
  // 按钮点击事件
  void addButtonPressed() {
    setState(() {
      // 切换_isVisible的值，这将触发组件的重新构建
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: homeKey,
      children: [
        Scaffold(
          body: Center(
            child: pageList[pageIndex],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black.withAlpha(20),
                  width: 1.0,
                ),
              ),
              image: const DecorationImage(
                image: AssetImage('assets/images/底栏背景.png'),
                fit: BoxFit.cover,
              ),
            ),
            child:
            BottomAppBar(
              elevation: 0,
              shape: const CircularNotchedRectangle(),
              height: 70,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //fixedSize: const Size(390, 100),
                      ),
                      onPressed: () {
                        //homePageKey.currentState!.addButtonPressed();
                        pageIndex = 0;
                        setState(() {});
                        _Bfont1();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/首页.png',
                            width: 35,
                            height: 35,
                          ),
                          Text(
                            '首页',
                            style: TextStyle(color: _Bfontc1, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //fixedSize: const Size(390, 100),
                      ),
                      onPressed: () {
                        pageIndex = 1;
                        setState(() {});
                        _Bfont2();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/骑行.png',
                            width: 38,
                            height: 35,
                          ),
                          Text(
                            '骑行',
                            style: TextStyle(color: _Bfontc2, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //fixedSize: const Size(390, 100),
                      ),
                      onPressed: () {
                        pageIndex = 2;
                        setState(() {});
                        _Bfont3();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/装备库.png',
                            width: 35,
                            height: 35,
                          ),
                          Text(
                            '装备库',
                            style: TextStyle(color: _Bfontc3, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //fixedSize: const Size(390, 100),
                      ),
                      onPressed: () {
                        pageIndex = 3;
                        setState(() {});
                        _Bfont4();
/*                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mine()),
                    );*/
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/我的.png',
                            width: 35,
                            height: 35,
                          ),
                          Text(
                            '我的',
                            style: TextStyle(color: _Bfontc4, fontSize: 13),
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
        isVisible
            ? Scaffold(
                backgroundColor: Colors.transparent,
                body: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 47,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0, top: 44),
                                child: InkWell(
                                  onTap: () {
                                    MyHomePageState.currentInstance()?.addButtonPressed();
                                  },
                                  child: Image.asset(
                                    'assets/images/关闭.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height - 450,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0,left: 20,right: 20),
                            child: Container(
                              //color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(0.3), // 阴影的颜色，透明度为20%
                                                offset: const Offset(2, 4), // 阴影在x和y方向上的偏移
                                                blurRadius: 4, // 阴影的模糊度
                                                spreadRadius: 0 // 阴影的扩散半径
                                                )
                                          ],
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'assets/images/文档.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "帖子",
                                          style: TextStyle(
                                              fontFamily: 'MiSans-Medium', fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(0.3), // 阴影的颜色，透明度为20%
                                                offset: const Offset(2, 4), // 阴影在x和y方向上的偏移
                                                blurRadius: 4, // 阴影的模糊度
                                                spreadRadius: 0 // 阴影的扩散半径
                                                )
                                          ],
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'assets/images/约骑.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "约骑",
                                          style: TextStyle(
                                              fontFamily: 'MiSans-Medium', fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(0.3), // 阴影的颜色，透明度为20%
                                                offset: const Offset(2, 4), // 阴影在x和y方向上的偏移
                                                blurRadius: 4, // 阴影的模糊度
                                                spreadRadius: 0 // 阴影的扩散半径
                                                )
                                          ],
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'assets/images/路书.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "路书",
                                          style: TextStyle(
                                              fontFamily: 'MiSans-Medium', fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                            child: Container(
                              //color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(0.3), // 阴影的颜色，透明度为20%
                                                offset: const Offset(2, 4), // 阴影在x和y方向上的偏移
                                                blurRadius: 4, // 阴影的模糊度
                                                spreadRadius: 0 // 阴影的扩散半径
                                            )
                                          ],
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'assets/images/二手.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "二手",
                                          style: TextStyle(
                                              fontFamily: 'MiSans-Medium', fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black.withOpacity(0.3), // 阴影的颜色，透明度为20%
                                                offset: const Offset(2, 4), // 阴影在x和y方向上的偏移
                                                blurRadius: 4, // 阴影的模糊度
                                                spreadRadius: 0 // 阴影的扩散半径
                                            )
                                          ],
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              'assets/images/评测.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "评测",
                                          style: TextStyle(
                                              fontFamily: 'MiSans-Medium', fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        //color: Colors.yellow,
                                      ),
                                    ],
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
              )
            : Container(),
      ],
    );
  }
}
