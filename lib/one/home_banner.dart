import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_msb/base/application.dart';
import 'package:flutter_msb/bean/homedatabean.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/**
 * 轮播图
 *  flutter_swiper: ^1.1.6
 */
class HomeBanner extends StatelessWidget {
  final List<Indexbanner> bannerImages;

  /**
   * 构造，@required代表 必传
   */
  const HomeBanner({Key key, @required this.bannerImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: Swiper(
        itemCount: bannerImages.length,
        itemBuilder: (context, int index) => InkWell(
              child: new Container(
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10.0)),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('${bannerImages[index].icon}')),
                ),
              ),
              onTap: () {
                String route =
                    '/web?url=${Uri.encodeComponent('${bannerImages[index].url}')}'
                    '&title=${Uri.encodeComponent('${bannerImages[index].title}')}';
                Application.router.navigateTo(context, route,
                    transition: TransitionType.fadeIn);
              },
            ),
        pagination: null,
        autoplay: true,
        viewportFraction: 0.9,
        scale: 0.95,
        duration: 400,
      ),
    );
  }
}
