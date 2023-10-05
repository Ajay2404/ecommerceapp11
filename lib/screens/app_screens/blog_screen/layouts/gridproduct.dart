import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/controllers/app_pages_controllers/blog_page_controller.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/screens/app_screens/blog_screen/layouts/productViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class GridProductDetail extends StatelessWidget {
  final dynamic data;
  const GridProductDetail({Key? key,this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogPageControllers>(
        builder: (blogCtrl) {
          return Column(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(data["image"]), fit: BoxFit.fill)),
              height: Sizes.s220,
              width: Sizes.s390,
              child: Column(
                children: [
                  Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: SvgPicture.asset(svgAssets.bookmark)
                        .paddingOnly(left: 180, bottom: 90, top: 10, right: 10),
                  ),
                  Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        data["title"],
                        style: AppCss.tenorSansRegular20
                            .textColor(appCtrl.appTheme.white),
                      ).paddingOnly(top: 40)),
                ],
              ),
            ),
            Text(
              data["date"],
              style: AppCss.tenorSansRegular12
                  .textColor(appCtrl.appTheme.greyLight200),
            ).paddingOnly(left: 320),
          ]).inkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ProductViewScreen(data);
                },
              ));
            },
          );
        }
    );
  }
}

