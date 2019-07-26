import 'package:flutter/material.dart';
import 'package:flutter_msb/bean/homedatabean.dart';
import 'package:flutter_msb/widget/item_video_view.dart';

/**
 * 了解美术包
 */
class AboutMsbListView extends StatelessWidget {
  final List<AboutMsb> mData;

  const AboutMsbListView({Key key, @required this.mData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(left: 8, right: 8),
      width: 300,
      height: 250,
      child: new Column(
        children: <Widget>[
          new Align(
            alignment: FractionalOffset.topLeft,
            child: new Row(
              children: <Widget>[
                Container(width: 3, height: 15.0, color: Colors.red),
                Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(
                      '了解美术宝1对1',
                      style:
                          new TextStyle(fontSize: 18, color: Color(0xFF333333)),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5),
              child: getListView(),
            ),
            flex: 2,
          ),
        ],
      ),
    );
    //  return getListView();
  }

  // 创建ListView
  Widget getListView() {
    //sizeBox可以解决横向滑动列表展示问题
    return SizedBox(
      child: ListView.builder(
        // 解决ScrollView嵌套ListView时，ListView不显示问题
        shrinkWrap: true,
        //横向滑动
        scrollDirection: Axis.horizontal,
        itemCount: mData.length,
        itemBuilder: (BuildContext context, int position) {
          return getAdapter(mData[position]);
        },
      ),
    );
  }

  Widget getAdapter(AboutMsb data) {
    return VideoItemView(
      mImgUrl: data.imgurl,
      mTitle: data.title,
      mSubTitle: data.subTitle,
      mUrl: data.url,
    );
  }
}
