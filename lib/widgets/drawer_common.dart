import 'dart:developer';

import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'item_common.dart';

class DrawerCommon extends StatefulWidget {
  const DrawerCommon({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerCommon> createState() => _DrawerCommonState();
}

class _DrawerCommonState extends State<DrawerCommon>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var status = 0;
  int selectIndex = 0;

  onMenuChange(index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(svgAssets.close, height: 30),
          ).inkWell(
            onTap: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
          ).paddingOnly(top: 10, left: 10, bottom: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: appArray.menuList
                .asMap()
                .entries
                .map((e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(e.value,
                            style: AppCss.tenorSansMedium16.textColor(
                                selectIndex == e.key
                                    ? appCtrl.appTheme.text
                                    : appCtrl.appTheme.gray)),
                        const VSpace(Sizes.s20),
                        if (selectIndex == e.key)
                          SvgPicture.asset(svgAssets.menu)
                      ],
                    ).inkWell(onTap: () => onMenuChange(e.key)))
                .toList(),
          ).paddingSymmetric(horizontal: Insets.i20),
          const HSpace(Sizes.s20),
          selectIndex == 0
              ? Column(
                  children: [
                    const VSpace(Sizes.s20),
                    SizedBox(
                      height: Sizes.s440,
                      child: ListView.builder(
                        itemCount: appArray.women.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ExpansionTile(
                                title: Text(appArray.women[index],
                                    style: AppCss.tenorSansRegular16),
                                children: appArray.name1.map((data) {
                                  return ListTile(
                                      title: Text(data,
                                              style: AppCss.tenorSansRegular16)
                                          .inkWell(
                                    onTap: () {
                                      Get.toNamed(routeName.menuView);
                                    },
                                  ));
                                }).toList(),
                              ),
                            ],
                          );
                        },
                      ).paddingOnly(right: 10, left: 10, bottom: 20),
                    ),
                    ItemCommonDrawer(
                      image: svgAssets.call,
                      title: fonts.number,
                    ),
                    const HSpace(Sizes.s40),
                    ItemCommonDrawer(
                      image: svgAssets.location,
                      title: fonts.storeLocator,
                    ),
                    const HSpace(Sizes.s30),
                    SvgPicture.asset(svgAssets.inn3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(svgAssets.twitter)
                            .paddingOnly(right: 15, left: 15, top: 20),
                        SvgPicture.asset(svgAssets.instagram)
                            .paddingOnly(right: 15, left: 15, top: 20),
                        SvgPicture.asset(svgAssets.youtube)
                            .paddingOnly(right: 15, left: 15, top: 20),
                      ],
                    ),
                  ],
                )
              : selectIndex == 1
                  ? Column(
                      children: [
                        const HSpace(Sizes.s40),
                        SizedBox(
                          height: Sizes.s40,
                          child: ListView.builder(
                            itemCount: appArray.men.length,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ExpansionTile(
                                    title: Text(
                                      appArray.men[index],
                                      style: AppCss.tenorSansRegular16,
                                    ),
                                    children: appArray.name1.map((data) {
                                      log("jhfgfgf========================$data");

                                      return ListTile(
                                          title: Text(data,
                                                  style:
                                                      AppCss.tenorSansRegular16)
                                              .inkWell(
                                        onTap: () {
                                          Get.toNamed(routeName.menuView);
                                        },
                                      ));
                                    }).toList(),
                                  ),
                                ],
                              );
                            },
                          ).paddingOnly(right: 10, left: 10, bottom: 20),
                        ),
                        ItemCommonDrawer(
                            title: fonts.number, image: svgAssets.call),
                        const HSpace(Sizes.s40),
                        ItemCommonDrawer(
                          title: fonts.storeLocator,
                          image: svgAssets.location,
                        ),
                        const HSpace(Sizes.s30),
                        SvgPicture.asset(svgAssets.inn3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(svgAssets.twitter)
                                .paddingOnly(right: 15, left: 15, top: 20),
                            SvgPicture.asset(svgAssets.instagram)
                                .paddingOnly(right: 15, left: 15, top: 20),
                            SvgPicture.asset(svgAssets.youtube)
                                .paddingOnly(right: 15, left: 15, top: 20),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const HSpace(Sizes.s40),
                        SizedBox(
                          height: Sizes.s40,
                          child: ListView.builder(
                            itemCount: appArray.kids.length,
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ExpansionTile(
                                    title: Text(appArray.kids[index],
                                        style: AppCss.tenorSansRegular16),
                                    children: appArray.name1.map((data) {
                                      return ListTile(
                                          title: Text(data,
                                                  style:
                                                      AppCss.tenorSansRegular16)
                                              .inkWell(
                                        onTap: () {
                                          Get.toNamed(routeName.menuView);
                                        },
                                      ));
                                    }).toList(),
                                  ),
                                ],
                              );
                            },
                          ).paddingOnly(right: 10, left: 10, bottom: 20),
                        ),
                        Row(
                          children: [
                            const VSpace(Sizes.s20),
                            SvgPicture.asset(svgAssets.call),
                            const VSpace(Sizes.s20),
                            Text(fonts.number,
                                style: AppCss.tenorSansRegular18),
                          ],
                        ),
                        const HSpace(Sizes.s40),
                        Row(
                          children: [
                            const VSpace(Sizes.s20),
                            SvgPicture.asset(svgAssets.location),
                            const VSpace(Sizes.s20),
                            Text(fonts.storeLocator,
                                style: AppCss.tenorSansRegular18),
                          ],
                        ),
                        const HSpace(Sizes.s30),
                        SvgPicture.asset(svgAssets.inn3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(svgAssets.twitter)
                                .paddingOnly(right: 15, left: 15, top: 20),
                            SvgPicture.asset(svgAssets.instagram)
                                .paddingOnly(right: 15, left: 15, top: 20),
                            SvgPicture.asset(svgAssets.youtube)
                                .paddingOnly(right: 15, left: 15, top: 20),
                          ],
                        ),
                      ],
                    ),
        ]));
  }
}
