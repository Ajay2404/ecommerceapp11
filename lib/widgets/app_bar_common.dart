import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppBarCommon extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final Color? svgColor;

  const AppBarCommon({Key? key, this.onPressed, this.color, this.svgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: SvgPicture.asset(
          svgAssets.logo,
          color: svgColor ?? Colors.black,
        ),
      ),
      backgroundColor: color ?? appCtrl.appTheme.white,
      shadowColor: color ?? Colors.white,
      foregroundColor: color ?? Colors.white,
      actions: [
        IconButton(
          onPressed: () {
            Get.toNamed(routeName.searchCommon);
          },
          icon: SvgPicture.asset(
            svgAssets.icon1,
            color: svgColor ?? Colors.black,
          ),
        ),
        IconButton(
          onPressed: () => Get.toNamed(routeName.cartScreen),
          icon: SvgPicture.asset(
            svgAssets.icon2,
            color: svgColor ?? Colors.black,
          ),
        ),
      ],
      leading: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          svgAssets.icon3,
          color: svgColor ?? Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
