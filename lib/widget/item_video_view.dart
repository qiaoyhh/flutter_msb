import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_msb/base/application.dart';
import 'package:flutter_msb/util/utils.dart';

class VideoItemView extends StatelessWidget {
  var mImgUrl;
  var mTitle;
  var mSubTitle;
  var mUrl;

  VideoItemView(
      {Key key,
      @required this.mImgUrl,
      @required this.mTitle,
      @required this.mSubTitle,
      @required this.mUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      child: new Container(
        margin: EdgeInsets.only(left: 10, top: 5),
        padding: EdgeInsets.only(bottom: 10),
        width: 250,
        height: 190,
        child: new Column(
          children: <Widget>[
            // 相对布局
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Align(
                  alignment: FractionalOffset.topLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: new Radius.circular(6.0),
                        topLeft: new Radius.circular(6.0)),
                    child: new Image.network(
                      mImgUrl,
                      fit: BoxFit.fill,
                      width: 250,
                      height: 150,
                    ),
                  ),
                ),
                new Image.asset(Utils.getImgPath('ic_play')),
              ],
            ),
            new Align(
                alignment: FractionalOffset.topLeft,
                child: new Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(mTitle),
                )),
            new Align(
              alignment: FractionalOffset.topLeft,
              child: new Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  mSubTitle,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        decoration: new BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(5.0, 5.0),
                  blurRadius: 10.0,
                  // 隐形下面高度
                  spreadRadius: 1.0),
            ],
            color: Colors.white),
      ),
      onTap: () {
        String route = '/video?url=${Uri.encodeComponent(mUrl)}';
        Application.router
            .navigateTo(context, route, transition: TransitionType.fadeIn);
      },
    );
  }
}
