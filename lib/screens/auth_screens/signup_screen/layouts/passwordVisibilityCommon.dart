import 'package:ecommerceapp/common/theme/index.dart';
import 'package:ecommerceapp/controllers/auth_pages_controllers/signup_page_controller.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../common/config.dart';

class PasswordVisibilityCommon extends StatelessWidget {
  final signUpCtrl = Get.put(SignUpController());

  PasswordVisibilityCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(builder: (_) {
      return TextField(
        obscureText: signUpCtrl.passwordVisible,
        style: const TextStyle(fontSize: 20, color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(signUpCtrl.passwordVisible
                ? Icons.visibility
                : Icons.visibility_off),
            onPressed: () {
              signUpCtrl.passwordVisible = !signUpCtrl.passwordVisible;
              signUpCtrl.update();
            },
          ),
          labelText: fonts.password,
          labelStyle: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ).padding(horizontal: Insets.i20, top: Insets.i20);
    });
  }
}
