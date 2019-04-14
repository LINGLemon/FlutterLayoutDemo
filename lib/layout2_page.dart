import 'package:flutter/material.dart';

class Layout2Page extends StatefulWidget {
  @override
  _LayoutPage2State createState() => _LayoutPage2State();
}

class _LayoutPage2State extends State<Layout2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('haha'),),
      body: Column(
        children: <Widget>[
          Text('列表'),
          Expanded(   // Container只能根据里面容器大小来设置高度，而Expanded能够向下寻找可用的布局
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
              child: Text('竖直拉伸高度'),
            ),
          ),
        ],
      ),
    );
  }
}