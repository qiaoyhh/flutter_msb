import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_msb/base/application.dart';

/**
 * 课程分类
 */
class ClassTypeView extends StatelessWidget {
  var mImgUrl;
  var mTitle;
  var mUrl;

  ClassTypeView(
      {Key key,
      @required this.mImgUrl,
      @required this.mTitle,
      @required this.mUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        String route =
            '/web?url=${Uri.encodeComponent(mUrl)}&title=${Uri.encodeComponent(mTitle)}';
        Application.router
            .navigateTo(context, route, transition: TransitionType.fadeIn);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(mImgUrl, width: MediaQuery.of(context).size.width / 8),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(mTitle, style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
