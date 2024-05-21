import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import '../main.dart';

class Yueqi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => YueqiState();
}

class YueqiState extends State<Yueqi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 120, 0.06),//这是页面背景颜色，不要改
      body: Scaffold(
        body: Text('开始吧， 头部内容可以去主页dart复制我的代码'),
      ),
    );
  }
}