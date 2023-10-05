import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  var text;

  TextStyle? textStyle;

  EdgeInsetsGeometry? padding;

  CommonText({
    super.key,
    required this.text,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
