import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:flutter/material.dart';

class CommonColoredContainer extends StatelessWidget {
  final Color color;
  final double width;
  final double? height;
  final BorderRadius borderRadius;

  const CommonColoredContainer({
    required this.color,
    this.width = Sizes.s320,
    this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      width: width,
      height: height,
    );
  }
}
