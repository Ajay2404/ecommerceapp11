import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  final double height;
  final double width;
  final BorderRadius borderRadius;

  const CommonContainer({
    super.key,
    required this.text,
    required this.textStyle,
    this.height = Sizes.s30,
    this.width = Sizes.s70,
    required this.backgroundColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
