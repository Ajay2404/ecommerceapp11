import 'package:flutter/material.dart';

class CommonTextFieldWithPadding extends StatelessWidget {
  final String hintText;

  const CommonTextFieldWithPadding({
    super.key,
    required this.hintText,
    required TextInputType keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 46, left: 48),
      child: TextField(
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}
