import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class CommonRowWithSvgImages extends StatelessWidget {
  final List<String> svgPaths;
  final double topPadding;
  final double horizontalPadding;

  const CommonRowWithSvgImages({
    required this.svgPaths,
    this.topPadding = 70,
    this.horizontalPadding = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        svgPaths.length,
            (index) => SvgPicture.asset(svgPaths[index])
            .paddingOnly(
          left: index == 0 ? 0 : horizontalPadding,
          right: index == svgPaths.length - 1 ? 0 : horizontalPadding,
          top: topPadding,
        ),
      ),
    );
  }
}
