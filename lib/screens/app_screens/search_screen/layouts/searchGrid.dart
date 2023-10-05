import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/screens/app_screens/search_screen/layouts/searchProductView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/export.dart';

import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/spacing.dart';

// ignore: must_be_immutable
class SearchGrid extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var searchData;

  SearchGrid({Key? key, this.searchData}) : super(key: key);
  List<bool> isLikedList =
      List.generate(appArray.searchImg.length, (_) => false);
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Stack(children: [
                Image.asset(searchData['image']),
                Positioned(
                  bottom: 7,
                  right: 9,
                  child: GestureDetector(
                    child: SvgPicture.asset(
                      svgAssets.heart,
                    ),
                  ),
                ),
              ]),
              const VSpace(Sizes.s8),
              Text(
                      style: AppCss.tenorSansRegular12,
                      textAlign: TextAlign.left,
                      "${searchData['title']}")
                  .paddingOnly(right: 110),
              const VSpace(Sizes.s4),
              Text(
                  textAlign: TextAlign.left,
                  style: AppCss.tenorSansRegular12,
                  "${searchData['name']}"),
              const VSpace(Sizes.s4),
              Text(
                textAlign: TextAlign.left,
                "${searchData['price']}",
                style: AppCss.tenorSansRegular16.textColor(const Color(0xffdd8560)),
              ).paddingOnly(right: 120),
            ],
          ),
        ).inkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SearchProductView(searchData);
              },
            ));
          },
        ),
      ],
    );
  }
}
