import 'package:flutter/material.dart';
import 'package:wechat_flutter_demo/discover_child_page.dart';

class DiscoverCell extends StatefulWidget {
  final String title;
  String? subTitle;
  final String imageName;
  String? subImageName;

  DiscoverCell({
    super.key,
    required this.title,
    this.subTitle,
    required this.imageName,
    this.subImageName,
  })  : assert(title != null, 'titlle不能为空'),
        assert(imageName != null, 'imageName不能为空');

  @override
  State<StatefulWidget> createState() => DiscoverCellState();
}

class DiscoverCellState extends State<DiscoverCell> {
  @override
  Widget build(BuildContext context) {
    // 封装能响应的组件
    return GestureDetector(
      onTap: () {
        // widget代表  DiscoverCell
        print('hehe_'+widget.title);
        // 跳转页面
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>
                DiscoverChildPage(widget.title)));
      },
      onTapCancel: () {
        print('离开了');
      },
      onTapDown: (TapDownDetails details) {
        print('点击了');
      },
      child: Container(
        height: 55,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(widget.imageName),
                    width: 20,
                  ),
                  // 间隙
                  SizedBox(
                    width: 15,
                  ),
                  Text(widget.title),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  // subTitle
                  widget.subTitle != null ? Text(widget.subTitle!) : Text(''),
                  // subImage
                  widget.subImageName != null
                      ? Image.asset(
                          widget.subImageName!,
                          width: 15,
                        )
                      : Container(),
                  // 箭头
                  Image(
                    image: AssetImage('images/icon_right.png'),
                    width: 15,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
