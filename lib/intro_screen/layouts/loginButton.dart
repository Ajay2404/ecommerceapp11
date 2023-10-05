import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Sizes.s400,
        height: Sizes.s60,
        child: Text(
          fonts.login,
          textAlign: TextAlign.center,
          style: AppCss.tenorSansBold18.textColor(appCtrl.appTheme.blackColor),
        ).paddingOnly(top: Insets.i20),
      ).decorated(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
    ).paddingSymmetric(horizontal: Insets.i15).inkWell(
      onTap: () {
        Get.toNamed(routeName.loginPg);
      },
    );
  }
}
