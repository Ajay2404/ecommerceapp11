import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/common/app_array.dart';
import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/screens/app_screens/home_screen/layouts/commonRow.dart';
import 'package:ecommerceapp/screens/app_screens/home_screen/layouts/commonRowWithColumn.dart';
import 'package:ecommerceapp/widgets/common_Bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomLayout extends StatelessWidget {
  const BottomLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(fonts.exploreMore,
                          style:
                              AppCss.tenorSansMedium16.textColor(Colors.black))
                      .paddingOnly(right: 10),
                  SvgPicture.asset(svgAssets.icon4),
                ],
              ),
            ).paddingOnly(left: 140, bottom: 30, top: 30),
          ],
        ),
        SvgPicture.asset(svgAssets.brand).paddingOnly(bottom: 30),
        Text(fonts.collections,
            style: AppCss.tenorSansblack24.textColor(appCtrl.appTheme.error)),
        const HSpace(Sizes.s30),
        Image.asset(fit: BoxFit.cover, width: Sizes.s900, imageAssets.imag1)
            .inkWell(onTap: () {
          Get.toNamed(routeName.collectionPage);
        }),
        Image.asset(imageAssets.imag2).paddingOnly(top: 50),
        Image.asset(
          fit: BoxFit.fitWidth,
          width: Sizes.s900,
          height: Sizes.s300,
          imageAssets.video,
        ),
        Text(fonts.justForYou, style: AppCss.tenorSansMedium16),
        SvgPicture.asset(svgAssets.inn3),
        CarouselSlider(
          items: List.generate(
            AppArray().allTabList.length,
            (index) => Column(
              children: [
                Image.asset(
                  AppArray().allTabList[index]['image'],
                  fit: BoxFit.fill,
                  height: Sizes.s350,
                  width: Sizes.s280,
                ).paddingAll(Insets.i10),
                Text(
                  AppArray().allTabList[index]['name'],
                  style: AppCss.tenorSans,
                ),
                Text(
                  AppArray().allTabList[index]['price'],
                ),
              ],
            ),
          ),
          options: CarouselOptions(
            height: Sizes.s480,
            viewportFraction: 0.7,
            autoPlay: true,
            enableInfiniteScroll: true,
          ),
        ),
        SvgPicture.asset(svgAssets.trending),
        Stack(children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 30),
            alignment: Alignment.topCenter,
            height: Sizes.s500,
            color: const Color(0xfff2f2f2),
            child: SvgPicture.asset(
              height: Sizes.s40,
              svgAssets.logo,
            ),
          ).paddingOnly(top: 30),
          Center(
            child: Text(fonts.text1,
                    style: AppCss.tenorSans, textAlign: TextAlign.center)
                .paddingOnly(top: 130, right: 67, left: 74),
          ),
          SvgPicture.asset(
            svgAssets.inn3,
          ).paddingOnly(top: 190, left: 144),
          CommonRowWithColumn(
            svgPaths: [svgAssets.hap, svgAssets.hap],
            texts: [fonts.fastShipping, fonts.sustainable],
            textStyle: AppCss.tenorSansMedium12,
          ),
          CommonRowWithColumn(
            svgPaths: [svgAssets.hap, svgAssets.hap],
            texts: [fonts.unique, fonts.fastShipping],
            textStyle: AppCss.tenorSansMedium12,
          ),
          Center(
            child: SvgPicture.asset(
              svgAssets.dsg,
            ).paddingOnly(
              top: 450,
            ),
          ),
        ]),
        Text(
          fonts.followUs,
          style: AppCss.tenorSans.size(Insets.i30),
        ).paddingOnly(top: 40),
        SvgPicture.asset(
          svgAssets.instagram,
          height: 40,
        ).paddingOnly(top: 10),
        const HSpace(Sizes.s20),
        CommonRow(
          imagePaths: [imageAssets.pg1, imageAssets.pg2],
          texts: [fonts.mia, fonts.jiHyn],
          textStyle: AppCss.tenorSansMedium20,
        ),
        const HSpace(Sizes.s15),
        CommonRow(
          imagePaths: [imageAssets.pg3, imageAssets.pg4],
          texts: [fonts.mia, fonts.jiHyn],
          textStyle: AppCss.tenorSansMedium20,
        ),
        const HSpace(Sizes.s70),
        const CommonBottom(),
      ],
    );
  }
}
