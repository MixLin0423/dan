import 'dart:ui';

import 'package:flutter/material.dart';

import '../main.dart';

class zbk extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => zbkState();
}

class zbkState extends State<zbk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 120, 0.06),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              ///顶栏
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
              padding: const EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
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
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///1
                          Container(
                            width: (MediaQuery.of(context).size.width-80)/2,
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
                            width: (MediaQuery.of(context).size.width-80)/2,
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
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///1
                          Container(
                            width: (MediaQuery.of(context).size.width-80)/2,
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
                            width: (MediaQuery.of(context).size.width-80)/2,
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

                    ///分类第一行
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround, // 使子Widget在Row中水平居中
                        children: [
                          ///1
                          Container(
                            width: (MediaQuery.of(context).size.width - 110) / 4,
                            height: 90,
                            color: Colors.red,
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
                                      fontSize: 11.0,
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
                                      fontSize: 11.0,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width - 110) / 4,
                            height: 80,
                            color: Colors.red,
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width - 110) / 4,
                            height: 80,
                            color: Colors.red,
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width - 110) / 4,
                            height: 80,
                            color: Colors.red,
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
          ],
        ),
      ),
    );
  }
}
