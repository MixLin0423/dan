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
      title: 'danqi',
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
                        style: TextStyle(color: Color.fromRGBO(250, 192, 31, 1), fontSize: 13),
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
                        style: TextStyle(color: Color.fromRGBO(51, 50, 45, 1), fontSize: 13),
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
                        style: TextStyle(color: Color.fromRGBO(51, 50, 45, 1), fontSize: 13),
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
                        style: TextStyle(color: Color.fromRGBO(51, 50, 45, 1), fontSize: 13),
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
