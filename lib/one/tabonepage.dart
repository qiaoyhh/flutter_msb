import 'package:flutter/material.dart';
import 'package:flutter_msb/bean/homedatabean.dart';
import 'package:flutter_msb/one/aboutmsg_listview.dart';
import 'package:flutter_msb/one/home_banner.dart';
import 'package:flutter_msb/one/shareview.dart';
import 'package:flutter_msb/one/teachershow_listview.dart';
import 'package:flutter_msb/util/dio_util.dart';

import 'classtype_grideview.dart';
import 'nearnotice_listview.dart';

class TabOnePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TabOnePage();
}

 class _TabOnePage extends State<TabOnePage> {
  HomeDataBean mData;
  var content;

  // 是否需要抓包
  bool mIsProxy = false;

  @override
  void initState() {
    super.initState();

    getHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color(0xff7f7f7),
      child: getView(),
    );
  }

  /**
   * Widget可以省略，但是官方推荐 写上
   */
  Widget getView() {
    if (mData != null) {
      return getHomePageMainView();
    } else {
      return getProgressDialog();
    }
  }

  //创建一个进度条
  Widget getProgressDialog() {
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }

  /**
   * 主页面
   */
  Widget getHomePageMainView() {
    // 滚动列表，还可以使用NestedScrollView、ListView等实现
    return CustomScrollView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.only(top: 2),
          sliver: new SliverList(
            delegate: new SliverChildListDelegate(
              <Widget>[
                // 轮播图
                HomeBanner(bannerImages: mData.indexbanner),
                // 课程分类
                ClassTypeGridView(classData: mData.indexicon),
                // 分享图片
                getShareView(),
                // 了解美术宝
                AboutMsbListView(mData: mData.aboutMsb),
                // 讲师风采
                TeacherShowListView(mData: mData.teacherProfile),
                // 最近公告
                NearNoticeListView(homeDataBean: mData),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getShareView() {
    if (mData.adTwo != null) {
      return ShareView(shareData: mData.adTwo);
    } else {
      // 占位
      return Text("");
    }
  }

  /**
   * 联网获取数据
   * async/await 相当于异步
   */
  Future<bool> getHomeData() async {
    //=================== 网络库原始写法===================
//    var dio = new Dio(
//      new BaseOptions(
//        connectTimeout: 8000,
//        receiveTimeout: 100000,
//        headers: {},
//      ),
//    );
//
//    Response response = await dio.post(
//      "https://onlineapi.meishubao.com/api/indexinfo2",
//      options: new Options(
//          contentType: ContentType.parse("application/x-www-form-urlencoded")),
//    );
//    HomeDataBean homeDataBean = HomeDataBean.fromJson(response.data);
//    if (homeDataBean != null && homeDataBean.status == 0) {
//      mData = homeDataBean;
//      // 会重新执行initState()方法
//      setState(() {});
//    }

    //=================== 网络库封装写法===================
    DioUtil().post('https://onlineapi.meishubao.com/api/indexinfo2',
        errorCallback: (statusCode) {
      print('Http error code : $statusCode');
    }).then((data) {
      HomeDataBean homeDataBean = HomeDataBean.fromJson(data);
      if (homeDataBean != null && homeDataBean.status == 0) {
        mData = homeDataBean;
        // 会重新执行initState()方法
        setState(() {});
      }
    });
  }
}
