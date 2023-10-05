import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final Color textColor;
  final Color buttonColor;
  final double height;
  final double width;

  const CommonTextButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.textColor = Colors.white,
    this.buttonColor = Colors.black,
    this.height = Sizes.s50,
    this.width = Sizes.s180,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(),
          color: buttonColor,
        ),
        child: Text(
          buttonText,
          style: AppCss.tenorSansRegular18.textColor(textColor),
        ),
      ),
    );
  }
}
