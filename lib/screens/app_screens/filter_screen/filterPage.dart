import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/screens/app_screens/filter_screen/layouts/CommonContainerWithTextAndIcon.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:ecommerceapp/widgets/common_Bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'layouts/filterPageView.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    var viewstatus = 0;
    return Scaffold(
      appBar: const AppBarCommon(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const VSpace(Sizes.s24),
            Row(
              children: [
                const HSpace(Sizes.s24),
                Text(fonts.apparels, style: AppCss.tenorSansRegular16),
                const HSpace(Sizes.s78),
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
                      Text(fonts.nNew,
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
                        child: SvgPicture.asset(svgAssets.filter))
                    .inkWell(
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
            Row(
              children: [
                const HSpace(Sizes.s16),
                CommonContainerWithTextAndIcon(
                  text: fonts.women,
                  icon: SvgPicture.asset(
                    svgAssets.close,
                    height: 18,
                    color: const Color(0xff14142b),
                  ),
                  height: 40,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    border: Border.all(color: const Color(0xffdedede)),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  textStyle: AppCss.tenorSansRegular14
                      .textColor(const Color(0xff555555)),
                  iconColor: const Color(0xff14142b),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      border: Border.all(color: const Color(0xffdedede)),
                      borderRadius: BorderRadius.circular(33)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(fonts.allApparel,
                          style: AppCss.tenorSansRegular14
                              .textColor(const Color(0xff555555))),
                      SvgPicture.asset(
                        height: 18,
                        color: const Color(0xff14142b),
                        svgAssets.close,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const VSpace(Sizes.s16),
            Container(
              color: Colors.white,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: appArray.filterData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 16 / 9,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 0,
                    crossAxisCount: 1,
                    mainAxisExtent: 550),
                itemBuilder: (context, index) {
                  return FilterPageView(filterView: appArray.filterData[index]);
                },
              ),
            ),
            const CommonBottom(),
          ],
        ),
      ),
    );
  }
}
