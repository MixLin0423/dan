import 'package:flutter/material.dart';
import '4pages/mine.dart';
import '4pages/home.dart';
import '4pages/ride.dart';
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
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  var pageIndex=0;
  var pageList =[Home(),Ride(),zbk(),Mine()];

  Color _Bfontc1=Color.fromRGBO(250,192, 31, 1);
  Color _Bfontc2=Color.fromRGBO(51, 50, 45, 1);
  Color _Bfontc3=Color.fromRGBO(51, 50, 45, 1);
  Color _Bfontc4=Color.fromRGBO(51, 50, 45, 1);

  void _Bfont1(){
    setState(() {
      _Bfontc1=Color.fromRGBO(250, 192, 31, 1);
      _Bfontc2=Color.fromRGBO(51, 50, 45, 1);
      _Bfontc3=Color.fromRGBO(51, 50, 45, 1);
      _Bfontc4=Color.fromRGBO(51, 50, 45, 1);
    });
  }
  void _Bfont2(){
    setState(() {
      _Bfontc1=Color.fromRGBO(51,50, 45, 1);
      _Bfontc2=Color.fromRGBO(250, 192, 31, 1);
      _Bfontc3=Color.fromRGBO(51, 50, 45, 1);
      _Bfontc4=Color.fromRGBO(51, 50, 45, 1);
    });
  }
  void _Bfont3(){
    setState(() {
      _Bfontc1=Color.fromRGBO(51,50, 45, 1);
      _Bfontc2=Color.fromRGBO(51, 50, 45, 1);
      _Bfontc3=Color.fromRGBO(250, 192, 31, 1);
      _Bfontc4=Color.fromRGBO(51, 50, 45, 1);
    });
  }
  void _Bfont4(){
    setState(() {
      _Bfontc1=Color.fromRGBO(51,50, 45, 1);
      _Bfontc2=Color.fromRGBO(51, 50, 45, 1);
      _Bfontc3=Color.fromRGBO(51, 50, 45, 1);
      _Bfontc4=Color.fromRGBO(250, 192, 31, 1);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child:
        pageList[pageIndex],
      ),
      bottomNavigationBar: ClipRect(
        child: BottomAppBar(
          elevation: 0,
          shape: const CircularNotchedRectangle(),
          height: 70,
          color: Colors.white,
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //fixedSize: const Size(390, 100),
                  ),
                  onPressed: () {
                    pageIndex=0;
                    setState(() {
                    });
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
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //fixedSize: const Size(390, 100),
                  ),
                  onPressed: () {
                    pageIndex=1;
                    setState(() {
                    });
                    _Bfont2();
                  },
                  child:  Column(
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
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //fixedSize: const Size(390, 100),
                  ),
                  onPressed: () {
                    pageIndex=2;
                    setState(() {
                    });
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
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    //fixedSize: const Size(390, 100),
                  ),
                  onPressed: () {
                    pageIndex=3;
                    setState(() {
                    });
                    _Bfont4();
/*                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mine()),
                    );*/
                  },
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/我的.png',
                        width: 35,
                        height: 35,
                      ),
                      Text(
                        '我的',
                        style: TextStyle(color:_Bfontc4, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
