import 'package:flutter/material.dart';

Widget CommonText({
  required String text,
  TextStyle? textStyle,
}) {
  return Text(
    text,
    style: textStyle,
  );
}
