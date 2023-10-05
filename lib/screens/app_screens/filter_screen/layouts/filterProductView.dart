import 'package:ecommerceapp/widgets/colorsizeCommon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../common/config.dart';
import '../../../../../../common/theme/app_css.dart';
import '../../../../../../extensions/spacing.dart';
import '../../../../../../widgets/app_bar_common.dart';
import '../../../../../../widgets/common_Bottom.dart';
import '../../suggestion_product_screen/alsoLikePage.dart';

// ignore: must_be_immutable
class FilterProductView extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var filterView;

  FilterProductView(this.filterView, {Key? key}) : super(key: key);

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
                    filterView["image"],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const VSpace(Sizes.s50),
              Row(
                children: [
                  const HSpace(Sizes.s28),
                  Text("${filterView["title"]}",
                      style: AppCss.tenorSansRegular16),
                  const HSpace(Sizes.s280),
                  SvgPicture.asset(svgAssets.share),
                ],
              ),
              const VSpace(Sizes.s8),
              Text("${filterView["name"]}", style: AppCss.tenorSansRegular18)
                  .paddingSymmetric(horizontal: 28),
              const VSpace(Sizes.s8),
              Text("${filterView["price"]}", style: AppCss.tenorSansRegular18)
                  .paddingSymmetric(horizontal: 28),
              const VSpace(Sizes.s18),
             const ColorSizeCommon(),

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
