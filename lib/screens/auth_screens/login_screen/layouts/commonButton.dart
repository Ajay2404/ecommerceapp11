import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class CommonButton extends StatelessWidget {
  var buttonText;
  var buttonImage;
  var buttonColor;
  var textColor;
  var onTap;

  CommonButton({
    super.key,
    required this.buttonText,
    required this.buttonImage,
    required this.buttonColor,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Material(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                image: buttonImage,
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              ).paddingOnly(left: 70, right: 9),
              const VSpace(60),
              const HSpace(5),
              Text(
                buttonText,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ).paddingOnly(right: 60),
              const VSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
