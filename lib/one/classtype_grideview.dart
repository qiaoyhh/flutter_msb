import 'package:flutter/material.dart';
import 'package:flutter_msb/bean/homedatabean.dart';
import 'package:flutter_msb/widget/item_classtype_view.dart';

/**
 * 课程分类
 */
class ClassTypeGridView extends StatelessWidget {
  final List<Indexicon> classData;

  const ClassTypeGridView({Key key, @required this.classData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: MediaQuery.of(context).size.width * 2 / 4,
      child: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        childAspectRatio: 1.0,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children:
            classData.map((item) => _buildCategoryItem(context, item)).toList(),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, Indexicon item) {
    // 自定义Widget：上图下字格式（省略）
    return ClassTypeView(
        mImgUrl: item.icon, mTitle: item.title, mUrl: item.url);
  }
}
