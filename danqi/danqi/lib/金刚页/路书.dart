import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:danqi/4pages/首页.dart';

class Lushu extends StatefulWidget {
  @override
  _LushuState createState() => _LushuState();
}

class _LushuState extends State<Lushu> with TickerProviderStateMixin {
  late final TabController lushuController;

  @override
  void initState() {
    super.initState();
    lushuController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  void dispose() {
    lushuController.dispose();
    super.dispose();
  }

  FontWeight _fontw1 = FontWeight.w300;
  FontWeight _fontw2 = FontWeight.w600;
  Color _fontc1 = const Color.fromRGBO(250, 204, 42, 1);
  Color _fontc2 = const Color.fromRGBO(250, 192, 31, 1);

  int dt1_zan = 122;
  bool dt1_isLiked = false;
  int dt2_zan = 366;
  bool dt2_isLiked = false;
  int dt3_zan = 67;
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
            '路书',
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
          padding: EdgeInsets.only(left: 15.0, top: 8, bottom: 8),
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
          controller: lushuController,
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
              child: Text('推荐'),
            ),
            Tab(
              child: Text('合集'),
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
            controller: lushuController,
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: _fontc2),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          3, // 生成三个圆角矩形块
                          (index) => Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10), // 左右间距为10
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20), // 圆角为10
                                color: index == 0
                                    ? Colors.amber
                                    : index == 1
                                        ? Colors.orange
                                        : Colors.amber,
                                boxShadow: [
                                  // 添加阴影效果
                                  BoxShadow(
                                    color: Colors.black26, // 阴影的颜色
                                    offset: Offset(2, 3), // 阴影的偏移量，表示阴影距离容器边缘的水平和垂直距离
                                    blurRadius: 5, // 阴影的模糊半径
                                    spreadRadius: 1, // 阴影的扩散半径
                                  ),
                                ],
                              ),
                              height: 40, // 设置固定高度为50
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
// 文字和图标并排显示
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        index == 0
                                            ? '地区'
                                            : index == 1
                                                ? '距离'
                                                : '路段',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: _fontw2,
                                        ),
                                      ),
// 小的向下三角形图标放在文字右侧
                                      SizedBox(width: 1), // 图标和文字之间的间隔
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

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
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 5, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/map5.png'), // 替换为您的图片路径
                                  fit: BoxFit.cover,
                                ),
                              ),
                              height: MediaQuery.of(context).size.width * 0.7,
                              width: MediaQuery.of(context).size.width -20-20-20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
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
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Container(
                                    //height: 45,
                                    width: 120,
                                    child:Center(
                                      child:RichText(
                                        text: const TextSpan(
                                          text: '杭州西湖一日游',
                                          style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 0,),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: _fontc2,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "爬坡:300m",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          letterSpacing: 0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2,),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: _fontc2,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "公里数:20km",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
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
                      top: 10,
                      left: 20,
                      right: 20,
                      bottom: 20
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
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10, bottom: 5, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/map5.png'), // 替换为您的图片路径
                                  fit: BoxFit.cover,
                                ),
                              ),
                              height: MediaQuery.of(context).size.width * 0.7,
                              width: MediaQuery.of(context).size.width -20-20-20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
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
                                Padding(
                                  padding: EdgeInsets.only(left: 0),
                                  child: Container(
                                    //height: 45,
                                    width: 120,
                                    child:Center(
                                      child:RichText(
                                        text: const TextSpan(
                                          text: '杭州西湖一日游',
                                          style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 0,),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: _fontc2,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "爬坡:300m",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2,),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 4),
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: _fontc2,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child:Center(
                                      child: Text(
                                        "公里数:20km",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
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



                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                  color: Colors.yellow,
                  width: 200,
                  height: 200,
                ),
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
