import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import '../main.dart';

class Yueqi extends StatefulWidget {
  @override
  _YueqiState createState() => _YueqiState();
//State<StatefulWidget> createState() => YueqiState();
}

class _YueqiState extends State<Yueqi> with TickerProviderStateMixin {
  late final TabController asdp;
  @override
  void initState() {
    super.initState();
    asdp = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  void dispose() {
    asdp.dispose();
    super.dispose();
  }

  FontWeight _fontw1 = FontWeight.w300;
  FontWeight _fontw2 = FontWeight.w600;
  FontWeight _fontw3 = FontWeight.w300;
  FontWeight _fontw4 = FontWeight.w300;
  Color _fontc1 = const Color.fromRGBO(250, 204, 42, 1);
  Color _fontc2 = const Color.fromRGBO(250, 192, 31, 1);
  Color _fontc3 = const Color.fromRGBO(250, 204, 42, 1);
  Color _fontc4 = const Color.fromRGBO(250, 204, 42, 1);

  int dt1_zan = 122;
  bool dt1_isLiked = false;
  int dt2_zan = 58;
  bool dt2_isLiked = false;
  int dt3_zan = 98;
  bool dt3_isLiked = false;
  int dt4_zan = 78;
  bool dt4_isLiked = false;
  int dt5_zan = 8;
  bool dt5_isLiked = false;
  int dt6_zan = 10;
  bool dt6_isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/images/顶栏背景.png'),
        ),
        //backgroundColor: Colors.transparent,
        title: Container(
          child: Text(
            '约骑',
            style: TextStyle(
              color: _fontc2,
              height: 1,
              letterSpacing: 2,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        leading: Container(
          padding: EdgeInsets.only(left: 15.0,top: 8,bottom: 8),
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
                  'assets/images/添加.png',
                  width: 30,
                  height: 30,
                )),
          ),
          Container(
            width: 10,
          )
        ],

        bottom: TabBar(
          controller: asdp,
          labelColor: _fontc2,
          unselectedLabelStyle: TextStyle(
            fontSize: 19,
            color: Color.fromRGBO(250, 204, 42, 1),
          ),
          labelStyle: TextStyle(
            // color: _fontc2,
            height: 1,
            letterSpacing: 2,
            fontSize: 21,
            fontWeight: _fontw2,
          ),
          tabs: [
            Tab(
              child: Text('全部'),
            ),
            Tab(
              child: Text('附近'),
            ),
            Tab(
              child: Text('我的'),
            ),
          ],
          dividerHeight: 0,
          dividerColor: Colors.transparent,
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 4.0, color: _fontc2),
              insets: EdgeInsets.only(bottom: 7.0, left: 33, right: 33),
              borderRadius: BorderRadius.all(Radius.circular(30))
              //insets: EdgeInsets.symmetric(horizontal: 30.0,),
              ),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            //color: Colors.red,
            //backgroundBlendMode: BlendMode.darken,
            image: const DecorationImage(
              image: AssetImage('assets/images/lushu-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: TabBarView(
            controller: asdp,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                  color: Colors.yellow,
                  width: 200,
                  height: 200,
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(children: [
                  ///动态1
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      //height: 405,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12, // 阴影的颜色
                            offset: Offset(3, 6), // 阴影的偏移量，表示阴影距离容器边缘的水平和垂直距离
                            blurRadius: 5, // 阴影的模糊半径
                            spreadRadius: 1, // 阴影的扩散半径
                          ),
                        ],
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
                                      image: AssetImage('assets/images/头像2.jpg'),
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
                                        "栗子一枚",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        "39分钟前",
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5,bottom: 5,right: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/map2.jpg'), // 替换为您的图片路径
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height: MediaQuery.of(context).size.width * 0.3,
                                  width: MediaQuery.of(context).size.width * 0.3,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                height: MediaQuery.of(context).size.width * 0.3,
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 45,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(93, 159, 93, 1),
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '简单',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5), // 添加一个间距
                                        Text(
                                          '环西溪湿地休闲骑',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.place_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 23,),
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.42,
                                          child:RichText(
                                            text: const TextSpan(
                                              text: '浙江省杭州市西湖区西溪国家湿地公园',
                                              style: TextStyle(color: Colors.black54, fontSize: 14),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.access_time_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                        Container(
                                          child:RichText(
                                            text: const TextSpan(
                                              text: '2024-6-5',
                                              style: TextStyle(color: Colors.black54, fontSize: 14),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 3,),
                                        Icon(Icons.people_alt_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                        Container(
                                          child:RichText(
                                            text: const TextSpan(
                                              text: '48/50',
                                              style: TextStyle(color: Colors.black54, fontSize: 14),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 3,),
                                        Icon(Icons.route_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                        Container(
                                          child:RichText(
                                            text: const TextSpan(
                                              text: '14km',
                                              style: TextStyle(color: Colors.black54, fontSize: 14),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                ),
                              ),
                            ],
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
                                        "137",
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
                                        "21",
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

                  ///动态2
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      //height: 405,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12, // 阴影的颜色
                            offset: Offset(3, 6), // 阴影的偏移量，表示阴影距离容器边缘的水平和垂直距离
                            blurRadius: 5, // 阴影的模糊半径
                            spreadRadius: 1, // 阴影的扩散半径
                          ),
                        ],
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
                                        "可乐不加冰",
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5,bottom: 5,right: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/map3.png'), // 替换为您的图片路径
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height: MediaQuery.of(context).size.width * 0.3,
                                  width: MediaQuery.of(context).size.width * 0.3,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  height: MediaQuery.of(context).size.width * 0.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 22,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(249, 99, 58, 1),
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '困难',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 5), // 添加一个间距
                                          Text(
                                            '午潮山极限燃脂爬坡',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.place_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 23,),
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.42,
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '浙江省杭州市西湖区午潮山国家森林公园',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.access_time_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '2024-6-9',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 3,),
                                          Icon(Icons.people_alt_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '7/10',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 3,),
                                          Icon(Icons.route_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '47km',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                                      dt2_zan = (dt2_zan == 58) ? 59 : 58;
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
                                        "91",
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
                                        "19",
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

                  ///动态3
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      //height: 405,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12, // 阴影的颜色
                            offset: Offset(3, 6), // 阴影的偏移量，表示阴影距离容器边缘的水平和垂直距离
                            blurRadius: 5, // 阴影的模糊半径
                            spreadRadius: 1, // 阴影的扩散半径
                          ),
                        ],
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
                                      image: AssetImage('assets/images/内容/头像/1 (8).jpg'),
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
                                        "勤奋牛牛",
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5,bottom: 5,right: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/map4.png'), // 替换为您的图片路径
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height: MediaQuery.of(context).size.width * 0.3,
                                  width: MediaQuery.of(context).size.width * 0.3,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  height: MediaQuery.of(context).size.width * 0.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 22,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(250, 185, 61, 1),
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '适中',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 5), // 添加一个间距
                                          Text(
                                            '钱塘江沿线夜骑',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.place_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 23,),
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.42,
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '浙江省杭州市滨江区闻涛路滨江码头',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.access_time_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '2024-6-7',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 3,),
                                          Icon(Icons.people_alt_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '11/20',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 3,),
                                          Icon(Icons.route_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '29km',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                                      dt3_zan = (dt3_zan == 98) ? 99 : 98;
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
                                        "111",
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
                                        "26",
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

                  ///动态4
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 20,
                      right: 20,
                      bottom:20,
                    ),
                    child: Container(
                      //height: 405,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12, // 阴影的颜色
                            offset: Offset(3, 6), // 阴影的偏移量，表示阴影距离容器边缘的水平和垂直距离
                            blurRadius: 5, // 阴影的模糊半径
                            spreadRadius: 1, // 阴影的扩散半径
                          ),
                        ],
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
                                      image: AssetImage('assets/images/头像2.jpg'),
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
                                        "栗子一枚",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        "39分钟前",
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5,bottom: 5,right: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/map1.png'), // 替换为您的图片路径
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height: MediaQuery.of(context).size.width * 0.3,
                                  width: MediaQuery.of(context).size.width * 0.3,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  height: MediaQuery.of(context).size.width * 0.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 22,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(93, 159, 93, 1),
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '简单',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 5), // 添加一个间距
                                          Text(
                                            '环西溪湿地休闲骑',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.place_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 23,),
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.42,
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '浙江省杭州市西湖区西溪国家湿地公园',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.access_time_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '2024-6-5',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 3,),
                                          Icon(Icons.people_alt_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '48/50',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 3,),
                                          Icon(Icons.route_outlined,color: const Color.fromRGBO(250, 192, 31, 1),size: 18,),
                                          Container(
                                            child:RichText(
                                              text: const TextSpan(
                                                text: '14km',
                                                style: TextStyle(color: Colors.black54, fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                  color: Colors.grey,
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          )),
    );
  }
}
