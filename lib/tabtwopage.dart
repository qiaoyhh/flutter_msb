import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabTwoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _TabTwoPageState();
  }
}

class _TabTwoPageState extends State<TabTwoPage> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text("课表"),
    );
  }
}
