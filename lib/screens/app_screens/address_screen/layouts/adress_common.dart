import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:flutter/material.dart';

class CommonRow extends StatelessWidget {
  final String firstHintText;
  final String lastHintText;
  final TextInputType keyboardType;

  const CommonRow({super.key,
    required this.firstHintText,
    required this.lastHintText,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: Sizes.s30,
          width: Sizes.s150,
          child: TextField(
            decoration: InputDecoration(hintText: firstHintText),
          ),
        ),
        const VSpace(Sizes.s20),
        SizedBox(
          height: Sizes.s30,
          width: Sizes.s150,
          child: TextField(
            keyboardType: keyboardType,
            decoration: InputDecoration(hintText: lastHintText),
          ),
        ),
      ],
    );
  }
}
