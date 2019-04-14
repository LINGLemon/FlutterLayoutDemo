import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/layout2_page.dart';
import 'package:flutter_layout_demo/layout_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutPage(),
//      home: Layout2Page(),
    );
  }
}

