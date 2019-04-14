import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Widget Demo'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipOval(
                      child: _image(100, 100),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        child: Opacity(
                          opacity: 0.6,
                          child: _image(80, 80),
                        ),
                      ),
                    ),
                  ],
                ),
                _image(100, 100),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    hintText: '请输入',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  height: 600,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white),
                  alignment: Alignment.center,
                  child: PhysicalModel(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                    clipBehavior: Clip.antiAlias, // 抗锯齿
                    child: PageView(
                      children: <Widget>[
                        _item('Page1', Colors.blue),
                        _item('Page2', Colors.red),
                        _item('Page3', Colors.green),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.greenAccent),
                        child: Text('文字撑满'),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Stack(
            children: <Widget>[
              _image(100, 100),
              Positioned(
                left: 10,
                bottom: 5,
                child: _image(40, 40),
              ),
            ],
          ),
          Wrap(
            spacing: 8, // 水平间距
            runSpacing: 6,  // 竖直间距
            children: <Widget>[
              _chip('哈哈哈哈哈哈哈'),
              _chip('啊啊啊啊啊啊'),
              _chip('2啊啊啊啊啊啊'),
              _chip('3啊啊啊啊啊啊'),
              _chip('4啊啊啊啊啊啊'),
              _chip('5啊啊啊啊啊啊'),
            ],
          ),

        ],
      ),
    );
  }

  _item(String str, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(
        str,
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }

  _image(double width, double height) {
    return Image.network(
      'http://www.devio.org/img/avatar.png',
      width: width,
      height: height,
    );
  }

  _chip(String s) {
    return Chip(
      label: Text(s),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue.shade900,
        child: Text(
          s.substring(0, 1),
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }

}
