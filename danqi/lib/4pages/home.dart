import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/animation.dart';
import '../main.dart';

class Home extends StatefulWidget {
  //Home({Key key}) : super(key: key);
  const Home({super.key});
  //final GlobalKey<_MyHomePageState> homePageKey;
  //final GlobalKey<_MyHomePageState> key;
  //const Stack({required this.key});
  //final state = _key.currentState!;
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  double _Left = 0.0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_Left == 0.0) {
      // 仅在首次构建时设置值
      setState(() {
        _Left = MediaQuery.of(context).size.width * 0.30 + 22.5;
      });
    }
  }

  void _move(double left) {
    setState(() {
      _Left = left;
    });
  }

  var image = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/banner3.png",
  ];

  FontWeight _fontw1 = FontWeight.w300;
  FontWeight _fontw2 = FontWeight.w600;
  FontWeight _fontw3 = FontWeight.w300;
  FontWeight _fontw4 = FontWeight.w300;
  Color _fontc1 = const Color.fromRGBO(250, 204, 42, 1);
  Color _fontc2 = const Color.fromRGBO(250, 192, 31, 1);
  Color _fontc3 = const Color.fromRGBO(250, 204, 42, 1);
  Color _fontc4 = const Color.fromRGBO(250, 204, 42, 1);
  double _fonts1 = 17;
  double _fonts2 = 20;
  double _fonts3 = 17;
  double _fonts4 = 17;
  void _font1() {
    setState(() {
      _fontw1 = FontWeight.w600;
      _fontw2 = FontWeight.w300;
      _fontw3 = FontWeight.w300;
      _fontw4 = FontWeight.w300;

      _fontc1 = const Color.fromRGBO(250, 192, 31, 1);
      _fontc2 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc3 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc4 = const Color.fromRGBO(250, 204, 42, 1);

      _fonts1 = 20;
      _fonts2 = 17;
      _fonts3 = 17;
      _fonts4 = 17;
    });
  }

  void _font2() {
    setState(() {
      _fontw1 = FontWeight.w300;
      _fontw2 = FontWeight.w600;
      _fontw3 = FontWeight.w300;
      _fontw4 = FontWeight.w300;

      _fontc1 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc2 = const Color.fromRGBO(250, 192, 31, 1);
      _fontc3 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc4 = const Color.fromRGBO(250, 204, 42, 1);

      _fonts1 = 17;
      _fonts2 = 20;
      _fonts3 = 17;
      _fonts4 = 17;
    });
  }

  void _font3() {
    setState(() {
      _fontw1 = FontWeight.w300;
      _fontw2 = FontWeight.w300;
      _fontw3 = FontWeight.w600;
      _fontw4 = FontWeight.w300;

      _fontc1 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc2 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc3 = const Color.fromRGBO(250, 192, 31, 1);
      _fontc4 = const Color.fromRGBO(250, 204, 42, 1);

      _fonts1 = 17;
      _fonts2 = 17;
      _fonts3 = 20;
      _fonts4 = 17;
    });
  }

  void _font4() {
    setState(() {
      _fontw1 = FontWeight.w300;
      _fontw2 = FontWeight.w300;
      _fontw3 = FontWeight.w300;
      _fontw4 = FontWeight.w600;

      _fontc1 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc2 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc3 = const Color.fromRGBO(250, 204, 42, 1);
      _fontc4 = const Color.fromRGBO(250, 192, 31, 1);

      _fonts1 = 17;
      _fonts2 = 17;
      _fonts3 = 17;
      _fonts4 = 20;
    });
  }

  final PageController _pageController = PageController(initialPage: 1);
  void _goToPage1() {
    _pageController.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeOutCubic);
  }

  void _goToPage2() {
    _pageController.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeOutCubic);
  }

  void _goToPage3() {
    _pageController.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeOutCubic);
  }

  void _goToPage4() {
    _pageController.animateToPage(3, duration: const Duration(milliseconds: 500), curve: Curves.easeOutCubic);
  }


  ///定义点赞数值
  int dt1_zan = 122;
  bool dt1_isLiked = false;
  int dt2_zan = 366;
  bool dt2_isLiked = false;
  int dt3_zan = 67;
  bool dt3_isLiked = false;
  int dt4_zan = 78;
  bool dt4_isLiked = false;
  int dt5_zan = 8;
  bool dt5_isLiked = false;
  int dt6_zan = 10;
  bool dt6_isLiked = false;

  //final GlobalKey<_MyHomePageState> key = GlobalKey();
  //final GlobalKey<MyHomePageState> homeKey = GlobalKey<MyHomePageState>();
  //final myHomePageState = homeKey.currentState;

  @override
  Widget build(BuildContext context) {
    //final myHomePageState = homeKey.currentState;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 120, 0.06),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/顶栏背景.png'),
                fit: BoxFit.cover,
              ),
              border: Border(
                bottom: BorderSide(
                  color: Colors.black.withAlpha(20),
                  width: 1.0,
                ),
              ),
            ),
            //color: Colors.red,
            height: 129,
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
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
                        margin: const EdgeInsets.only(left: 15),
                        height: 38,
                        width: MediaQuery.of(context).size.width - 160,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 0, 0, 0.05),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            'assets/images/放大镜.png',
                            width: 15,
                            height: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/信息.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () {
                            MyHomePageState.currentInstance()?.addButtonPressed();
                            //myHomePageState!.addButtonPressed();
                            //homePageKey.currentState?.addButtonPressed();
                          },
                          child: Image.asset(
                            'assets/images/添加.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    //fit: StackFit.loose,
                    children: [
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.08,
                        //left: 5,
                        //right: 5,
                        top: 5,
                        //bottom: 5,
                        child: Container(
                          //color: Colors.red,
                          height: 42,
                          width: 70,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              splashFactory: InkRipple.splashFactory,
                              textStyle: TextStyle(fontSize: _fonts1),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              _goToPage1();
/*                              _move(MediaQuery.of(context).size.width * 0.08 +
                                  22.5);
                              _font1();*/
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Container(
                                width: 70,
                                height: 22,
                                child: Text(
                                  "关注",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _fontc1,
                                    height: 1,
                                    letterSpacing: 2,
                                    fontWeight: _fontw1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.30,
                        //left: 5,
                        //right: 5,
                        top: 5,
                        //bottom: 5,
                        child: Container(
                          height: 42,
                          width: 70,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              splashFactory: InkRipple.splashFactory,
                              textStyle: TextStyle(fontSize: _fonts2),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              _goToPage2();
/*                              _move(MediaQuery.of(context).size.width * 0.30 +
                                  22.5);
                              _font2();*/
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Container(
                                width: 70,
                                height: 22,
                                child: Text(
                                  "推荐",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _fontc2,
                                    height: 1,
                                    letterSpacing: 2,
                                    fontWeight: _fontw2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.52,
                        //left: 5,
                        //right: 5,
                        top: 5,
                        //bottom: 5,
                        child: Container(
                          height: 42,
                          width: 70,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              splashFactory: InkRipple.splashFactory,
                              textStyle: TextStyle(fontSize: _fonts3),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              _goToPage3();
/*                              _move(MediaQuery.of(context).size.width * 0.52 +
                                  22.5);
                              _font3();*/
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Container(
                                width: 70,
                                height: 22,
                                child: Text(
                                  "最新",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _fontc3,
                                    height: 1,
                                    letterSpacing: 2,
                                    fontWeight: _fontw3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width * 0.74,
                        //left: 5,
                        //right: 5,
                        top: 5,
                        //bottom: 5,
                        child: Container(
                          height: 42,
                          width: 70,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              splashFactory: InkRipple.splashFactory,
                              textStyle: TextStyle(fontSize: _fonts4),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              _goToPage4();
/*                              _move(MediaQuery.of(context).size.width * 0.74 +
                                  22.5);
                              _font4();*/
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Container(
                                width: 70,
                                height: 22,
                                child: Text(
                                  "精华",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: _fontc4,
                                    height: 1,
                                    letterSpacing: 2,
                                    fontWeight: _fontw4,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeOutCubic,
                        bottom: 9,
                        left: _Left,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(250, 192, 31, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 5,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 200,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              onPageChanged: (int index) {
                if (index == 0) {
                  setState(() {
                    _move(MediaQuery.of(context).size.width * 0.08 + 22.5);
                    _font1();
                  });
                } else if (index == 1) {
                  setState(() {
                    _move(MediaQuery.of(context).size.width * 0.30 + 22.5);
                    _font2();
                  });
                } else if (index == 2) {
                  setState(() {
                    _move(MediaQuery.of(context).size.width * 0.52 + 22.5);
                    _font3();
                  });
                } else if (index == 3) {
                  setState(() {
                    _move(MediaQuery.of(context).size.width * 0.74 + 22.5);
                    _font4();
                  });
                }
              },
              children: [
                Container(
                  ///关注页
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///动态1
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              //height: 405,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage('assets/images/动态背景.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          top: 10,
                                          right: 15,
                                        ),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/内容/头像/1 (2).jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 185,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 9),
                                              child: Text(
                                                "DomDomQiang",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "刚刚",
                                                style: TextStyle(
                                                    fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                        text: const TextSpan(
                                      text: '终于到了，等了10天，不算久。就是不会装啊，想问问这个难度高吗?主要是后拨的线没装，不行的话只好去车店了',
                                      style: TextStyle(color: Colors.black, fontSize: 15),
                                    )),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/4.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/5.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/6.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 160,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.1.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "GIANT TCR SLR",
                                            style:
                                                TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14),
                                                  bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '99赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '丢曲蔚然：',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                  TextSpan(
                                                      text: '后拨我没装过，保险起见，你还是去车店靠谱。',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      )),
                                                ])),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    padding: const EdgeInsets.all(0),
                                    //color: Colors.yellow,
                                    //height: 10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomLeft: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt3_zan = (dt3_zan == 67) ? 68 : 67;
                                              dt3_isLiked = !dt3_isLiked;
                                            });
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/点赞.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "$dt3_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt3_isLiked
                                                        ? const Color.fromRGBO(250, 192, 31, 1)
                                                        : Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/消息.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "46",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomRight: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/发送.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "2",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          ///动态2
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              //height: 405,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage('assets/images/动态背景.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/内容/头像/1 (3).jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 185,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 9),
                                              child: Text(
                                                "陈栩嘉",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "13分钟前",
                                                style: TextStyle(
                                                    fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                        text: const TextSpan(
                                            text: '这两天29寸千里达出口车又有货了本着不错过也试一试的原则今天来开个箱吧买了17寸的，包装跟普通...',
                                            style: TextStyle(color: Colors.black, fontSize: 15),
                                            children: <TextSpan>[
                                          TextSpan(
                                              text: '查看更多',
                                              style: TextStyle(
                                                color: Color.fromRGBO(250, 192, 31, 1),
                                              )),
                                        ])),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/10.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/11.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/12.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 140,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.1.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "美利达 勇士3",
                                            style:
                                                TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14),
                                                  bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '28赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '专业不抢手：',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                  TextSpan(
                                                      text: '我买的车也是，包装真的太一般了，我的箱子还都破了一个打洞。',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      )),
                                                ])),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    padding: const EdgeInsets.all(0),
                                    //color: Colors.yellow,
                                    //height: 10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomLeft: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt4_zan = (dt4_zan == 78) ? 79 : 78;
                                              dt4_isLiked = !dt4_isLiked;
                                            });
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/点赞.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "$dt4_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt4_isLiked
                                                        ? const Color.fromRGBO(250, 192, 31, 1)
                                                        : Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/消息.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "43",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomRight: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/发送.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "11",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                            child: Container(
                              height: 20,
                              //color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50, // 可以根据需要调整横线的长度
                                    height: 0.7, // 横线的粗细
                                    color: Color.fromRGBO(0, 0, 0, 0.4), // 横线的颜色，与文字颜色相匹配
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 1),
                                    child: Text(
                                      "我是有底线的",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 50, // 可以根据需要调整横线的长度
                                    height: 0.7, // 横线的粗细
                                    color: Color.fromRGBO(0, 0, 0, 0.4), // 横线的颜色，与文字颜色相匹配
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
                Container(
                  ///推荐页
                  //color: Colors.blue,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                //color: Colors.red,
                              ),
                              child: Swiper(
                                duration: 1500,
                                curve: Curves.easeOutExpo,
                                autoplayDelay: 7000,
                                autoplay: true,
                                itemCount: 3,
                                pagination: const SwiperPagination(
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(bottom: 4, right: 8),
                                    builder: DotSwiperPaginationBuilder(
                                      color: Colors.white60,
                                      activeColor: Colors.white,
                                      size: 6,
                                      activeSize: 6,
                                    )),
                                itemBuilder: (context, index) {
                                  //final image = image[index];
                                  return ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    child: Image.asset(
                                      image[index],
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            //金刚页
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                              ),
                              height: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "assets/images/路书.png",
                                                width: 40,
                                              ),
                                            )),
                                        const Text(
                                          "路书",
                                          style: TextStyle(color: Colors.black87, fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "assets/images/约骑.png",
                                                width: 40,
                                              ),
                                            )),
                                        const Text(
                                          "约骑",
                                          style: TextStyle(color: Colors.black87, fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "assets/images/评测.png",
                                                width: 40,
                                              ),
                                            )),
                                        const Text(
                                          "评测",
                                          style: TextStyle(color: Colors.black87, fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                "assets/images/二手.png",
                                                width: 40,
                                              ),
                                            )),
                                        const Text(
                                          "二手",
                                          style: TextStyle(color: Colors.black87, fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          ///动态1
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              //height: 405,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage('assets/images/动态背景.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/头像2.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 185,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 9),
                                              child: Text(
                                                "栗子一枚",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "来自头条推荐",
                                                style: TextStyle(
                                                    fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                      text: const TextSpan(
                                        text:
                                            '他挂的1088，车架17，27速，感觉比很多人的都便宜一些，然后我看成色还行。新手也不太懂，预算正好1k，不知道这个是不...',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '查看更多',
                                            style: TextStyle(
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/7.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/8.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/9.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 150,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.3.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "GIANT ATX 777",
                                            style:
                                                TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14),
                                                  bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '125赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '浊酒orz：',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                  TextSpan(
                                                      text: '建议买23款的勇士500d或者23款逐日500的二手，性价比更高。',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      )),
                                                ])),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    padding: const EdgeInsets.all(0),
                                    //color: Colors.yellow,
                                    //height: 10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomLeft: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt1_zan = (dt1_zan == 122) ? 123 : 122;
                                              dt1_isLiked = !dt1_isLiked;
                                            });
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/点赞.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "$dt1_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt1_isLiked
                                                        ? const Color.fromRGBO(250, 192, 31, 1)
                                                        : Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/消息.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "476",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomRight: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/发送.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "23",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          ///动态2
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              //height: 405,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage('assets/images/动态背景.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/内容/头像/1 (4).jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 185,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 9),
                                              child: Text(
                                                "一条小团团Vv",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "来自头条推荐",
                                                style: TextStyle(
                                                    fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                        text: const TextSpan(
                                            text:
                                                '终于把车组起来了，最终效果很好。也不枉我的期盼吧,哈哈哈哈辛苦了自己一下午啦，还算很满意，没想到组车也能这么快乐...',
                                            style: TextStyle(color: Colors.black, fontSize: 15),
                                            children: <TextSpan>[
                                          TextSpan(
                                              text: '查看更多',
                                              style: TextStyle(
                                                color: Color.fromRGBO(250, 192, 31, 1),
                                              )),
                                        ])),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/29.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/30.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/31.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 190,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.1.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "GIANT Defy Adv Pro",
                                            style:
                                                TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14),
                                                  bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '65赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '安静的云朵：',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                  TextSpan(
                                                      text: '我也觉得组车很快乐，但是有时候不得不找朋友帮忙哈哈哈哈',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      )),
                                                ])),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    padding: const EdgeInsets.all(0),
                                    //color: Colors.yellow,
                                    //height: 10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomLeft: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt2_zan = (dt2_zan == 366) ? 367 : 366;
                                              dt2_isLiked = !dt2_isLiked;
                                            });
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/点赞.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "$dt2_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt2_isLiked
                                                        ? const Color.fromRGBO(250, 192, 31, 1)
                                                        : Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/消息.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "476",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomRight: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/发送.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "23",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                            child: Container(
                              height: 20,
                              //color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50, // 可以根据需要调整横线的长度
                                    height: 0.7, // 横线的粗细
                                    color: Color.fromRGBO(0, 0, 0, 0.4), // 横线的颜色，与文字颜色相匹配
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 1),
                                    child: Text(
                                      "我是有底线的",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 50, // 可以根据需要调整横线的长度
                                    height: 0.7, // 横线的粗细
                                    color: Color.fromRGBO(0, 0, 0, 0.4), // 横线的颜色，与文字颜色相匹配
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
                Container(
                  ///最新页
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///动态1
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              //height: 405,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage('assets/images/动态背景.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          top: 10,
                                          right: 15,
                                        ),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/内容/头像/1 (5).jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 185,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 9),
                                              child: Text(
                                                "星月夜",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "1分钟前",
                                                style: TextStyle(
                                                    fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: '小白一枚，被忽悠买了29寸，裸身高才175。早知道上27.5了。今天差不多都改装完了溜了一圈，真是太难操控了，龙...',
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '查看更多',
                                            style: TextStyle(
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/13.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/14.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/15.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 170,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.4.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "GIANT Adv 2KOM",
                                            style:
                                                TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14),
                                                  bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '9赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '我爱z国：',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                  TextSpan(
                                                      text: '这个是哪个千里达外销的那款吗，车架怎么样',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      )),
                                                ])),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    padding: const EdgeInsets.all(0),
                                    //color: Colors.yellow,
                                    //height: 10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomLeft: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt5_zan = (dt5_zan == 8) ? 9 : 8;
                                              dt5_isLiked = !dt5_isLiked;
                                            });
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/点赞.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "$dt5_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt5_isLiked
                                                        ? const Color.fromRGBO(250, 192, 31, 1)
                                                        : Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/消息.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "3",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomRight: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/发送.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "0",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          ///动态2
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              //height: 405,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage('assets/images/动态背景.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/内容/头像/1 (8).jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 185,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 9),
                                              child: Text(
                                                "大锅",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "3分钟前",
                                                style: TextStyle(
                                                    fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                        text: const TextSpan(
                                            text: '这辆车骑了有一段时间了，一直感觉减震不行，最近在网上买了一套DT减震，半个小时就换好了，感觉效果还可以，周末去跑山...',
                                            style: TextStyle(color: Colors.black, fontSize: 15),
                                            children: <TextSpan>[
                                          TextSpan(
                                              text: '查看更多',
                                              style: TextStyle(
                                                color: Color.fromRGBO(250, 192, 31, 1),
                                              )),
                                        ])),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15,right:2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 74) / 2,
                                          height: 120,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/17.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 74) / 2,
                                          height: 120,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/18.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 150,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.2.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "GIANT ATX670",
                                            style:
                                                TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14),
                                                  bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '5赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '鱼子酱：',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                  TextSpan(
                                                      text: '没改过DT，如果气室杆有预留孔的话直接改，没有的话就要自己动手',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      )),
                                                ])),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    padding: const EdgeInsets.all(0),
                                    //color: Colors.yellow,
                                    //height: 10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomLeft: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt6_zan = (dt6_zan == 10) ? 11 : 10;
                                              dt6_isLiked = !dt6_isLiked;
                                            });
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/点赞.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "$dt6_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt6_isLiked
                                                        ? const Color.fromRGBO(250, 192, 31, 1)
                                                        : Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/消息.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "9",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.only(bottomRight: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/发送.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "1",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                            child: Container(
                              height: 20,
                              //color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50, // 可以根据需要调整横线的长度
                                    height: 0.7, // 横线的粗细
                                    color: Color.fromRGBO(0, 0, 0, 0.4), // 横线的颜色，与文字颜色相匹配
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 1),
                                    child: Text(
                                      "我是有底线的",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 50, // 可以根据需要调整横线的长度
                                    height: 0.7, // 横线的粗细
                                    color: Color.fromRGBO(0, 0, 0, 0.4), // 横线的颜色，与文字颜色相匹配
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
                Container(
                  ///精华页
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///动态1
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              //height: 405,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage('assets/images/动态背景.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          top: 10,
                                          right: 15,
                                        ),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/内容/头像/1 (2).jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 185,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 9),
                                              child: Text(
                                                "DomDomQiang",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "刚刚",
                                                style: TextStyle(
                                                    fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                        text: const TextSpan(
                                          text: '终于到了，等了10天，不算久。就是不会装啊，想问问这个难度高吗?主要是后拨的线没装，不行的话只好去车店了',
                                          style: TextStyle(color: Colors.black, fontSize: 15),
                                        )),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/4.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/5.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/6.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 160,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.1.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "GIANT TCR SLR",
                                            style:
                                            TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14),
                                                  bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '99赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '丢曲蔚然：',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: '后拨我没装过，保险起见，你还是去车店靠谱。',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          )),
                                                    ])),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    padding: const EdgeInsets.all(0),
                                    //color: Colors.yellow,
                                    //height: 10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.only(bottomLeft: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt3_zan = (dt3_zan == 67) ? 68 : 67;
                                              dt3_isLiked = !dt3_isLiked;
                                            });
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/点赞.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "$dt3_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt3_isLiked
                                                        ? const Color.fromRGBO(250, 192, 31, 1)
                                                        : Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/消息.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "46",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.only(bottomRight: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/发送.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "2",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          ///动态2
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              //height: 405,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  opacity: 0.6,
                                  image: AssetImage('assets/images/动态背景.png'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/内容/头像/1 (3).jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(60),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 185,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 9),
                                              child: Text(
                                                "陈栩嘉",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "13分钟前",
                                                style: TextStyle(
                                                    fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                        text: const TextSpan(
                                            text: '这两天29寸千里达出口车又有货了本着不错过也试一试的原则今天来开个箱吧买了17寸的，包装跟普通...',
                                            style: TextStyle(color: Colors.black, fontSize: 15),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: '查看更多',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(250, 192, 31, 1),
                                                  )),
                                            ])),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/10.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/11.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/12.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 140,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.1.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "美利达 勇士3",
                                            style:
                                            TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14),
                                                  bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '28赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '专业不抢手：',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: '我买的车也是，包装真的太一般了，我的箱子还都破了一个打洞。',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          )),
                                                    ])),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 0),
                                    padding: const EdgeInsets.all(0),
                                    //color: Colors.yellow,
                                    //height: 10,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.only(bottomLeft: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt4_zan = (dt4_zan == 78) ? 79 : 78;
                                              dt4_isLiked = !dt4_isLiked;
                                            });
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/点赞.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "$dt4_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt4_isLiked
                                                        ? const Color.fromRGBO(250, 192, 31, 1)
                                                        : Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/消息.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "43",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                        MaterialButton(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.only(bottomRight: Radius.circular(20))),
                                          height: 60,
                                          minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          elevation: 0,
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 3),
                                                //color: Colors.yellow,
                                                child: const Image(
                                                  image: AssetImage(
                                                    "assets/images/发送.png",
                                                  ),
                                                  width: 25,
                                                ),
                                              ),
                                              Text(
                                                "11",
                                                style: TextStyle(
                                                    fontSize: 18, color: Colors.black.withAlpha(200)),
                                              )
                                            ],
                                          ),
                                          //color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                            child: Container(
                              height: 20,
                              //color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50, // 可以根据需要调整横线的长度
                                    height: 0.7, // 横线的粗细
                                    color: Color.fromRGBO(0, 0, 0, 0.4), // 横线的颜色，与文字颜色相匹配
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 1),
                                    child: Text(
                                      "我是有底线的",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 50, // 可以根据需要调整横线的长度
                                    height: 0.7, // 横线的粗细
                                    color: Color.fromRGBO(0, 0, 0, 0.4), // 横线的颜色，与文字颜色相匹配
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
          ),
        ],
      ),
    );
  }
}
