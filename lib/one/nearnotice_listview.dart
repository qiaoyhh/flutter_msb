import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_msb/base/application.dart';
import 'package:flutter_msb/bean/homedatabean.dart';
import 'package:flutter_msb/util/utils.dart';

/**
 * 最近公告
 */
class NearNoticeListView extends StatelessWidget {
  final HomeDataBean homeDataBean;

  const NearNoticeListView({Key key, @required this.homeDataBean})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Notices> mData = homeDataBean.notices;
    return new Container(
      margin: new EdgeInsets.only(top: 20, left: 8, right: 8),
      width: MediaQuery.of(context).size.width,
      child: new Column(
        children: <Widget>[
          new Container(
            height: 20,
            alignment: FractionalOffset.topLeft,
            child: new Row(
              children: <Widget>[
                Expanded(
                  child: new Row(
                    children: <Widget>[
                      Container(width: 3, height: 15.0, color: Colors.red),
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            '最近公告',
                            style: new TextStyle(
                                fontSize: 18, color: Color(0xFF333333)),
                          )),
                    ],
                  ),
                ),
                Container(
                  child: new InkWell(
                    child: new Row(
                      children: <Widget>[
                        Text("更多"),
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 3),
                          child: Image.asset(
                              Utils.getImgPathByWebp('ic_right_arrow')),
                        )
                      ],
                    ),
                    onTap: () {
                      String route =
                          '/web?url=${Uri.encodeComponent(homeDataBean.noticemore)}&title=${Uri.encodeComponent("更多公告")}';
                      Application.router.navigateTo(context, route,
                          transition: TransitionType.fadeIn);
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            child: getListView(mData),
          )
        ],
      ),
    );
  }

  // 创建ListView
  Widget getListView(List<Notices> data) {
    //sizeBox可以解决横向滑动列表展示问题
    return SizedBox(
      child: ListView.builder(
        // 解决ScrollView嵌套ListView时，ListView不显示问题
        shrinkWrap: true,
        // 解决滑动冲突
        physics: NeverScrollableScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int position) {
          return getItemView(data[position], context);
        },
      ),
    );
  }

  Widget getItemView(Notices data, BuildContext context) {
    return new InkWell(
      child: new Container(
        height: 80,
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: Text(data.title),
            ),
            new Container(
              child: new Container(
                width: 75,
                height: 55,
                margin: EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: new CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: data.headImg,
                    placeholder: (context, url) =>
                        new Image.asset(Utils.getImgPath('class_default')),
                    errorWidget: (context, url, error) =>
                        new Image.asset(Utils.getImgPath('class_default')),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        String route =
            '/web?url=${Uri.encodeComponent(data.url)}&title=${Uri.encodeComponent(data.title)}';
        Application.router
            .navigateTo(context, route, transition: TransitionType.fadeIn);
      },
    );
  }
}
