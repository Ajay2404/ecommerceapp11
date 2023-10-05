import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/config.dart';
import '../../../../common/theme/app_css.dart';
import '../../../../config.dart';
import '../../../../extensions/spacing.dart';
import 'menuProductView.dart';

class MenuList extends StatelessWidget {
  var menudata;

  MenuList({Key? key, this.menudata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              menudata["image"],
              height: 150,
            ).paddingAll(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menudata["title"],
                  style: AppCss.tenorSansRegular18,
                ),
                VSpace(Sizes.s4),
                Text(
                  menudata["name"],
                  style: AppCss.tenorSansRegular18
                      .textColor(appCtrl.appTheme.blackText),
                ),
                VSpace(Sizes.s4),
                Text(
                  menudata["price"],
                  style: AppCss.tenorSansRegular18
                      .textColor(appCtrl.appTheme.gray),
                ),
                VSpace(Sizes.s11),
                Row(
                  children: [
                    SvgPicture.asset(svgAssets.star, height: 15),
                    Text(fonts.ratings, style: AppCss.tenorSansRegular14),
                  ],
                ),
                VSpace(Sizes.s11),
                Row(
                  children: [
                    Text(
                      fonts.size,
                      style: AppCss.tenorSansRegular14,
                    ),
                    Text(fonts.s)
                        .decorated(
                            border: Border.all(color: Color(0xffdedede)),
                            borderRadius: BorderRadius.circular(33))
                        .height(Insets.i28)
                        .width(Insets.i28)
                        .alignment(Alignment.center),
                    HSpace(Sizes.s6),
                    Text(fonts.m)
                        .decorated(
                            border: Border.all(color: Color(0xffdedede)),
                            borderRadius: BorderRadius.circular(33))
                        .height(Insets.i28)
                        .width(Insets.i28)
                        .alignment(Alignment.center),
                    HSpace(Sizes.s6),
                    Text(fonts.l)
                        .decorated(
                            border: Border.all(color: Color(0xffdedede)),
                            borderRadius: BorderRadius.circular(33))
                        .height(Insets.i28)
                        .width(Insets.i28)
                        .alignment(Alignment.center),
                    HSpace(Sizes.s85),
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
                return MenuProductView(menudata);
              },
            ));
          },
        ),
      ],
    );
  }
}
