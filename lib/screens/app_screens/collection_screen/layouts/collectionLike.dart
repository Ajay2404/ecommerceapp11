import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../common/config.dart';
import '../../../../../../common/theme/app_css.dart';
import '../../../../../../extensions/spacing.dart';

class CollectionLike extends StatelessWidget {
  var collectionlike;

  CollectionLike({Key? key, this.collectionlike}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Stack(children: [
                Image.asset(collectionlike['image']),
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
                      style: AppCss.tenorSansRegular12.textColor(Colors.white),
                      textAlign: TextAlign.left,
                      "${collectionlike['title']}")
                  .paddingOnly(right: 110),
              VSpace(Sizes.s4),
              Text(
                  textAlign: TextAlign.left,
                  style: AppCss.tenorSansRegular12.textColor(Color(0xfff9f9f9)),
                  "${collectionlike['name']}"),
              VSpace(Sizes.s4),
              Text(
                textAlign: TextAlign.left,
                "${collectionlike['price']}",
                style: AppCss.tenorSansRegular16.textColor(Color(0xffdd8560)),
              ).paddingOnly(right: 120),
            ],
          ),
        ).inkWell(
          onTap: () {
            Get.toNamed(routeName.collectionLikePage,arguments: collectionlike);

          },
        ),
      ],
    );
  }
}
