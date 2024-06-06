import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../个人信息.dart';

class Mine extends StatefulWidget {
  const Mine({super.key});

  @override
  State<StatefulWidget> createState() => MineState();
}

class MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        //backgroundBlendMode: BlendMode.darken,
        image: DecorationImage(
          image: const AssetImage('assets/images-mine/bg1.png'), // 图片路径
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 120, 0.06),
        body: SingleChildScrollView(
          primary: true,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width - 55,
                  top: 35,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 35,
                      //color: Colors.red,
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Image.asset(
                            'assets/images/信息.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ),

/*                  RawMaterialButton(

                    onPressed: () {
                      // 跳转页面的操作
                    },
                    child: Image.asset(
                      "assets/images-mine/信息.png",
                      width: 35,
                      height: 35,
                    ), // 使用本地图片文件作为按钮图标
                    //shape: CircleBorder(), // 设置按钮形状为圆形
                    constraints: BoxConstraints.tightFor(
                        width: 45.0, height: 45.0), // 设置按钮大小
                    //padding: EdgeInsets.zero, // 移除按钮的内边距
                  ),*/ // 保持按钮之间的间距

                    // 使用SvgPicture.asset显示SVG图片作为PopupMenuButton的图标

                    /*PopupMenuButton<String>(
                    onSelected: (String value) {
                      // 根据选中的菜单项执行操作
                    },
                    itemBuilder: (BuildContext context) {
                      return {'Item1', 'Item2', 'Item3'}.map((String item) {
                        return PopupMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList();
                    },
                    // 使用本地SVG图片作为图标
                    child: RawMaterialButton(
                      onPressed: null, // 因为点击将由外层PopupMenuButton处理
                      child: Image.asset(
                        "assets/images-mine/添加.png",
                        width: 35,
                        height: 35,
                      ), // 使用本地SVG图片
                      shape: CircleBorder(), // 设置按钮形状为圆形
                      constraints: BoxConstraints.tightFor(
                          width: 40.0, height: 40.0), // 设置按钮大小
                      //padding: EdgeInsets.zero, // 移除按钮的内边距
                    ),
                  ),*/
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return PersonPage();
                    }),
                  );
                },
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/头像1.jpg'), // 修改图片路径
                      radius: 30,
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          '林霏烟雨笙',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 1.0),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Lv.4                        ',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(250, 192, 31, 1),
                                ),
                              ),
                              TextSpan(
                                text: '44141/64000',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey, // 将这部分文本颜色改为灰色
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 6,
                              width: 178,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[300],
                              ),
                            ),
                            Positioned(
                              left: 0, // 根据灰色矩形条的宽度和橙色矩形条的宽度来调整位置
                              child: Container(
                                width: 123, // 设置橙色矩形条的宽度
                                height: 6, // 保持和灰色矩形条相同的高度
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: const Color.fromRGBO(250, 192, 31, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14), // 设置圆角大小
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(150),
/*                    image: const DecorationImage(
                      opacity: 1,
                      image: AssetImage('assets/images-mine/bg2.png'),
                      fit: BoxFit.cover,
                    ),*/
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      //color: Colors.white,
                      padding: const EdgeInsets.only(top: 10, bottom: 14),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center, // 使子Widget在Row中水平居中
                        children: [
                          Container(
                            width: (MediaQuery.of(context).size.width - 42) / 3,
                            //color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 32,
                                  //color: Colors.yellow,
                                  padding: const EdgeInsets.only(),
                                  child: const Text(
                                    '61',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(),
                                  child: Text(
                                    '动态',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 25,
                            color: Colors.grey.withAlpha(150),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width - 42) / 3,
                            //color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 32,
                                  //color: Colors.yellow,
                                  padding: const EdgeInsets.only(),
                                  child: const Text(
                                    '19',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(),
                                  child: Text(
                                    '关注',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 25,
                            color: Colors.grey.withAlpha(150),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width - 42) / 3,
                            //color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 32,
                                  //color: Colors.yellow,
                                  padding: const EdgeInsets.only(),
                                  child: const Text(
                                    '30',
                                    style: TextStyle(
                                      fontFamily: 'bahnschrift',
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(),
                                  child: Text(
                                    '粉丝',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14), // 设置圆角大小
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(150),
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
                      padding: const EdgeInsets.only(top: 10, bottom: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              //color: Colors.yellow,
                              child: const Text(
                                "本月骑行",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center, // 使子Widget在Row中水平居中
                            children: [
                              Container(
                                width: (MediaQuery.of(context).size.width - 42) / 3,
                                //color: Colors.red,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 32,
                                      //color: Colors.yellow,
                                      padding: const EdgeInsets.only(),
                                      child: const Text(
                                        '84',
                                        style: TextStyle(
                                          fontFamily: 'bahnschrift',
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        '里程(km)',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 25,
                                color: Colors.grey.withAlpha(150),
                              ),
                              Container(
                                width: (MediaQuery.of(context).size.width - 42) / 3,
                                //color: Colors.red,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 32,
                                      //color: Colors.yellow,
                                      padding: const EdgeInsets.only(),
                                      child: const Text(
                                        '11',
                                        style: TextStyle(
                                          fontFamily: 'bahnschrift',
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        '本地排行',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 25,
                                color: Colors.grey.withAlpha(150),
                              ),
                              Container(
                                width: (MediaQuery.of(context).size.width - 42) / 3,
                                //color: Colors.red,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 32,
                                      //color: Colors.yellow,
                                      padding: const EdgeInsets.only(),
                                      child: const Text(
                                        '12h46m',
                                        style: TextStyle(
                                          fontFamily: 'bahnschrift',
                                          fontSize: 28.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(),
                                      child: Text(
                                        '运动时间',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14), // 设置圆角大小
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                    child: Container(
                      decoration: BoxDecoration(
/*                        image: const DecorationImage(
                          opacity: 0.8,
                          image: AssetImage('assets/images-mine/bg2.png'),
                          fit: BoxFit.cover,
                        ),*/
                        color: Colors.white.withAlpha(150),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      //color: Colors.white,
                      //margin: EdgeInsets.only(top: 16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: Container(
                                  //color: Colors.red,
                                  child: Image.asset(
                                    "assets/images-mine/我的关注.png",
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 15),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 38,
                                    //color: Colors.red,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "我的关注",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 15),
                                child: Container(
                                  //color: Colors.red,
                                  child: Image.asset(
                                    "assets/images-mine/我的收藏.png",
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 15),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 38,
                                    //color: Colors.red,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "我的收藏",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 15),
                                child: Container(
                                  //color: Colors.red,
                                  child: Image.asset(
                                    "assets/images-mine/我的装备.png",
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 12),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 38,
                                    //color: Colors.red,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "我的装备",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 15),
                                child: Container(
                                  //color: Colors.red,
                                  child: Image.asset(
                                    "assets/images-mine/浏览历史.png",
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 13),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 38,
                                    //color: Colors.red,
                                    child: const Text(
                                      textAlign: TextAlign.center,
                                      "浏览历史",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 20),
                                child: Container(
                                  //color: Colors.red,
                                  child: Image.asset(
                                    "assets/images-mine/我的钱包.png",
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 13, bottom: 20),
                                  child: Container(
                                    //alignment: Alignment.center,
                                    height: 38,
                                    //color: Colors.red,
                                    child: const Center(
                                      child: Text(
                                        //textAlign: TextAlign.center,
                                        "我的钱包",
                                        style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ), //

/*              child: ListView(
                padding: const EdgeInsets.only(left: 10), // ListView的内边距
                shrinkWrap: true, // 根据内容大小来设置ListView的大小
                physics: NeverScrollableScrollPhysics(), // 设置ListView不滚动
                children: <Widget>[
                  _buildListTile(Icons.work, '我的关注'),
                  _buildListTile(Icons.favorite, '我的收藏'),
                  _buildListTile(Icons.shopping_cart, '我的装备'),
                  _buildListTile(Icons.history, '浏览历史'),
                  _buildListTile(Icons.account_balance_wallet, '我的钱包'),
                ],
              ),*/
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14), // 设置圆角大小
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
/*                    image: const DecorationImage(
                      opacity: 1,
                      image: AssetImage('assets/images-mine/bg2.png'),
                      fit: BoxFit.cover,
                    ),*/
                        color: Colors.white.withAlpha(150),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      //color: Colors.white,
                      //margin: EdgeInsets.only(top: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              //color: Colors.red,
                              child: Image.asset(
                                "assets/images-mine/设置.png",
                                width: 38,
                                height: 38,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 4),
                            child: Container(
                              height: 38,
                              //alignment: Alignment.center,
                              //color: Colors.red,
                              child: const Text(
                                //textAlign: TextAlign.center,
                                "设置",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

/*              child: ListView(
                padding: const EdgeInsets.only(left: 10), // ListView的内边距
                shrinkWrap: true, // 根据内容大小来设置ListView的大小
                physics: NeverScrollableScrollPhysics(), // 设置ListView不滚动
                children: <Widget>[
                  _buildListTile(Icons.work, '我的关注'),
                  _buildListTile(Icons.favorite, '我的收藏'),
                  _buildListTile(Icons.shopping_cart, '我的装备'),
                  _buildListTile(Icons.history, '浏览历史'),
                  _buildListTile(Icons.account_balance_wallet, '我的钱包'),
                ],
              ),*/
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

/*  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Image.asset(),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        // 处理点击事件
      },
    );
  }*/
}
