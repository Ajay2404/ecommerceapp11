import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:flutter/material.dart';

class GridViewCommon extends StatelessWidget {
  final String? image, title, price;

  const GridViewCommon({Key? key, this.price, this.image, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            height: Sizes.s250,
            width: Sizes.s200,
            child: Image.asset(image!, fit: BoxFit.fill)),
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 25),
            child: Text(
              title!,
              style: AppCss.tenorSansMedium16
                  .textColor(appCtrl.appTheme.blackColor),
            )),
        Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              price!,
              style: AppCss.tenorSansBold12.textColor(appCtrl.appTheme.green),
            )),
      ],
    );
  }
}
