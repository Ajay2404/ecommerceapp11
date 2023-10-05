import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/config.dart';
import '../../../../common/theme/app_css.dart';
import '../../../../extensions/spacing.dart';
import 'menuProductView.dart';

class MenuGrid extends StatelessWidget {
  var menudata;

  MenuGrid({Key? key, this.menudata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Stack(children: [
                Image.asset(menudata['image']),
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
              VSpace(Sizes.s8),
              Text(
                      style: AppCss.tenorSansRegular12,
                      textAlign: TextAlign.left,
                      "${menudata['title']}")
                  .paddingOnly(right: 110),
              VSpace(Sizes.s4),
              Text(
                  textAlign: TextAlign.left,
                  style: AppCss.tenorSansRegular12,
                  "${menudata['name']}"),
              VSpace(Sizes.s4),
              Text(
                textAlign: TextAlign.left,
                "${menudata['price']}",
                style: AppCss.tenorSansRegular16.textColor(Color(0xffdd8560)),
              ).paddingOnly(right: 120),
            ],
          ),
        ).inkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MenuProductView(menudata);
              },
            ));
          },
        ),
      ],
    );
  }
}
