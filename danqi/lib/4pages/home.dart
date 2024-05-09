import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
//import '../main.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  double _Left = 140;


  void _move(double left) {
    setState(() {
      _Left = left;
    });
  }

  var image=["assets/images/banner1.png","assets/images/banner2.png","assets/images/banner3.png",];

  FontWeight _fontw1 = FontWeight.w300;
  FontWeight _fontw2 = FontWeight.w600;
  FontWeight _fontw3 = FontWeight.w300;
  FontWeight _fontw4 = FontWeight.w300;
  Color _fontc1 = Color.fromRGBO(250, 204, 42, 1);
  Color _fontc2 = Color.fromRGBO(250, 192, 31, 1);
  Color _fontc3 = Color.fromRGBO(250, 204, 42, 1);
  Color _fontc4 = Color.fromRGBO(250, 204, 42, 1);
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

      _fontc1 = Color.fromRGBO(250, 192, 31, 1);
      _fontc2 = Color.fromRGBO(250, 204, 42, 1);
      _fontc3 = Color.fromRGBO(250, 204, 42, 1);
      _fontc4 = Color.fromRGBO(250, 204, 42, 1);

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

      _fontc1 = Color.fromRGBO(250, 204, 42, 1);
      _fontc2 = Color.fromRGBO(250, 192, 31, 1);
      _fontc3 = Color.fromRGBO(250, 204, 42, 1);
      _fontc4 = Color.fromRGBO(250, 204, 42, 1);

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

      _fontc1 = Color.fromRGBO(250, 204, 42, 1);
      _fontc2 = Color.fromRGBO(250, 204, 42, 1);
      _fontc3 = Color.fromRGBO(250, 192, 31, 1);
      _fontc4 = Color.fromRGBO(250, 204, 42, 1);

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

      _fontc1 = Color.fromRGBO(250, 204, 42, 1);
      _fontc2 = Color.fromRGBO(250, 204, 42, 1);
      _fontc3 = Color.fromRGBO(250, 204, 42, 1);
      _fontc4 = Color.fromRGBO(250, 192, 31, 1);

      _fonts1 = 17;
      _fonts2 = 17;
      _fonts3 = 17;
      _fonts4 = 20;
    });
  }

  final PageController _pageController = PageController(initialPage: 1);
  void _goToPage1() {
    _pageController.animateToPage(0,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  void _goToPage2() {
    _pageController.animateToPage(1,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  void _goToPage3() {
    _pageController.animateToPage(2,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  void _goToPage4() {
    _pageController.animateToPage(3,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            //color: Colors.red,
            height: 93,
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
                        width: MediaQuery.of(context).size.width - 160,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
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
                          height: 45,
                          width: 70,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              splashFactory: InkRipple.splashFactory,
                              textStyle: TextStyle(fontSize: _fonts1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              _goToPage1();
                              _move(MediaQuery.of(context).size.width * 0.08 +
                                  22.5);
                              _font1();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Container(
                                width: 70,
                                height: 20,
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
                          height: 45,
                          width: 70,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              splashFactory: InkRipple.splashFactory,
                              textStyle: TextStyle(fontSize: _fonts2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              _goToPage2();
                              _move(MediaQuery.of(context).size.width * 0.30 +
                                  22.5);
                              _font2();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Container(
                                width: 70,
                                height: 20,
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
                          height: 45,
                          width: 70,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              splashFactory: InkRipple.splashFactory,
                              textStyle: TextStyle(fontSize: _fonts3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              _goToPage3();
                              _move(MediaQuery.of(context).size.width * 0.52 +
                                  22.5);
                              _font3();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Container(
                                width: 70,
                                height: 20,
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
                          height: 45,
                          width: 70,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              splashFactory: InkRipple.splashFactory,
                              textStyle: TextStyle(fontSize: _fonts4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              _goToPage4();
                              _move(MediaQuery.of(context).size.width * 0.74 +
                                  22.5);
                              _font4();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Container(
                                width: 70,
                                height: 20,
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
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                        bottom: 12,
                        left: _Left,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 192, 31, 1),
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
            height: MediaQuery.of(context).size.height - 203,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              //physics: ScrollPhysics(),
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
                  color: Colors.red,
                  child: Text("我是页面0"),
                ),
                Container(
                  //color: Colors.blue,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                //color: Colors.red,
                              ),
                              child: Swiper(
                                duration: 500,
                                curve: Curves.easeOut,
                                autoplayDelay: 5000,
                                autoplay: true,
                                itemCount: 3,
                                itemBuilder: (context ,index){
                                  //final image = image[index];
                                 return  ClipRRect(
                                     borderRadius: BorderRadius.circular(20),
                                     child: Image.asset(
                                       image[index],
                                       fit: BoxFit.cover,
                                     ),
                                 );
                                },
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(),
                            child: Container(
                              color: Colors.yellow,
                              height: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Text("我是页面2"),
                ),
                Container(
                  color: Colors.yellow,
                  child: Text("我是页面3"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
