import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_msb/route/route.dart';

import 'base/application.dart';
import 'home.dart';

// 程序主入口
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    // 初始化路由
    final router = new Router();
    Routers.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      //隐藏Bar右上角Debug
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
      //路由
      onGenerateRoute: Application.router.generator,
    );
  }
}
