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
      body: Container(
        child: Text("这是骑行页面"),
      ),
    );
  }
}
