import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

/**
 * 加载WebView页面
 */
class WebViewPage extends StatelessWidget {
  var mUrl;
  var mTitle;

  WebViewPage(String url, String title) {
    this.mUrl = url;
    this.mTitle = title;
  }

  @override
  Widget build(BuildContext context) {
    // webview
    return new WebviewScaffold(
      url: mUrl,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text(
          mTitle,
          style: new TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
