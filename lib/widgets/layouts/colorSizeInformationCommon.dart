import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/config.dart';
import '../../common/theme/app_css.dart';

class InformationColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRow(svgAssets.res1, fonts.dnub),
        buildRow(svgAssets.res2, fonts.dntd),
        buildRow(svgAssets.res3, fonts.dcwt),
        buildRow(svgAssets.res4, fonts.iaamo),
        const SizedBox(height: Sizes.s20),
        Text(fonts.care),
        buildRowWithIcons(svgAssets.shipping, fonts.fFrs, svgAssets.upForward),
        Text(fonts.estimated),
        SvgPicture.asset(svgAssets.line),
        buildRowWithIcons(svgAssets.tag, fonts.cod, svgAssets.down),
        SvgPicture.asset(svgAssets.line),
        buildRowWithIcons(svgAssets.refresh, fonts.retPol, svgAssets.down),
        Text(fonts.yMal),
        SvgPicture.asset(svgAssets.inn3),
      ],
    );
  }

  Widget buildRow(String assetName, String text) {
    return Row(
      children: [
        SvgPicture.asset(assetName),
        Text(text),
      ],
    );
  }

  Widget buildRowWithIcons(String assetName1, String text, String assetName2) {
    return Row(
      children: [
        SvgPicture.asset(assetName1),
        Text(text),
        SvgPicture.asset(assetName2),
      ],
    );
  }
}
