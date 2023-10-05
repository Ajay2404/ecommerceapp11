import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductOptionsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HSpace(Sizes.s28),
        Text(
          fonts.color,
          style: AppCss.tenorSansRegular18,
        ),
        const HSpace(Sizes.s8),
        SvgPicture.asset(svgAssets.color),
        const HSpace(Sizes.s12),
        SvgPicture.asset(svgAssets.color1),
        const HSpace(Sizes.s12),
        SvgPicture.asset(svgAssets.color2),
        const HSpace(Sizes.s35),
        Text(
          fonts.size,
          style: AppCss.tenorSansRegular18,
        ),
        buildSizeOption(fonts.s),
        const HSpace(Sizes.s6),
        buildSizeOption(fonts.m),
        const HSpace(Sizes.s6),
        buildSizeOption(fonts.l),
      ],
    );
  }

  Widget buildSizeOption(String size) {
    return Container(
      alignment: Alignment.center,
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffdedede)),
        borderRadius: BorderRadius.circular(33),
      ),
      child: Text(size),
    );
  }
}
