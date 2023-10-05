import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../common/config.dart';
import '../common/theme/app_css.dart';

class DividerCommon extends StatelessWidget {
  const DividerCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(
        svgAssets.inn3,
        height: Sizes.s13
    ).paddingSymmetric(vertical: Insets.i30);
  }
}
