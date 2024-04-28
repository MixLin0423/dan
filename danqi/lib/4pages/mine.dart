import 'package:flutter/material.dart';

import '../main.dart';

class Mine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MineState();
}

class MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("这是我的页面"),
      ),
    );
  }
}
