import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/config.dart';
import '../../../../common/theme/app_css.dart';
import '../../../../extensions/spacing.dart';
import '../../../../widgets/app_bar_common.dart';
import '../../../../widgets/colorsizeCommon.dart';
import '../../../../widgets/common_Bottom.dart';
import '../../suggestion_product_screen/alsoLikePage.dart';

// ignore: must_be_immutable
class MenuProductView extends StatelessWidget {
  var menudata;

  MenuProductView(this.menudata, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarCommon(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  child: Image.asset(
                    menudata["image"],
                    fit: BoxFit.contain,
                  ),
                  height: 560,
                  width: 390,
                ),
              ),
              VSpace(Sizes.s50),
              Row(
                children: [
                  HSpace(Sizes.s28),
                  Text("${menudata["title"]}",
                      style: AppCss.tenorSansRegular16),
                  HSpace(Sizes.s280),
                  SvgPicture.asset(svgAssets.share),
                ],
              ),
              VSpace(Sizes.s8),
              Text("${menudata["name"]}", style: AppCss.tenorSansRegular18)
                  .paddingSymmetric(horizontal: 28),
              VSpace(Sizes.s8),
              Text("${menudata["price"]}", style: AppCss.tenorSansRegular18)
                  .paddingSymmetric(horizontal: 28),
              VSpace(Sizes.s18),
              ColorSizeCommon(),
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
              CommonBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
