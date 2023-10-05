import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../common/theme/app_css.dart';

class ItemCommonDrawer extends StatelessWidget {
  final String? title,image;
  const ItemCommonDrawer({Key? key,  this.title,  this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(image!).paddingSymmetric(horizontal: Insets.i20),
        Text(title!,
            style: AppCss.tenorSansRegular18),
      ],
    );
  }
}
