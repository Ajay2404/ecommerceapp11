// ignore_for_file: file_names
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common/config.dart';
import '../../../common/theme/app_css.dart';
import '../../../extensions/spacing.dart';
import '../../../widgets/app_bar_common.dart';
import '../../../widgets/common_Bottom.dart';
import '../filter_screen/filterPage.dart';
import 'layouts/menuGrid.dart';
import 'layouts/menuList.dart';

// ignore: must_be_immutable
class MenuView extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var menudata;

  MenuView({Key? key, this.menudata}) : super(key: key);

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  var viewstatus = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCommon(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const VSpace(Sizes.s13),
            SizedBox(
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
                        child: SvgPicture.asset(viewstatus == 0
                            ? svgAssets.gridview
                            : svgAssets.listview))
                    .inkWell(
                  onTap: () {
                    setState(() {
                      if (viewstatus == 0) {
                        viewstatus = 1;
                      } else {
                        viewstatus = 0;
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
                    child: SvgPicture.asset(svgAssets.filter)).inkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const FilterPage();
                      },
                    ));
                  },
                ),
              ],
            ),
            const VSpace(Sizes.s24),
            viewstatus == 0
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 1.11,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: appArray.menuData.length,
                      itemBuilder: (context, index) {
                        return MenuList(
                          menudata: appArray.menuData[index],
                        );
                      },
                    ),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: appArray.menuData.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 16 / 9,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 1,
                            crossAxisCount: 2,
                            mainAxisExtent: 300),
                    itemBuilder: (context, index) {
                      return MenuGrid(
                        menudata: appArray.menuData[index],
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
