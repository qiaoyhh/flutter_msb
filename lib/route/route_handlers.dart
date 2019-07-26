import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_msb/comm/videopage.dart';
import 'package:flutter_msb/comm/webviewpage.dart';

var webViewHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  //获取路由跳转传来的参数
  String url = params["url"].first;
  String title = params["title"].first;
  return new WebViewPage(url, title);
});

var videoHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  //获取路由跳转传来的参数
  String url = params["url"].first;
  return new VideoPlayPage(url: url);
});
