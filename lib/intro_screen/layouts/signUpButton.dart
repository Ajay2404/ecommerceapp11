import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/index.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:get/instance_manager.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Sizes.s400,
        height: Sizes.s60,
        child: Text(
          fonts.signUp,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ).decorated(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
    ).paddingOnly(left: Insets.i8, right: Insets.i8, top: 20).inkWell(
      onTap: () {
        Get.toNamed(routeName.signUp);
      },
    );
  }
}
