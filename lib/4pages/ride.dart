import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import '../main.dart';
import 'ride1.dart';

class Ride extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RideState();
}

class RideState extends State<Ride> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 120, 0.06),
      body: Center(
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
          child: Text("开始骑行",style: TextStyle(fontSize: 20),),
          color: Color.fromRGBO(255, 216, 119, 1.0),
          //color: Color.fromRGBO(250 , 192, 31, 1),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Ride1();
              }),
            );
          },

        ),
      ),
    );
  }
}