import 'package:flutter/material.dart';

class CommonContainerWithTextAndIcon extends StatelessWidget {
  final String text;
  final Widget icon;
  final double height;
  final double width;
  final BoxDecoration decoration;
  final TextStyle textStyle;
  final Color iconColor;

  const CommonContainerWithTextAndIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.height,
    required this.width,
    required this.decoration,
    required this.textStyle,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: decoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: textStyle,
          ),
          icon,
        ],
      ),
    );
  }
}
