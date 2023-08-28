import 'package:flutter/material.dart';
import 'package:wechat_flutter_demo/root_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: RootPage(),
     // 缩放应用后台显示名称
     title: 'WechatDemo',
     // app 主题设置
     theme: ThemeData(
       // 取消bottom点击水波纹
       highlightColor: Color.fromRGBO(1, 0, 0, 0),
       splashColor: Color.fromRGBO(1, 0, 0, 0),
     ),
     debugShowCheckedModeBanner: false,
   );
  }
}
