import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class CommonRowWithColumn extends StatelessWidget {
  final List<String> svgPaths;
  final List<String> texts;
  final TextStyle textStyle;

  const CommonRowWithColumn({
    required this.svgPaths,
    required this.texts,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        svgPaths.length,
            (index) => Column(
          children: [
            SvgPicture.asset(svgPaths[index]).paddingOnly(top: 210, left: index * 50),
            Text(
              texts[index],
              style: textStyle,
            ).paddingOnly(top: 11, left: index * 50),
          ],
        ),
      ),
    );
  }
}
