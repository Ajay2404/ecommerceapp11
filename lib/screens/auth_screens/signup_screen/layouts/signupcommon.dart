import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class SignUpCommon extends StatelessWidget {
  final String? labelText;

  SignUpCommon({Key? key, this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 20, color: Colors.black),
      decoration: InputDecoration(
        labelText: labelText!,
        labelStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ).padding(horizontal: Insets.i20, top: Insets.i50);
  }
}
