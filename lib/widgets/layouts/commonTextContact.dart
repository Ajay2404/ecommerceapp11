import 'package:flutter/material.dart';

class CommonTextContact extends StatelessWidget {
  final List<String> texts;
  final TextStyle textStyle;

  const CommonTextContact({
    required this.texts,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        texts.length,
        (index) => Text(
          texts[index],
          style: textStyle,
        ),
      ),
    );
  }
}
