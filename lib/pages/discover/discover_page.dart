import 'package:flutter/material.dart';
import 'package:wechatdemo/const.dart';

import 'discover_cell.dart';
import 'discover_line.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  Color _themeColor = AppThemeColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColor,
        // 以下三个是专门为了安卓使用的属性
        title: Text("发现"),
        centerTitle: true,
        elevation: 0.0, // 底部边栏
      ),
      body: Container(
        color: _themeColor,
        child: ListView(
          children: <Widget>[
            DiscoverCell(
              imageName: "images/朋友圈.png",
              title: "朋友圈",
            ),
            SizedBox(height: 10),
            DiscoverCell(
              imageName: "images/扫一扫.png",
              title: "扫一扫",
            ),
            DiscoverLine(),
            DiscoverCell(
              imageName: "images/摇一摇.png",
              title: "摇一摇",
            ),
            SizedBox(height: 10),
            DiscoverCell(
              imageName: "images/看一看icon.png",
              title: "看一看",
            ),
            DiscoverLine(),
            DiscoverCell(
              imageName: "images/搜一搜.png",
              title: "搜一搜",
            ),
            SizedBox(height: 10),
            DiscoverCell(
              imageName: "images/附近的人icon.png",
              title: "附近的人",
            ),
            SizedBox(height: 10),
            DiscoverCell(
              imageName: "images/购物.png",
              title: "购物",
              subTitle: "618限时特价",
              subImageName: "images/badge.png",
            ),
            DiscoverLine(),
            DiscoverCell(
              imageName: "images/游戏.png",
              title: "游戏",
            ),
            SizedBox(height: 10),
            DiscoverCell(
              imageName: "images/小程序.png",
              title: "小程序",
            ),
          ],
        ),
      ),
    );
  }
}
