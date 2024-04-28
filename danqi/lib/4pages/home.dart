import 'package:flutter/material.dart';
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

  FontWeight _fontw1 = FontWeight.w300;
  FontWeight _fontw2 = FontWeight.w600;
  FontWeight _fontw3 = FontWeight.w300;
  FontWeight _fontw4 = FontWeight.w300;
  Color _fontc1=Color.fromRGBO(250,204, 42, 1);
  Color _fontc2=Color.fromRGBO(250, 192, 31, 1);
  Color _fontc3=Color.fromRGBO(250,204, 42, 1);
  Color _fontc4=Color.fromRGBO(250,204, 42, 1);
  double _fonts1=17;
  double _fonts2=20;
  double _fonts3=17;
  double _fonts4=17;
  void _font1(){
    setState(() {
      _fontw1 = FontWeight.w600;
      _fontw2 = FontWeight.w300;
      _fontw3 = FontWeight.w300;
      _fontw4 = FontWeight.w300;

      _fontc1=Color.fromRGBO(250,192 , 31, 1);
      _fontc2=Color.fromRGBO(250,204, 42, 1);
      _fontc3=Color.fromRGBO(250,204, 42, 1);
      _fontc4=Color.fromRGBO(250,204, 42, 1);

      _fonts1=20;
      _fonts2=17;
      _fonts3=17;
      _fonts4=17;
    });
  }
  void _font2(){
    setState(() {
      _fontw1 = FontWeight.w300;
      _fontw2 = FontWeight.w600;
      _fontw3 = FontWeight.w300;
      _fontw4 = FontWeight.w300;

      _fontc1=Color.fromRGBO(250,204, 42, 1);
      _fontc2=Color.fromRGBO(250,192, 31, 1);
      _fontc3=Color.fromRGBO(250,204, 42, 1);
      _fontc4=Color.fromRGBO(250,204, 42, 1);

      _fonts1=17;
      _fonts2=20;
      _fonts3=17;
      _fonts4=17;
    });
  }
  void _font3(){
    setState(() {
      _fontw1 = FontWeight.w300;
      _fontw2 = FontWeight.w300;
      _fontw3 = FontWeight.w600;
      _fontw4 = FontWeight.w300;

      _fontc1=Color.fromRGBO(250,204, 42, 1);
      _fontc2=Color.fromRGBO(250,204, 42, 1);
      _fontc3=Color.fromRGBO(250,192, 31, 1);
      _fontc4=Color.fromRGBO(250,204, 42, 1);

      _fonts1=17;
      _fonts2=17;
      _fonts3=20;
      _fonts4=17;
    });
  }
  void _font4(){
    setState(() {
      _fontw1 = FontWeight.w300;
      _fontw2 = FontWeight.w300;
      _fontw3 = FontWeight.w300;
      _fontw4 = FontWeight.w600;

      _fontc1=Color.fromRGBO(250,204, 42, 1);
      _fontc2=Color.fromRGBO(250,204, 42, 1);
      _fontc3=Color.fromRGBO(250,204, 42, 1);
      _fontc4=Color.fromRGBO(250,192, 31, 1);

      _fonts1=17;
      _fonts2=17;
      _fonts3=17;
      _fonts4=20;
    });
  }



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
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 40,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                alignment: Alignment.center,
                                splashFactory: InkRipple.splashFactory,
                                textStyle: TextStyle(fontSize: _fonts1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              onPressed: () {
                                _move(50);
                                _font1();
                              },
                              child: Text(
                                "关注",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: _fontc1,
                                    height: 1,
                                    letterSpacing: 2,
                                  fontWeight: _fontw1,
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
                                textStyle: TextStyle(fontSize: _fonts2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              onPressed: () {
                                _move(140);
                                _font2();
                                },
                              child: Text(
                                "推荐",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: _fontc2,
                                  height: 1,
                                  letterSpacing: 2,
                                  fontWeight: _fontw2,
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
                                textStyle: TextStyle(fontSize: _fonts3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              onPressed: () {
                                _move(229);
                                _font3();
                                },
                              child: Text(
                                "最新",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: _fontc3,
                                    height: 1,
                                    textBaseline: TextBaseline.alphabetic,
                                    letterSpacing: 2,
                                  fontWeight: _fontw3,
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
                                textStyle: TextStyle(fontSize: _fonts4),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              onPressed: () {
                                _move(316);
                                _font4();
                                },
                              child: Text(
                                "精华",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: _fontc4,
                                    height: 1,
                                    letterSpacing: 2,
                                  fontWeight: _fontw4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease,
                      bottom: 8,
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
              ],
            ),
          ),
          SingleChildScrollView(),
        ],
      ),
    );
  }
}
