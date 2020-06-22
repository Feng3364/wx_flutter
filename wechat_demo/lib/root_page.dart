import 'package:flutter/material.dart';
import 'package:wechatdemo/pages/chat/chat_page.dart';
import 'package:wechatdemo/pages/discover/discover_page.dart';
import 'package:wechatdemo/pages/friends/friends_page.dart';
import 'package:wechatdemo/pages/mine/mine.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  List<Widget> _pages = [ChatPage(), FriendsPage(), DiscoverPage(), MinePage()];
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // 随之滚动
//        onPageChanged: (int index) {
//          _currentIndex = index;
//          setState(() {});
//        },
        // 拒绝滚动
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            _controller.jumpToPage(index);
          },
          selectedFontSize: 12.0,
          currentIndex: _currentIndex,
          fixedColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar_chat.png",
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                "images/tabbar_chat_hl.png",
                height: 20,
                width: 20,
              ),
              title: Text("微信"),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar_friends.png",
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                "images/tabbar_friends_hl.png",
                height: 20,
                width: 20,
              ),
              title: Text("通讯录"),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar_discover.png",
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                "images/tabbar_discover_hl.png",
                height: 20,
                width: 20,
              ),
              title: Text("发现"),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar_mine.png",
                height: 20,
                width: 20,
              ),
              activeIcon: Image.asset(
                "images/tabbar_mine_hl.png",
                height: 20,
                width: 20,
              ),
              title: Text("我的"),
            ),
          ]),
    );
  }
}
