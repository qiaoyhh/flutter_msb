import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_msb/one/tabonepage.dart';
import 'package:flutter_msb/tabthreepage.dart';
import 'package:flutter_msb/tabtwopage.dart';

// main 创建 底部导航
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var mCurrentIndex = 0;
  var mBody;

  initPage() {
    mBody = new IndexedStack(
      children: <Widget>[
        new TabOnePage(),
        new TabTwoPage(),
        new TabThreePage(),
      ],
      // 作用：选中哪个Page
      index: mCurrentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    initPage();
    return new WillPopScope(
      child: new Scaffold(
        appBar: new AppBar(
//          backgroundColor: Colors.white,
          title: new Text('美术宝一对一'),
          centerTitle: true,
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.home), title: new Text('首页')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.description), title: new Text('课表')),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.event_available),
                title: new Text('已上课程'))
          ],
          // 控制BottomNavigationBar选中的位置
          currentIndex: mCurrentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              //会重新调用build方法，切换body内容
              mCurrentIndex = index;
            });
          },
        ),
        body: mBody,
      ),
      onWillPop: _showDialog,
    );
  }

  // 退出
  Future<bool> _showDialog() {
    showDialog(
        context: context,
        child: new AlertDialog(
          content: new Text('退出APP'),
          actions: <Widget>[
            new FlatButton(
              onPressed: () {
                Navigator.pop(context);
                SystemNavigator.pop();
              },
              child: new Text('确定'),
            )
          ],
        ));
    return new Future.value(false);
  }
}
