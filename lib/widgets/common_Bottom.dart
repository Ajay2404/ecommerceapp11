import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/widgets/layouts/commonRowWithSvg.dart';
import 'package:ecommerceapp/widgets/layouts/commonTextContact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../common/config.dart';
import '../common/theme/app_css.dart';
import '../extensions/spacing.dart';
import '../screens/app_screens/blog_screen/blogPage.dart';
import '../screens/app_screens/contactus_screen/contactUs.dart';
import 'divider_common.dart';

class CommonBottom extends StatelessWidget {
  const CommonBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const HSpace(Sizes.s20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonRowWithSvgImages(
                svgPaths: [
                  svgAssets.twitter,
                  svgAssets.instagram,
                  svgAssets.youtube
                ],
                topPadding: 70,
                horizontalPadding: 15,
              ),
            ],
          ),
          const DividerCommon(),
          Center(
            child: Column(
              children: [
                CommonTextContact(
                  texts: [
                    fonts.supportOpenUi,
                    fonts.sixZero,
                    fonts.zeroEight,
                  ],
                  textStyle: AppCss.tenorSansMedium20,
                ),
              ],
            ),
          ),
          const VSpace(Sizes.s30),
          SvgPicture.asset(
            svgAssets.inn3,
            height: 13,
          ),
          const VSpace(Sizes.s30),
          Row(
            children: [
              const HSpace(Sizes.s60),
              Text(
                "About",
                style: AppCss.tenorSansMedium20,
              ).inkWell(onTap: () => Get.toNamed(routeName.aboutUs)),
              const HSpace(Sizes.s50),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ContactUs();
                    },
                  ));
                },
                child: Text(
                  "Contact",
                  style: AppCss.tenorSansMedium20,
                ),
              ),
              const HSpace(Sizes.s50),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return BlogPage();
                    },
                  ));
                },
                child: Text(
                  "Blog",
                  style: AppCss.tenorSansMedium20,
                ),
              ),
            ],
          ),
          const VSpace(Sizes.s30),
          Container(
            alignment: Alignment.center,
            height: 70,
            color: const Color(0xfff2f2f2),
            child: Text(
              fonts.copyright,
              style: AppCss.tenorSansMedium14,
            ),
          ),
        ],
      ),
    );
  }
}
