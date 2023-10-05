import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'filterProductView.dart';

// ignore: must_be_immutable
class FilterPageView extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var filterView;

  FilterPageView({Key? key, this.filterView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Stack(children: [
                Image.asset(filterView['image']),
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
                      "${filterView['title']}")
                  .paddingOnly(right: 110),
              const VSpace(Sizes.s4),
              Row(
                children: [
                  const HSpace(Sizes.s35),
                  Text(
                      textAlign: TextAlign.left,
                      style: AppCss.tenorSansRegular16,
                      "${filterView['name']}"),
                  const HSpace(Sizes.s40),
                  Text(
                    textAlign: TextAlign.left,
                    "${filterView['price']}",
                    style: AppCss.tenorSansRegular16
                        .textColor(const Color(0xffdd8560)),
                  ),
                ],
              ),
            ],
          ),
        ).inkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return FilterProductView(filterView);
              },
            ));
          },
        )
      ],
    );
  }
}
