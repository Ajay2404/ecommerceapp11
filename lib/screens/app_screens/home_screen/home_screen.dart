import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/controllers/app_pages_controllers/home_page_controller.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/screens/app_screens/home_screen/layouts/commonText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../../common/theme/app_css.dart';
import '../../../config.dart';
import '../../../widgets/app_bar_common.dart';
import '../../../widgets/drawer_common.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homePageCtrl = Get.put(HomePageControllers());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: homePageCtrl.scaffoldKey,
          appBar: AppBarCommon(
              onPressed: () =>
                  homePageCtrl.scaffoldKey.currentState!.openDrawer()),
          drawer: const DrawerCommon(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                        height: 824.7, imageAssets.p2, fit: BoxFit.fill),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          text: fonts.luxury,
                          textStyle: AppCss.tenorSansMedium28,
                          padding: const EdgeInsets.only(
                              bottom: Insets.i14, right: Insets.i180),
                        ),
                        CommonText(
                          text: fonts.fashion,
                          textStyle: AppCss.tenorSansMedium28,
                          padding: const EdgeInsets.only(
                              bottom: Insets.i14, right: Insets.i140),
                        ),
                        CommonText(
                          text: fonts.accessories,
                          textStyle: AppCss.tenorSansMedium28,
                          padding: const EdgeInsets.only(
                              bottom: Insets.i300, right: Insets.i75),
                        ),
                        Container(
                          width: Sizes.s260,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black45),
                          child: InkWell(
                            child: Text(fonts.exploreCollection,
                                    style: AppCss.tenorSansblack18
                                        .textColor(appCtrl.appTheme.white))
                                .paddingSymmetric(
                                    horizontal: Insets.i20,
                                    vertical: Insets.i15),
                          ),
                        ).paddingOnly(bottom: Insets.i40),
                      ],
                    )
                  ],
                ),
                DefaultTabController(
                  length: homePageCtrl.allTabs.length,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          fonts.newArrival,
                          style: AppCss.tenorSans,
                        ),
                      ).paddingOnly(top: Insets.i70),
                      SvgPicture.asset(svgAssets.inn3),
                      TabBar(
                              indicator: DotIndicator(
                                color: Colors.black,
                                radius: 1,
                              ),
                              labelColor: Colors.black,
                              labelStyle: const TextStyle(fontSize: 13),
                              unselectedLabelColor: Colors.black,
                              tabs: homePageCtrl.tabList)
                          .paddingOnly(right: 10, left: 10),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.84,
                        child: TabBarView(children: homePageCtrl.allTabs),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
