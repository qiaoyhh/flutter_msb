import 'package:flutter/material.dart';
import 'package:flutter_msb/bean/homedatabean.dart';

class ShareView extends StatelessWidget {
  final AdTwo shareData;

  const ShareView({Key key, @required this.shareData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.only(left: 10, right: 10),
        child: new Image.network(
          '${shareData.icon}',
          fit: BoxFit.fill,
        ));
  }
}
