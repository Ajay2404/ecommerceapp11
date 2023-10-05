import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../common/config.dart';
import '../../../common/theme/app_css.dart';
import '../../../controllers/app_pages_controllers/checkout_page_controller.dart';
import '../../../extensions/spacing.dart';
import '../../../widgets/drawer_common.dart';

class CheckOutDetails extends StatefulWidget {
  const CheckOutDetails({Key? key}) : super(key: key);

  @override
  State<CheckOutDetails> createState() => _CheckOutDetailsState();
}

class _CheckOutDetailsState extends State<CheckOutDetails> {
  final checkOutDetailsCtrl = Get.put(CheckoutPageControllers());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: checkOutDetailsCtrl.scaffoldKey,
          appBar: AppBarCommon(
              onPressed: () =>
                  checkOutDetailsCtrl.scaffoldKey.currentState!.openDrawer()),
          drawer: const DrawerCommon(),
          drawerScrimColor: Colors.white,
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  fonts.checkOut,
                  style: AppCss.tenorSans,
                ).paddingOnly(top: 40),
              ),
              Center(child: SvgPicture.asset(svgAssets.inn3)),
              const HSpace(Sizes.s18),
              Text(fonts.shippingAddress,
                      textAlign: TextAlign.start,
                      style: AppCss.tenorSansRegular14.textColor(Colors.grey))
                  .paddingOnly(left: 20),
              Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HSpace(Sizes.s10),
                        Text(fonts.iris, style: AppCss.tenorSansRegular18),
                        const HSpace(Sizes.s10),
                        Text(fonts.uLLam, style: AppCss.tenorSansRegular14),
                        const HSpace(Sizes.s10),
                        Text(fonts.number, style: AppCss.tenorSansRegular14),
                      ]).paddingOnly(right: 10, left: 30),
                  Container(
                    child: const Icon(Icons.keyboard_arrow_right),
                  ).paddingOnly(left: 120),
                ],
              ),
              const HSpace(Sizes.s20),
              Row(
                  children: [
                Text(fonts.shippingAdd),
                const VSpace(Sizes.s170),
                const Icon(Icons.add),
              ])
                  .inkWell(onTap: () {
                    Get.toNamed(routeName.placeOrderPage);
                  })
                  .marginAll(Insets.i20)
                  .paddingAll(Insets.i14)
                  .decorated(
                      color: const Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(30)),
              const HSpace(Sizes.s18),
              Text(fonts.shipMethod,
                      textAlign: TextAlign.start,
                      style: AppCss.tenorSansRegular14.textColor(Colors.grey))
                  .paddingOnly(left: 20),
              Row(
                children: [
                  Text(fonts.pickup),
                  const VSpace(Sizes.s170),
                  Text(fonts.free),
                  const VSpace(Sizes.s10),
                  SvgPicture.asset(svgAssets.down),
                ],
              ).marginAll(Insets.i20).paddingAll(Insets.i14).decorated(
                  color: const Color(0xfff9f9f9),
                  borderRadius: BorderRadius.circular(30)),
              const HSpace(Sizes.s18),
              Text(fonts.paymethod,
                      textAlign: TextAlign.start,
                      style: AppCss.tenorSansRegular14.textColor(Colors.grey))
                  .paddingOnly(left: 20),
              Row(
                children: [
                  Text(fonts.selectpaymethod),
                  const VSpace(Sizes.s160),
                  SvgPicture.asset(svgAssets.down),
                ],
              )
                  .marginAll(Insets.i20)
                  .paddingAll(Insets.i14)
                  .decorated(
                      color: const Color(0xfff9f9f9),
                      borderRadius: BorderRadius.circular(30))
                  .inkWell(
                onTap: () {
                  Get.toNamed(routeName.paymentMethodPage);
                },
              ),
              const HSpace(Sizes.s180),
              Row(
                children: [
                  const VSpace(Sizes.s20),
                  Text(fonts.esttotal,
                      style: AppCss.tenorSansRegular16.textColor(Colors.black)),
                  const VSpace(Sizes.s230),
                  Text("\$${checkOutDetailsCtrl.amount}",
                      style: AppCss.tenorSansRegular16
                          .textColor(const Color(0xffdd8560))),
                ],
              ),
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
                  fonts.placeordr,
                  style: AppCss.tenorSansRegular14.textColor(Colors.white),
                ),
              ],
            ),
          ).inkWell(
            onTap: () {
              Get.toNamed(routeName.checkoutlastpage);
            },
          )),
    );
  }
}
