import 'package:ecommerceapp/controllers/app_pages_controllers/search_page_controller.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/screens/app_screens/search_screen/layouts/searchGrid.dart';
import 'package:ecommerceapp/screens/app_screens/search_screen/layouts/searchList.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';

import '../../../common/config.dart';
import '../../../common/theme/app_css.dart';
import '../../../widgets/common_Bottom.dart';
import '../filter_screen/filterPage.dart';

class SearchView extends StatefulWidget {
  final dynamic searchData;

  const SearchView({Key? key, this.searchData}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final searchPageCtrl = Get.put(SearchPageControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: searchPageCtrl.scaffoldKey,
      appBar: AppBarCommon(
          onPressed: () =>
              searchPageCtrl.scaffoldKey.currentState!.openDrawer()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const VSpace(Sizes.s13),
            Container(
                width: Insets.i365,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(svgAssets.icon1),
                  )),
                )),
            const VSpace(Sizes.s24),
            Row(
              children: [
                const HSpace(Sizes.s24),
                Text(fonts.result, style: AppCss.tenorSansRegular16),
                const HSpace(Sizes.s38),
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
                      Text(fonts.newN,
                          style: AppCss.tenorSansRegular14
                              .textColor(const Color(0xff555555))),
                      SvgPicture.asset(
                        height: 18,
                        svgAssets.down1,
                        color: const Color(0xff14142b),
                      )
                    ],
                  ),
                ),
                const HSpace(Sizes.s5),
                Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: const Color(0x1ac4c4c4),
                            border: Border.all(color: const Color(0x1ac4c4c4)),
                            borderRadius: BorderRadius.circular(33)),
                        child: SvgPicture.asset(searchPageCtrl.viewstatus == 0
                            ? svgAssets.gridview
                            : svgAssets.listview))
                    .inkWell(
                  onTap: () {
                    setState(() {
                      if (searchPageCtrl.viewstatus == 0) {
                        searchPageCtrl.viewstatus = 1;
                      } else {
                        searchPageCtrl.viewstatus = 0;
                      }
                    });
                  },
                ),
                const HSpace(Sizes.s9),
                Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: const Color(0x1ac4c4c4),
                            border: Border.all(color: const Color(0x1ac4c4c4)),
                            borderRadius: BorderRadius.circular(33)),
                        child: SvgPicture.asset(svgAssets.filter))
                    .inkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const FilterPage();
                      },
                    ));
                  },
                ),
              ],
            ),
            const VSpace(Sizes.s24),
            searchPageCtrl.viewstatus == 0
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 1.11,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: appArray.listArray.length,
                      itemBuilder: (context, index) {
                        return SearchList(
                          searchData: appArray.searchImg[index],
                        );
                      },
                    ),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: appArray.searchImg.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 16 / 9,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 1,
                            crossAxisCount: 2,
                            mainAxisExtent: 300),
                    itemBuilder: (context, index) {
                      return SearchGrid(
                        searchData: appArray.searchImg[index],
                      );
                    },
                  ),
            const CommonBottom(),
          ],
        ),
      ),
    );
  }
}
