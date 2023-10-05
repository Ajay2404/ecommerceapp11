import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/controllers/app_pages_controllers/blog_page_controller.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/screens/app_screens/blog_screen/layouts/productViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../extensions/spacing.dart';

class ProductDetail extends StatelessWidget {
  final dynamic data;

  const ProductDetail({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogPageControllers>(builder: (blogPageCtrl) {
      return Column(
        children: [
          Row(
            children: [
              Image.asset(data["image"]).paddingAll(10),
              Column(
                children: [
                  Text(
                    data["title"],
                    style: AppCss.tenorSansRegular18,
                  ).paddingOnly(right: 80),
                  Text(
                    data["name"],
                    style: AppCss.tenorSansRegular16
                        .textColor(appCtrl.appTheme.blackText),
                  ),
                  HSpace(Sizes.s20),
                  Text(
                    data["date"],
                    style: AppCss.tenorSansRegular12
                        .textColor(appCtrl.appTheme.gray),
                  ).paddingOnly(right: 160),
                ],
              ),
            ],
          ),
        ],
      ).inkWell(
        onTap: () {
          // Get.to(ProductViewScreen(data)),
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ProductViewScreen(data);
            },
          ));
        },
      );
    });
  }
}
