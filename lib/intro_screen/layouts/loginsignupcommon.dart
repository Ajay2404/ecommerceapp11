import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/theme/app_css.dart';

class LoginSignUpCommon extends StatelessWidget {
  final String? color;

  const LoginSignUpCommon({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Sizes.s400,
        height: Sizes.s60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            // color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            textAlign: TextAlign.center,
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ).paddingOnly(left: 8, right: 8, top: 20).inkWell(onTap: () {});
  }
}
