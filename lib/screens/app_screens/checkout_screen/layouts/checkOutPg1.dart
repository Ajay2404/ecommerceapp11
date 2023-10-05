import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/controllers/app_pages_controllers/checkout_page_controller.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:ecommerceapp/widgets/drawer_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CartScreen1 extends StatefulWidget {
  const CartScreen1({Key? key}) : super(key: key);

  @override
  State<CartScreen1> createState() => _CartScreen1State();
}

class _CartScreen1State extends State<CartScreen1> {
  final checkOutDetailsCtrl = Get.put(CheckoutPageControllers());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawerScrimColor: Colors.white,
          backgroundColor: Colors.white,
          key: checkOutDetailsCtrl.scaffoldKey,
          appBar: AppBarCommon(
              onPressed: () =>
                  checkOutDetailsCtrl.scaffoldKey.currentState!.openDrawer()),
          drawer: const DrawerCommon(),
          body: Column(
            children: [
              Text(
                fonts.checkOut,
                style: AppCss.tenorSans,
              ).paddingOnly(top: 40),
              SvgPicture.asset(svgAssets.inn3),
              Row(
                children: const [],
              ),
              SvgPicture.asset(svgAssets.line),
              SizedBox(
                height: Sizes.s70,
                child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset(svgAssets.vector)
                            .paddingOnly(left: 60, right: 20),
                        Text(
                            textAlign: TextAlign.left,
                            fonts.promo,
                            style: AppCss.tenorSans),
                      ],
                    )),
              ),
              SvgPicture.asset(svgAssets.line),
              const HSpace(Sizes.s20),
              Row(
                children: [
                  const VSpace(Sizes.s60),
                  SvgPicture.asset(svgAssets.dTod),
                  const VSpace(Sizes.s20),
                  Text(fonts.delivery, style: AppCss.tenorSans)
                ],
              ),
              const HSpace(Sizes.s20),
              SvgPicture.asset(svgAssets.line),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.black,
            height: Sizes.s60,
            width: double.infinity,
            child: Row(
              children: [
                const VSpace(Sizes.s100),
                SvgPicture.asset(svgAssets.icon2, color: Colors.white),
                const VSpace(Sizes.s50),
                Text(
                  fonts.checkout,
                  style: AppCss.tenorSansRegular14.textColor(Colors.white),
                )
              ],
            ),
          ).inkWell(
            onTap: () {
              Get.toNamed(routeName.placeOrderPage);
            },
          )),
    );
  }
}
