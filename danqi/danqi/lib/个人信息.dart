import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import '../main.dart';

class PersonPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PersonPageState();
}

class PersonPageState extends State<PersonPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this, initialIndex: 1);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int dt3_zan = 67;
  bool dt3_isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: Container(
                child: RawMaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      'assets/qx/返回.png',
                      width: 25,
                      height: 25,
                    )),
              ),
              actions: [
                Container(
                  width: 40,
                  height: 40,
                  child: RawMaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      child: Image.asset(
                        'assets/images/放大镜.png',
                        width: 30,
                        height: 30,
                      )),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: RawMaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      child: Image.asset(
                        'assets/images/更多.png',
                        width: 30,
                        height: 30,
                      )),
                ),
                Container(
                  width: 10,
                )
              ],
              floating: true,
              pinned: true,
              stretch: true,
              collapsedHeight: 56,
              expandedHeight: MediaQuery.of(context).size.height * 0.45,
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  stretchModes: [
                    //StretchMode.blurBackground,
                    StretchMode.zoomBackground,
                  ],
                  background: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/个人主页/bg1.jpg'),
                          ),
                        ),
                        padding: EdgeInsets.only(bottom: 50),
                        //height: MediaQuery.of(context).size.height*0.35,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ///头像行
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 20, right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/头像1.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width - 277,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      color: Colors.black12,
                                      elevation: 0,
                                      height: 35,
                                      minWidth: 90,
                                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                      textColor: Colors.white,
                                      child: Text(
                                        "编辑资料",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: MaterialButton(
                                        onPressed: () {},
                                        color: Colors.black12,
                                        elevation: 0,
                                        height: 35,
                                        minWidth: 35,
                                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                        textColor: Colors.white,
                                        child: Image.asset(
                                          'assets/个人主页/二维码.png',
                                          width: 22,
                                        )),
                                  ),
                                ],
                              ),
                            ),

                            ///姓名行
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "林霏烟雨笙",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(250, 192, 31, 1),
                                          borderRadius: BorderRadius.all(Radius.circular(20))),
                                      width: 40,
                                      height: 16,
                                      child: Center(
                                        child: Text(
                                          "Lv.4",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            ///签名行
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "麻雀往来，燕子翻飞",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            ///数据行
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "1300获赞",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      "19关注",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      "30粉丝",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            ///个人信息行
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Container(
                                      height: 25,
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(0, 157, 255, 0.36),
                                          borderRadius: BorderRadius.all(Radius.circular(20))),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(right: 5, top: 3, bottom: 5),
                                              child: Image(
                                                image: AssetImage('assets/个人主页/男.png'),
                                              ),
                                            ),
                                            Text(
                                              "00后",
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Container(
                                      height: 25,
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      decoration: BoxDecoration(
                                          color: Colors.white24, borderRadius: BorderRadius.all(Radius.circular(20))),
                                      child: Center(
                                        child: Text(
                                          "浙江 温州",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.white24, borderRadius: BorderRadius.all(Radius.circular(20))),
                                      child: Center(
                                        child: Text(
                                          "金牛座",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.white24, borderRadius: BorderRadius.all(Radius.circular(20))),
                                      child: Center(
                                        child: Text(
                                          "刚刚活跃",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: 48,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                        ),
                      )
                    ],
                  )),
              bottom: TabBar(
                dividerHeight: 0,
                controller: _tabController,
                labelPadding: EdgeInsets.symmetric(horizontal: 0),
                labelColor: Color.fromRGBO(250, 192, 31, 1),
                unselectedLabelColor: Colors.black,
                //indicatorColor: Color.fromRGBO(250, 192, 31, 1),
                //indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.only(bottom: 6, left: 20, right: 20),
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Color.fromRGBO(250, 192, 31, 1), width: 3),
                    borderRadius: BorderRadius.circular(10)),
                tabs: <Widget>[
                  Tab(
                    child: Text('主页'),
                  ),
                  Tab(
                    child: Text('动态'),
                  ),
                  Tab(
                    child: Text('点评'),
                  ),
                  Tab(
                    child: Text('路书'),
                  ),
                  Tab(
                    child: Text('装备'),
                  ),
                  Tab(
                    child: Text('骑行数据'),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
//backgroundBlendMode: BlendMode.darken,
                image: DecorationImage(
                  image: AssetImage('assets/个人主页/bg2.png'), // 图片路径
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TabBarView(
              physics: BouncingScrollPhysics(),
                controller: _tabController,
                children: [
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return Padding(
                        padding: EdgeInsets.only(left: 30, top: 0),
                        child: Text(
                          "全部动态(1)",
                          style: TextStyle(color: Colors.black45),
                        ),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20), // 设置圆角大小
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          top: 10,
                                          right: 15,
                                        ),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage('assets/images/内容/头像/1 (2).jpg'),
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
                                                "DomDomQiang",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                "刚刚",
                                                style: TextStyle(fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width - 330, top: 10),
                                          child: Opacity(
                                            opacity: 0.7,
                                            child: Image.asset(
                                              'assets/images/向下箭头.png',
                                              width: 15,
                                              height: 15,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                    child: RichText(
                                        text: const TextSpan(
                                          text: '终于到了，等了10天，不算久。就是不会装啊，想问问这个难度高吗?主要是后拨的线没装，不行的话只好去车店了',
                                          style: TextStyle(color: Colors.black, fontSize: 15),
                                        )),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/4.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/5.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2, right: 15),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 76) / 3,
                                          height: 90,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/images/内容/6.jpg",
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              bottomRight: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 10),
                                    child: Container(
                                      width: 160,
                                      height: 30,
                                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(left: 7, right: 5),
                                            height: 28,
                                            width: 28,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/内容/1.1.jpg'),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "GIANT TCR SLR",
                                            style: TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      //height: 80,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage("assets/images/动态背景1.png"),
                                          fit: BoxFit.cover,
                                          opacity: 0.5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: const Offset(3, 3),
                                            color: Colors.black.withAlpha(50),
                                            spreadRadius: 1.0,
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                        color: Colors.white.withAlpha(255),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 45,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(14), bottomRight: Radius.circular(5)),
                                              color: Color.fromRGBO(250, 192, 31, 1),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(bottom: 2),
                                              child: Text(
                                                '99赞',
                                                style: TextStyle(fontSize: 12, color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 10),
                                            //color: Colors.red,
                                            child: RichText(
                                                text: const TextSpan(
                                                    text: '丢曲蔚然：',
                                                    style: TextStyle(color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: '后拨我没装过，保险起见，你还是去车店靠谱。',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          )),
                                                    ])),
                                          ),
                                        ],
                                      ),
                                    ),
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
                                          minWidth: (MediaQuery.of(context).size.width - 46) / 3,
                                          onPressed: () {
                                            setState(() {
                                              // 交替增加和重置点赞数量
                                              dt3_zan = (dt3_zan == 67) ? 68 : 67;
                                              dt3_isLiked = !dt3_isLiked;
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
                                                "$dt3_zan",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: dt3_isLiked
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
                                                "46",
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
                                                "2",
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
                        ),
                      );
                    }
                  }),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///全部动态文字
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 0),
                      child: Text(
                        "全部动态(1)",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),

                    ///动态1
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // 设置圆角大小
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        top: 10,
                                        right: 15,
                                      ),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage('assets/images/内容/头像/1 (2).jpg'),
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
                                              "DomDomQiang",
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: Text(
                                              "刚刚",
                                              style: TextStyle(fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width - 330, top: 10),
                                        child: Opacity(
                                          opacity: 0.7,
                                          child: Image.asset(
                                            'assets/images/向下箭头.png',
                                            width: 15,
                                            height: 15,
                                          ),
                                        )),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                  child: RichText(
                                      text: const TextSpan(
                                    text: '终于到了，等了10天，不算久。就是不会装啊，想问问这个难度高吗?主要是后拨的线没装，不行的话只好去车店了',
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  )),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/4.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/5.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2, right: 15),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/6.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 10),
                                  child: Container(
                                    width: 160,
                                    height: 30,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 7, right: 5),
                                          height: 28,
                                          width: 28,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/images/内容/1.1.jpg'),
                                                fit: BoxFit.fitWidth,
                                              ),
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "GIANT TCR SLR",
                                          style: TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    //height: 80,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage("assets/images/动态背景1.png"),
                                        fit: BoxFit.cover,
                                        opacity: 0.5,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(3, 3),
                                          color: Colors.black.withAlpha(50),
                                          spreadRadius: 1.0,
                                          blurRadius: 8.0,
                                        ),
                                      ],
                                      border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                      color: Colors.white.withAlpha(255),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 45,
                                          height: 20,
                                          decoration: const BoxDecoration(
                                            borderRadius:
                                                BorderRadius.only(topLeft: Radius.circular(14), bottomRight: Radius.circular(5)),
                                            color: Color.fromRGBO(250, 192, 31, 1),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(bottom: 2),
                                            child: Text(
                                              '99赞',
                                              style: TextStyle(fontSize: 12, color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 10),
                                          //color: Colors.red,
                                          child: RichText(
                                              text: const TextSpan(
                                                  text: '丢曲蔚然：',
                                                  style: TextStyle(color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                  children: <TextSpan>[
                                                TextSpan(
                                                    text: '后拨我没装过，保险起见，你还是去车店靠谱。',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ])),
                                        ),
                                      ],
                                    ),
                                  ),
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
                                        minWidth: (MediaQuery.of(context).size.width - 46) / 3,
                                        onPressed: () {
                                          setState(() {
                                            // 交替增加和重置点赞数量
                                            dt3_zan = (dt3_zan == 67) ? 68 : 67;
                                            dt3_isLiked = !dt3_isLiked;
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
                                              "$dt3_zan",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: dt3_isLiked
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
                                              "46",
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
                                              "2",
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
                      ),
                    ),

                    ///动态2
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // 设置圆角大小
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        top: 10,
                                        right: 15,
                                      ),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage('assets/images/内容/头像/1 (2).jpg'),
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
                                              "DomDomQiang",
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: Text(
                                              "刚刚",
                                              style: TextStyle(fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width - 330, top: 10),
                                        child: Opacity(
                                          opacity: 0.7,
                                          child: Image.asset(
                                            'assets/images/向下箭头.png',
                                            width: 15,
                                            height: 15,
                                          ),
                                        )),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                  child: RichText(
                                      text: const TextSpan(
                                    text: '终于到了，等了10天，不算久。就是不会装啊，想问问这个难度高吗?主要是后拨的线没装，不行的话只好去车店了',
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  )),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/4.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/5.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2, right: 15),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/6.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 10),
                                  child: Container(
                                    width: 160,
                                    height: 30,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 7, right: 5),
                                          height: 28,
                                          width: 28,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/images/内容/1.1.jpg'),
                                                fit: BoxFit.fitWidth,
                                              ),
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "GIANT TCR SLR",
                                          style: TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    //height: 80,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage("assets/images/动态背景1.png"),
                                        fit: BoxFit.cover,
                                        opacity: 0.5,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(3, 3),
                                          color: Colors.black.withAlpha(50),
                                          spreadRadius: 1.0,
                                          blurRadius: 8.0,
                                        ),
                                      ],
                                      border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                      color: Colors.white.withAlpha(255),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 45,
                                          height: 20,
                                          decoration: const BoxDecoration(
                                            borderRadius:
                                                BorderRadius.only(topLeft: Radius.circular(14), bottomRight: Radius.circular(5)),
                                            color: Color.fromRGBO(250, 192, 31, 1),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(bottom: 2),
                                            child: Text(
                                              '99赞',
                                              style: TextStyle(fontSize: 12, color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 10),
                                          //color: Colors.red,
                                          child: RichText(
                                              text: const TextSpan(
                                                  text: '丢曲蔚然：',
                                                  style: TextStyle(color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                  children: <TextSpan>[
                                                TextSpan(
                                                    text: '后拨我没装过，保险起见，你还是去车店靠谱。',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ])),
                                        ),
                                      ],
                                    ),
                                  ),
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
                                        minWidth: (MediaQuery.of(context).size.width - 46) / 3,
                                        onPressed: () {
                                          setState(() {
                                            // 交替增加和重置点赞数量
                                            dt3_zan = (dt3_zan == 67) ? 68 : 67;
                                            dt3_isLiked = !dt3_isLiked;
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
                                              "$dt3_zan",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: dt3_isLiked
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
                                              "46",
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
                                              "2",
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
                      ),
                    ),

                    ///动态2
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // 设置圆角大小
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        top: 10,
                                        right: 15,
                                      ),
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: AssetImage('assets/images/内容/头像/1 (2).jpg'),
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
                                              "DomDomQiang",
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(),
                                            child: Text(
                                              "刚刚",
                                              style: TextStyle(fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width - 330, top: 10),
                                        child: Opacity(
                                          opacity: 0.7,
                                          child: Image.asset(
                                            'assets/images/向下箭头.png',
                                            width: 15,
                                            height: 15,
                                          ),
                                        )),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                  child: RichText(
                                      text: const TextSpan(
                                    text: '终于到了，等了10天，不算久。就是不会装啊，想问问这个难度高吗?主要是后拨的线没装，不行的话只好去车店了',
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  )),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/4.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/5.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 2, right: 15),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 76) / 3,
                                        height: 90,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/内容/6.jpg",
                                              ),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 10),
                                  child: Container(
                                    width: 160,
                                    height: 30,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 7, right: 5),
                                          height: 28,
                                          width: 28,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/images/内容/1.1.jpg'),
                                                fit: BoxFit.fitWidth,
                                              ),
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "GIANT TCR SLR",
                                          style: TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    //height: 80,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage("assets/images/动态背景1.png"),
                                        fit: BoxFit.cover,
                                        opacity: 0.5,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(3, 3),
                                          color: Colors.black.withAlpha(50),
                                          spreadRadius: 1.0,
                                          blurRadius: 8.0,
                                        ),
                                      ],
                                      border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                      color: Colors.white.withAlpha(255),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 45,
                                          height: 20,
                                          decoration: const BoxDecoration(
                                            borderRadius:
                                                BorderRadius.only(topLeft: Radius.circular(14), bottomRight: Radius.circular(5)),
                                            color: Color.fromRGBO(250, 192, 31, 1),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(bottom: 2),
                                            child: Text(
                                              '99赞',
                                              style: TextStyle(fontSize: 12, color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 10),
                                          //color: Colors.red,
                                          child: RichText(
                                              text: const TextSpan(
                                                  text: '丢曲蔚然：',
                                                  style: TextStyle(color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                                  children: <TextSpan>[
                                                TextSpan(
                                                    text: '后拨我没装过，保险起见，你还是去车店靠谱。',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ])),
                                        ),
                                      ],
                                    ),
                                  ),
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
                                        minWidth: (MediaQuery.of(context).size.width - 46) / 3,
                                        onPressed: () {
                                          setState(() {
                                            // 交替增加和重置点赞数量
                                            dt3_zan = (dt3_zan == 67) ? 68 : 67;
                                            dt3_isLiked = !dt3_isLiked;
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
                                              "$dt3_zan",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: dt3_isLiked
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
                                              "46",
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
                                              "2",
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
                      ),
                    ),
                  ],
                ),
              ),
              Column(children: [
                ///动态1
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // 设置圆角大小
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    top: 10,
                                    right: 15,
                                  ),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/内容/头像/1 (2).jpg'),
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
                                          "DomDomQiang",
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(),
                                        child: Text(
                                          "刚刚",
                                          style: TextStyle(fontSize: 11, color: Color.fromRGBO(0, 0, 0, 0.4)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width - 330, top: 10),
                                    child: Opacity(
                                      opacity: 0.7,
                                      child: Image.asset(
                                        'assets/images/向下箭头.png',
                                        width: 15,
                                        height: 15,
                                      ),
                                    )),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                              child: RichText(
                                  text: const TextSpan(
                                    text: '终于到了，等了10天，不算久。就是不会装啊，想问问这个难度高吗?主要是后拨的线没装，不行的话只好去车店了',
                                    style: TextStyle(color: Colors.black, fontSize: 15),
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    width: (MediaQuery.of(context).size.width - 76) / 3,
                                    height: 90,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/内容/4.jpg",
                                          ),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Container(
                                    width: (MediaQuery.of(context).size.width - 76) / 3,
                                    height: 90,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/内容/5.jpg",
                                          ),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2, right: 15),
                                  child: Container(
                                    width: (MediaQuery.of(context).size.width - 76) / 3,
                                    height: 90,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/内容/6.jpg",
                                          ),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 10),
                              child: Container(
                                width: 160,
                                height: 30,
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 7, right: 5),
                                      height: 28,
                                      width: 28,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/内容/1.1.jpg'),
                                            fit: BoxFit.fitWidth,
                                          ),
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "GIANT TCR SLR",
                                      style: TextStyle(fontSize: 14, color: Colors.black.withAlpha(150)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                //height: 80,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/images/动态背景1.png"),
                                    fit: BoxFit.cover,
                                    opacity: 0.5,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(3, 3),
                                      color: Colors.black.withAlpha(50),
                                      spreadRadius: 1.0,
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  border: Border.all(color: const Color.fromRGBO(250, 192, 31, 1)),
                                  color: Colors.white.withAlpha(255),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 45,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        borderRadius:
                                        BorderRadius.only(topLeft: Radius.circular(14), bottomRight: Radius.circular(5)),
                                        color: Color.fromRGBO(250, 192, 31, 1),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(bottom: 2),
                                        child: Text(
                                          '99赞',
                                          style: TextStyle(fontSize: 12, color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 10),
                                      //color: Colors.red,
                                      child: RichText(
                                          text: const TextSpan(
                                              text: '丢曲蔚然：',
                                              style: TextStyle(color: Color.fromRGBO(250, 192, 31, 1), fontSize: 15),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: '后拨我没装过，保险起见，你还是去车店靠谱。',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
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
                                    minWidth: (MediaQuery.of(context).size.width - 46) / 3,
                                    onPressed: () {
                                      setState(() {
                                        // 交替增加和重置点赞数量
                                        dt3_zan = (dt3_zan == 67) ? 68 : 67;
                                        dt3_isLiked = !dt3_isLiked;
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
                                          "$dt3_zan",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: dt3_isLiked
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
                                          "46",
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
                                          "2",
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
                  ),
                ),
              ],),
              Container(
                color: Colors.blueAccent,
              ),
              Container(
                color: Colors.greenAccent,
              ),
              Container(
                color: Colors.teal,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
