import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/screens/app_screens/search_screen/layouts/searchProductView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../common/theme/app_css.dart';
import '../../../../config.dart';

// ignore: must_be_immutable
class SearchList extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var searchData;

  SearchList({Key? key, this.searchData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              searchData["image"],
              height: 150,
            ).paddingAll(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  searchData["title"],
                  style: AppCss.tenorSansRegular18,
                ),
                const VSpace(Sizes.s4),
                Text(
                  searchData["name"],
                  style: AppCss.tenorSansRegular18
                      .textColor(appCtrl.appTheme.blackText),
                ),
                const VSpace(Sizes.s4),
                Text(
                  searchData["price"],
                  style: AppCss.tenorSansRegular18
                      .textColor(appCtrl.appTheme.gray),
                ),
                const VSpace(Sizes.s11),
                Row(
                  children: [
                    SvgPicture.asset(svgAssets.star, height: 15),
                    Text(fonts.ratings, style: AppCss.tenorSansRegular14),
                  ],
                ),
                const VSpace(Sizes.s11),
                Row(
                  children: [
                    Text(
                      fonts.size,
                      style: AppCss.tenorSansRegular14,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffdedede)),
                          borderRadius: BorderRadius.circular(33)),
                      child: Text(fonts.s),
                    ),
                    const HSpace(Sizes.s6),
                    Container(
                      alignment: Alignment.center,
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffdedede)),
                          borderRadius: BorderRadius.circular(33)),
                      child: Text(fonts.m),
                    ),
                    const HSpace(Sizes.s6),
                    Container(
                      alignment: Alignment.center,
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffdedede)),
                          borderRadius: BorderRadius.circular(33)),
                      child: Text(fonts.l),
                    ),
                    const HSpace(Sizes.s85),
                    SvgPicture.asset(
                      svgAssets.heart,
                    ),
                  ],
                ),
              ],
            ),
          ],
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
