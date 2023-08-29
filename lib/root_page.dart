import 'package:flutter/material.dart';
import 'package:wechat_flutter_demo/chat_page.dart';
import 'package:wechat_flutter_demo/discover_page.dart';
import 'package:wechat_flutter_demo/friend_page.dart';
import 'package:wechat_flutter_demo/mine_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex=3;

  List<Widget> _pages =[ChatPage(),FriendsPage(),DiscoverPage(),MinePage()];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: _pages[_currentIndex],
        // 底部导航栏
        bottomNavigationBar: BottomNavigationBar(
          // 未选中时的颜色设置  selectedItemColor和fixedColor只能二选一  fixedColor仅当BottomNavigationBarType.fixed时生效
          unselectedItemColor: Colors.red,
          // unselectedFontSize为12  selectedFontSize代表选中后bottom字体大小的变化 12的话字体不会变大
          selectedFontSize: 12,
          // 点击回调
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
          // fixed代表固定的选项卡数量 shifting代表动态选项卡数量
          type: BottomNavigationBarType.fixed,
          // 选中样式颜色
          fixedColor: Colors.green,
          // 默认index
          currentIndex: _currentIndex,
          items: const[
            BottomNavigationBarItem(icon:Icon( Icons.chair),label: '微信'),
            BottomNavigationBarItem(icon:Icon( Icons.bookmark),label: '通讯录'),
            BottomNavigationBarItem(icon:Icon( Icons.history),label: '发现'),
            BottomNavigationBarItem(icon:Icon( Icons.person_outline),label: '我的'),
          ],
        ),
      ),
    );
  }
}
