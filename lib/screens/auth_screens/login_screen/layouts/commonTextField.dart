import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class CommonTextField extends StatelessWidget {
  var labelText;
  TextStyle? labelStyle;
  TextStyle? textStyle;
  Widget? suffixIcon;
  bool obscureText;

  TextEditingController? controller;

  CommonTextField({
    super.key,
    required this.obscureText,
    required this.labelText,
    TextStyle? this.labelStyle,
    TextStyle? this.textStyle,
    Widget? this.suffixIcon,
    TextEditingController? this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: textStyle ?? const TextStyle(fontSize: 20, color: Colors.black),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle:
            labelStyle ?? const TextStyle(fontSize: 20, color: Colors.black),
        suffixIcon: suffixIcon,
      ),
    ).paddingOnly(left: 20, right: 20);
  }
}
