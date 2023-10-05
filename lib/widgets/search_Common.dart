import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchCommon extends StatelessWidget {
  const SearchCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VSpace(Sizes.s60),
          SizedBox(
                  width: 340,
                  child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: SvgPicture.asset(
                            svgAssets.close,
                          ).paddingAll(10),
                          hintText: fonts.searchItems,
                          hintStyle: AppCss.tenorSansRegular16,
                          prefixIcon: SvgPicture.asset(
                            svgAssets.icon1,
                          ).paddingAll(10))))
              .marginOnly(left: 20),
          const VSpace(Sizes.s30),
          Text(fonts.recently,
                  style: AppCss.tenorSansRegular16.textColor(Colors.grey))
              .paddingOnly(left: 20),
          const VSpace(Sizes.s10),
          Row(
            children: [
              const HSpace(Sizes.s20),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 78,
                decoration: BoxDecoration(
                    color: const Color(0x1ac4c4c4),
                    border: Border.all(color: const Color(0x1ac4c4c4)),
                    borderRadius: BorderRadius.circular(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(fonts.dress,
                        style: AppCss.tenorSansRegular14
                            .textColor(const Color(0xff555555))),
                    SvgPicture.asset(
                      height: 18,
                      color: const Color(0xff14142b),
                      svgAssets.close,
                    )
                  ],
                ),
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.searchView);
                },
              ),
              const HSpace(Sizes.s10),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 108,
                decoration: BoxDecoration(
                    color: const Color(0x1ac4c4c4),
                    border: Border.all(color: const Color(0x1ac4c4c4)),
                    borderRadius: BorderRadius.circular(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(fonts.collections,
                        style: AppCss.tenorSansRegular14
                            .textColor(const Color(0xff555555))),
                    SvgPicture.asset(
                      height: Sizes.s18,
                      svgAssets.close,
                      color: const Color(0xff14142b),
                    )
                  ],
                ),
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.searchView);
                },
              ),
              const HSpace(Sizes.s10),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 73,
                decoration: BoxDecoration(
                    color: const Color(0x1ac4c4c4),
                    border: Border.all(color: const Color(0x1ac4c4c4)),
                    borderRadius: BorderRadius.circular(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(fonts.nike,
                        style: AppCss.tenorSansRegular14
                            .textColor(const Color(0xff555555))),
                    SvgPicture.asset(
                      height: 18,
                      svgAssets.close,
                      color: const Color(0xff14142b),
                    )
                  ],
                ),
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.searchView);
                },
              ),
            ],
          ),
          const VSpace(Sizes.s20),
          Text(fonts.peoplesearch,
                  style: AppCss.tenorSansRegular14.textColor(Colors.grey))
              .paddingOnly(left: 20),
          Text(fonts.trend, style: AppCss.tenorSansRegular16)
              .paddingOnly(left: 20)
              .marginOnly(top: Insets.i16, bottom: Insets.i8),
          Text(fonts.dress, style: AppCss.tenorSansRegular16)
              .paddingOnly(left: 20)
              .marginSymmetric(vertical: Insets.i8),
          Text(fonts.bag, style: AppCss.tenorSansRegular16)
              .paddingOnly(left: 20)
              .marginSymmetric(vertical: Insets.i8),
          Text(fonts.tShirt, style: AppCss.tenorSansRegular16)
              .paddingOnly(left: 20)
              .marginSymmetric(vertical: Insets.i8),
          Text(fonts.beauty, style: AppCss.tenorSansRegular16)
              .paddingOnly(left: 20)
              .marginSymmetric(vertical: Insets.i8),
          Text(fonts.accessories1, style: AppCss.tenorSansRegular16)
              .paddingOnly(left: 20)
              .marginSymmetric(vertical: Insets.i8),
        ],
      ),
    );
  }
}
