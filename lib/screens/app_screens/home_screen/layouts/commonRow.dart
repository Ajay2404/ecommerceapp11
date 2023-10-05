import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class CommonRow extends StatelessWidget {
  final List<String> imagePaths;
  final List<String> texts;
  final TextStyle textStyle;

  const CommonRow({
    required this.imagePaths,
    required this.texts,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        imagePaths.length,
        (index) => Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(imagePaths[index]),
            Text(
              texts[index],
              style: textStyle.copyWith(color: Colors.white),
            ).paddingOnly(left: 9, bottom: 12),
          ],
        ),
      ),
    );
  }
}
