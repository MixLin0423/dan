import 'package:flutter/material.dart';

import '../main.dart';

class Ride extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RideState();
}

class RideState extends State<Ride> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(0, 0, 120, 0.06),
      body: Container(
        child: const Text("这是骑行页面",),
      ),
    );
  }
}
