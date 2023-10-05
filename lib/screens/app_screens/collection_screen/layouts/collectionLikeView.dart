import 'package:ecommerceapp/controllers/app_pages_controllers/collection_like_controller.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/config.dart';
import '../../../../common/theme/app_css.dart';
import '../../../../extensions/spacing.dart';
import '../../../../widgets/app_bar_common.dart';
import '../../../../widgets/common_Bottom.dart';
import '../../suggestion_product_screen/alsoLikePage.dart';

class CollectionLikePage extends StatelessWidget {
  final collectionCtrl = Get.put(CollectionLikeController());

  CollectionLikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CollectionLikeController>(builder: (_) {
      return Scaffold(
        appBar: const AppBarCommon(),
        body: SingleChildScrollView(
            child: (collectionCtrl.image != null ||
                    collectionCtrl.price != null ||
                    collectionCtrl.name != null ||
                    collectionCtrl.title != null)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 560,
                          width: 390,
                          child: Image.asset(
                            collectionCtrl.image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const VSpace(Sizes.s50),
                      Row(
                        children: [
                          const HSpace(Sizes.s28),
                          Text("${collectionCtrl.title}",
                              style: AppCss.tenorSansRegular16),
                          const HSpace(Sizes.s200),
                          SvgPicture.asset(svgAssets.share),
                        ],
                      ),
                      const VSpace(Sizes.s8),
                      Text("${collectionCtrl.name}",
                              style: AppCss.tenorSansRegular18)
                          .paddingSymmetric(horizontal: 28),
                      const VSpace(Sizes.s8),
                      Text("${collectionCtrl.price}",
                              style: AppCss.tenorSansRegular18)
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
                                border:
                                    Border.all(color: const Color(0xffdedede)),
                                borderRadius: BorderRadius.circular(33)),
                            child: Text(fonts.s),
                          ),
                          const HSpace(Sizes.s6),
                          Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffdedede)),
                                borderRadius: BorderRadius.circular(33)),
                            child: Text(fonts.m),
                          ),
                          const HSpace(Sizes.s6),
                          Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffdedede)),
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
                            SvgPicture.asset(svgAssets.plus,
                                color: Colors.white),
                            const HSpace(Sizes.s10),
                            Text(fonts.addToBasket,
                                style: AppCss.tenorSansRegular16
                                    .textColor(Colors.white)),
                            const HSpace(Sizes.s170),
                            InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(svgAssets.whiteHeart)),
                          ],
                        ),
                      ),
                      // ColorSizeCommon(),
                      const VSpace(Sizes.s30),

                      Text(
                        fonts.gallery,
                        style: AppCss.tenorSansRegular14,
                      ).paddingOnly(left: 35),
                      const VSpace(Sizes.s10),
                      Center(
                        child: Image.asset(
                          imageAssets.gallery,
                          height: 167,
                          width: 363,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          imageAssets.gallery1,
                          height: 363,
                          width: 393,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          imageAssets.gallery2,
                          height: 257,
                          width: 393,
                        ),
                      ),
                      Text(fonts.care).paddingOnly(left: 35, top: 27),
                      Row(
                        children: [
                          SvgPicture.asset(svgAssets.shipping),
                          Text(
                            fonts.fFrs,
                            style: AppCss.tenorSansRegular14,
                          ).paddingOnly(left: 12),
                          SvgPicture.asset(svgAssets.upForward)
                              .paddingOnly(left: 124),
                        ],
                      ).paddingOnly(left: 35, top: 20),
                      Text(
                        fonts.estimated,
                        style: AppCss.tenorSansRegular14,
                      ).paddingOnly(left: 69, top: 1),
                      const VSpace(Sizes.s10),
                      SvgPicture.asset(svgAssets.line),
                      const VSpace(Sizes.s6),
                      Row(
                        children: [
                          SvgPicture.asset(svgAssets.tag).paddingOnly(left: 37),
                          Text(
                            fonts.cod,
                            style: AppCss.tenorSansRegular14,
                          ).paddingOnly(left: 13),
                          SvgPicture.asset(svgAssets.down)
                              .paddingOnly(left: 203),
                        ],
                      ),
                      const VSpace(Sizes.s7),
                      SvgPicture.asset(svgAssets.line),
                      const VSpace(Sizes.s10),
                      Row(
                        children: [
                          SvgPicture.asset(svgAssets.refresh)
                              .paddingOnly(left: 37),
                          Text(
                            fonts.retPol,
                            style: AppCss.tenorSansRegular14,
                          ).paddingOnly(left: 13),
                          SvgPicture.asset(svgAssets.down)
                              .paddingOnly(left: 191),
                        ],
                      ),
                      const VSpace(Sizes.s36),
                      Center(
                          child: Text(fonts.yMal,
                              style: AppCss.tenorSansRegular18)),
                      Center(child: SvgPicture.asset(svgAssets.inn3)),
                      const VSpace(Sizes.s30),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: appArray.alsoLike.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                  )
                : Container()),
      );
    });
  }
}
