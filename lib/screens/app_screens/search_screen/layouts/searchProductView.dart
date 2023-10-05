import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:ecommerceapp/widgets/common_Bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../suggestion_product_screen/alsoLikePage.dart';

// ignore: must_be_immutable
class SearchProductView extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var searchData;

  SearchProductView(this.searchData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarCommon(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 560,
                  width: 390,
                  child: Image.asset(
                    searchData["image"],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const VSpace(Sizes.s50),
              Row(
                children: [
                  const HSpace(Sizes.s28),
                  Text("${searchData["title"]}",
                      style: AppCss.tenorSansRegular16),
                  const HSpace(Sizes.s280),
                  SvgPicture.asset(svgAssets.share),
                ],
              ),
              const VSpace(Sizes.s8),
              Text("${searchData["name"]}", style: AppCss.tenorSansRegular18)
                  .paddingSymmetric(horizontal: 28),
              const VSpace(Sizes.s8),
              Text("${searchData["price"]}", style: AppCss.tenorSansRegular18)
                  .paddingSymmetric(horizontal: 28),
              const VSpace(Sizes.s18),
              Row(
                children: [
                  const HSpace(Sizes.s28),
                  Text(
                    fonts.color,
                    style: AppCss.tenorSansRegular18,
                  ),
                  const HSpace(Sizes.s8),
                  SvgPicture.asset(svgAssets.color),
                  const HSpace(Sizes.s12),
                  SvgPicture.asset(svgAssets.color1),
                  const HSpace(Sizes.s12),
                  SvgPicture.asset(svgAssets.color2),
                  const HSpace(Sizes.s35),
                  Text(
                    fonts.size,
                    style: AppCss.tenorSansRegular18,
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
                ],
              ),
              const VSpace(Sizes.s35),
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(svgAssets.plus, color: Colors.white),
                    const HSpace(Sizes.s10),
                    Text(fonts.addToBasket,
                        style:
                            AppCss.tenorSansRegular16.textColor(Colors.white)),
                    const HSpace(Sizes.s170),
                    SvgPicture.asset(svgAssets.whiteHeart),
                  ],
                ),
              ),
              Text(fonts.materials),
              Text(
                  fonts.wework),
              Text(fonts.care),
              Text(
                  fonts.toKeep),
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(svgAssets.res1),
                      Text(fonts.dnub),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(svgAssets.res2),
                      Text(fonts.dntd),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(svgAssets.res3),
                      Text(fonts.dcwt),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(svgAssets.res4),
                      Text(fonts.iaamo),
                    ],
                  ),
                ],
              ),
              Text(fonts.care),
              Row(
                children: [
                  SvgPicture.asset(svgAssets.shipping),
                  Text(fonts.fFrs),
                  SvgPicture.asset(svgAssets.upForward),
                ],
              ),
              Text(fonts.estimated),
              SvgPicture.asset(svgAssets.line),
              Row(
                children: [
                  SvgPicture.asset(svgAssets.tag),
                  Text(fonts.cod),
                  SvgPicture.asset(svgAssets.down),
                ],
              ),
              SvgPicture.asset(svgAssets.line),
              Row(
                children: [
                  SvgPicture.asset(svgAssets.refresh),
                  Text(fonts.retPol),
                  SvgPicture.asset(svgAssets.down),
                ],
              ),
              Text(fonts.yMal),
              SvgPicture.asset(svgAssets.inn3),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: appArray.alsoLike.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 16 / 9,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 1,
                    crossAxisCount: 2,
                    mainAxisExtent: 300),
                itemBuilder: (context, index) {
                  return AlsoLikePage(
                    alsoLikeData: appArray.alsoLike[index],
                  );
                },
              ),
              const CommonBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
