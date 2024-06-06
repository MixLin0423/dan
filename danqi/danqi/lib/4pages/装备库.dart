import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../个人信息.dart';

class zbk extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => zbkState();
}

///定义点赞数值
int dt1_zan = 122;
bool dt1_isLiked = false;
int dt2_zan = 91;
bool dt2_isLiked = false;

class zbkState extends State<zbk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 120, 0.06),
      body: Column(
        children: <Widget>[
          ///顶栏
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
            height: 90,
            padding: const EdgeInsets.only(top: 30),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return PersonPage();
                        }),
                      );
                    },
                    child: Container(
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
          ),
          Container(
            height: MediaQuery.of(context).size.height - 161,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ///分类
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(255),
/*                    image: const DecorationImage(
                      opacity: 1,
                      image: AssetImage('assets/images-mine/bg2.png'),
                      fit: BoxFit.cover,
                    ),*/
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      //color: Colors.white,
                      //margin: EdgeInsets.only(top: 16.0),
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 7),
                            child: Container(
                              //color: Colors.yellow,
                              child: const Text(
                                "分类",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'MiSans',
                                ),
                              ),
                            ),
                          ),

                          ///分类第一行
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround, // 使子Widget在Row中水平居中
                              children: [
                                ///品牌
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 33,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/trek.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '品牌',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///轮组
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/轮组.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '轮组',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///导轮
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/导轮.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '导轮',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///手变
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/手变.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '手变',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///码表
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/码表.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '码表',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///分类第二行
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround, // 使子Widget在Row中水平居中
                              children: [
                                ///刹车
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/夹器.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '刹车',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///坐垫
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/座包.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '坐垫',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///飞轮
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/飞轮.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '飞轮',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///头盔
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/头盔.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '头盔',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///全部
                                Container(
                                  //width: (MediaQuery.of(context).size.width - 42) / 3,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 28,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/配件分类/更多.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '全部',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///我的关注
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(255),
/*                    image: const DecorationImage(
                      opacity: 1,
                      image: AssetImage('assets/images-mine/bg2.png'),
                      fit: BoxFit.cover,
                    ),*/
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      //color: Colors.white,
                      //margin: EdgeInsets.only(top: 16.0),
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 7, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  //color: Colors.yellow,
                                  child: const Text(
                                    "我的关注",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'MiSans',
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),

                          ///我的关注第一行
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ///1
                                Container(
                                  width: (MediaQuery.of(context).size.width - 80) / 2,
                                  //color: Colors.red,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: Image.asset(
                                          'assets/zbk/我的关注/1.png',
                                          width: 25,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'BIANCHI SFO1',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            fontFamily: 'MiSans',
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///2
                                Container(
                                  width: (MediaQuery.of(context).size.width - 80) / 2,
                                  //color: Colors.red,
                                  //padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: Image.asset(
                                          'assets/zbk/我的关注/2.png',
                                          width: 25,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 3),
                                        child: Text(
                                          '禧玛诺 R7000手变',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            fontFamily: 'MiSans',
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///我的关注第二行
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ///1
                                Container(
                                  width: (MediaQuery.of(context).size.width - 80) / 2,
                                  //color: Colors.red,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: Image.asset(
                                          'assets/zbk/我的关注/3.png',
                                          height: 25,
                                          width: 27,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 3),
                                        child: Text(
                                          'FIZIK 3D 坐垫',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            fontFamily: 'MiSans',
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///2
                                Container(
                                  width: (MediaQuery.of(context).size.width - 80) / 2,
                                  //color: Colors.red,
                                  //padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        child: Image.asset(
                                          'assets/zbk/我的关注/4.png',
                                          width: 30,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 3),
                                        child: Text(
                                          '406 Birdy碟刹轮组',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            fontFamily: 'MiSans',
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///今日热门
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(255),
/*                    image: const DecorationImage(
                      opacity: 1,
                      image: AssetImage('assets/images-mine/bg2.png'),
                      fit: BoxFit.cover,
                    ),*/
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      //color: Colors.white,
                      //margin: EdgeInsets.only(top: 16.0),
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 7, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  //color: Colors.yellow,
                                  child: const Text(
                                    "今日热门",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'MiSans',
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.black54,
                                )
                              ],
                            ),
                          ),

                          ///热门第一行
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround, // 使子Widget在Row中水平居中
                              children: [
                                ///1
                                Container(
                                  width: (MediaQuery.of(context).size.width - 110) / 4,
                                  height: 90,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/今日热门/1.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'SCOTT SCALE 20',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          '10.1万热度',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///2
                                Container(
                                  width: (MediaQuery.of(context).size.width - 110) / 4,
                                  height: 90,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/今日热门/2.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'MIEJUN 26',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          '9.1万热度',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///3
                                Container(
                                  width: (MediaQuery.of(context).size.width - 110) / 4,
                                  height: 90,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/今日热门/3.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          '千里达 M720',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          '12.1万热度',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///4
                                Container(
                                  width: (MediaQuery.of(context).size.width - 110) / 4,
                                  height: 90,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/今日热门/4.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'uvex fnale visor',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          '8.9万热度',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///热门第2行
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround, // 使子Widget在Row中水平居中
                              children: [
                                ///5
                                Container(
                                  width: (MediaQuery.of(context).size.width - 110) / 4,
                                  height: 90,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/今日热门/5.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'YAKIMA前叉',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          '9.9万热度',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///6
                                Container(
                                  width: (MediaQuery.of(context).size.width - 110) / 4,
                                  height: 90,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/今日热门/6.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'JAVA山地自行车',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          '11.2万热度',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///3
                                Container(
                                  width: (MediaQuery.of(context).size.width - 110) / 4,
                                  height: 90,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/今日热门/7.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'TREK Bontrager...',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          '7.7万热度',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///4
                                Container(
                                  width: (MediaQuery.of(context).size.width - 110) / 4,
                                  height: 90,
                                  //color: Colors.red,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 32,
                                        //color: Colors.yellow,
                                        padding: const EdgeInsets.only(),
                                        child: InkWell(
                                          child: Image.asset('assets/zbk/今日热门/8.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'SHIMANO M6100',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          '13.4万热度',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                ///手变
                                /*Container(
                            //width: (MediaQuery.of(context).size.width - 42) / 3,
                            //color: Colors.red,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 32,
                                  //color: Colors.yellow,
                                  padding: const EdgeInsets.only(),
                                  child: InkWell(
                                    child: Image.asset('assets/zbk/配件分类/手变.png'),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    '手变',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),*/
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///骑友点评
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 60,
                      //color: Colors.red,
                      child: Text(
                        "骑友点评",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'MiSans',
                        ),
                      ),
                    ),
                  ),

                  ///点评动态1
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
                                      image: AssetImage('assets/images/内容/头像/1 (10).jpg'),
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
                                        "听装可乐不加冰",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        "52分钟前",
                                        style: TextStyle(fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: MediaQuery.of(context).size.width - 330, top: 10),
                                child: Opacity(
                                    opacity: 0.7,
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black54,
                                    )
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(250, 179, 33, 1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: 23,
                                  width: 45,
                                  child: Center(
                                    child: Text(
                                      "评分",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Center(
                                  child: Text(
                                    "9.0分",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(29, 152, 11, 1.0),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: 23,
                                  width: 45,
                                  child: Center(
                                    child: Text(
                                      "优点",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 120,
                                  child: Text(
                                    "刹车性能:好用。减震效果:舒服效果不错。安装方便:太方便了！",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(206, 15, 15, 1.0),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: 23,
                                  width: 45,
                                  child: Center(
                                    child: Text(
                                      "缺点",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 120,
                                  child: Text(
                                    "车座太差，咯腚，肯定要换的，客服不给换，加钱也不行，变速本人菜鸟，看...",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(29, 53, 218, 1.0),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: 23,
                                  width: 45,
                                  child: Center(
                                    child: Text(
                                      "总结",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 120,
                                  child: Text(
                                    "车子骑行感觉不错，手感也好，对于我这种非专业的代步健身目的用车足够!",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                //height: 80,
                                decoration: BoxDecoration(
/*                                  image: const DecorationImage(
                                    image: AssetImage("assets/images/动态背景1.png"),
                                    fit: BoxFit.cover,
                                    opacity: 0.5,
                                  ),*/
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(3, 3),
                                      color: Colors.black.withAlpha(50),
                                      spreadRadius: 1.0,
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/内容/1.3.jpg'),
                                              fit: BoxFit.fitWidth,
                                            ),
                                            color: Colors.white),
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'SAVA DECK6.0',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            '322人点评',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ],
                                      ),
                                      flex: 2,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text('8.7',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'bahnschrift',
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                  Icon(
                                                    Icons.star_half,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
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
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))),
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
                                        style: TextStyle(fontSize: 18, color: Colors.black.withAlpha(200)),
                                      )
                                    ],
                                  ),
                                  //color: Colors.red,
                                ),
                                MaterialButton(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
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
                                        style: TextStyle(fontSize: 18, color: Colors.black.withAlpha(200)),
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

                  ///点评动态2
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
                                      image: AssetImage('assets/images/内容/头像/1 (13).jpg'),
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
                                        "一梦浮生",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        "1小时前",
                                        style: TextStyle(fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(left: MediaQuery.of(context).size.width - 330, top: 10),
                                child: Opacity(
                                    opacity: 0.7,
                                    child: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.black54,
                                    )
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(250, 179, 33, 1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: 23,
                                  width: 45,
                                  child: Center(
                                    child: Text(
                                      "评分",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Color.fromRGBO(247, 207, 45, 1),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Center(
                                  child: Text(
                                    "7.0分",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(29, 152, 11, 1.0),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: 23,
                                  width: 45,
                                  child: Center(
                                    child: Text(
                                      "优点",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 120,
                                  child: Text(
                                    "科技感十足，车身线条流畅，钢劲有力，结构是铝合金框架构成的，十分的...",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(206, 15, 15, 1.0),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: 23,
                                  width: 45,
                                  child: Center(
                                    child: Text(
                                      "缺点",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 120,
                                  child: Text(
                                    "车辆过重，缺乏气动性，全车碳纤维部件较少。",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(29, 53, 218, 1.0),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  height: 23,
                                  width: 45,
                                  child: Center(
                                    child: Text(
                                      "总结",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width - 120,
                                  child: Text(
                                    "总体来说，还是不错，日常骑行都是不错的选择。",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                //height: 80,
                                decoration: BoxDecoration(
/*                                  image: const DecorationImage(
                                    image: AssetImage("assets/images/动态背景1.png"),
                                    fit: BoxFit.cover,
                                    opacity: 0.5,
                                  ),*/
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(3, 3),
                                      color: Colors.black.withAlpha(50),
                                      spreadRadius: 1.0,
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/内容/1.6.png'),
                                              fit: BoxFit.fitWidth,
                                            ),
                                            color: Colors.white),
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Electra Cafe Moto',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            '178人点评',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ],
                                      ),
                                      flex: 2,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text('7.8',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'bahnschrift',
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Color.fromRGBO(247, 207, 45, 1),
                                                    size: 14,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
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
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))),
                                  height: 60,
                                  minWidth: (MediaQuery.of(context).size.width - 40) / 3,
                                  onPressed: () {
                                    setState(() {
                                      // 交替增加和重置点赞数量
                                      dt2_zan = (dt2_zan == 91) ? 92 : 91;
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
                                        "194",
                                        style: TextStyle(fontSize: 18, color: Colors.black.withAlpha(200)),
                                      )
                                    ],
                                  ),
                                  //color: Colors.red,
                                ),
                                MaterialButton(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
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
                                        "8",
                                        style: TextStyle(fontSize: 18, color: Colors.black.withAlpha(200)),
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

                  ///底线
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
        ],
      ),
    );
  }
}
