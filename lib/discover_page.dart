import 'package:flutter/material.dart';
import 'package:wechat_flutter_demo/discover_cell.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverState();
}

class _DiscoverState extends State<DiscoverPage> {
  Color _themColor =Color.fromRGBO(220, 220, 220, 1.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themColor,
        centerTitle: true,
        title: const Text('发现页面'),
        elevation: 0.0,
      ),
      body:  Container(
          height: 800,
          color: Colors.yellow,
        child: ListView(
          children: [
            DiscoverCell(imageName: 'images/朋友圈.png',title: '朋友圈',),
            SizedBox(height: 10,),
            DiscoverCell(imageName: 'images/扫一扫.png',title: '扫一扫',),
            DiscoverCell(imageName: 'images/摇一摇.png',title: '摇一摇',),
            DiscoverCell(imageName: 'images/朋友圈.png',title: '朋友圈',),
          ],
        ),
        ),
      );
  }
}
