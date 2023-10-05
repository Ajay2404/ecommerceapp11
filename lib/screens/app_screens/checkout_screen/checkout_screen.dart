import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controllers/app_pages_controllers/checkout_page_controller.dart';
import '../../../extensions/spacing.dart';
import '../../../widgets/drawer_common.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
            children: [
              Text(
                fonts.checkOut,
                style: AppCss.tenorSans,
              ).paddingOnly(top: 40),
              SvgPicture.asset(svgAssets.inn3),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Container(
                    child: Row(children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child:
                            Image.asset(imageAssets.cloth111, fit: BoxFit.fill),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HSpace(Sizes.s30),
                          Text(
                            fonts.lameRei,
                            style: AppCss.tenorSansRegular16,
                          ),
                          const HSpace(Sizes.s10),
                          Text(
                            fonts.recycle,
                            style: AppCss.tenorSansRegular14,
                          ),
                          const HSpace(Sizes.s10),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    checkOutDetailsCtrl.cnt--;
                                  });
                                },
                                child: Container(
                                    child: const Icon(Icons.remove,
                                        color: Colors.grey),
                                    height: Sizes.s28,
                                    width: Sizes.s28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.grey),
                                    )),
                              ),
                              const VSpace(Sizes.s15),
                              Text("${checkOutDetailsCtrl.cnt}"),
                              const VSpace(Sizes.s15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    checkOutDetailsCtrl.cnt++;
                                  });
                                },
                                child: Container(
                                    child: const Icon(Icons.add,
                                        color: Colors.grey),
                                    height: Sizes.s28,
                                    width: Sizes.s28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.grey),
                                    )),
                              ),
                            ],
                          ),
                          const HSpace(Sizes.s20),
                          Text(
                              "\$${checkOutDetailsCtrl.amount * checkOutDetailsCtrl.cnt}",
                              style: AppCss.tenorSansRegular16
                                  .textColor(const Color(0xffdd8560))),
                        ],
                      ),
                    ]),
                  )),
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
              const HSpace(Sizes.s340),
              Row(
                children: [
                  const VSpace(Sizes.s20),
                  Text(fonts.esttotal,
                      style: AppCss.tenorSansRegular16.textColor(Colors.black)),
                  const VSpace(Sizes.s230),
                  Text(
                      "\$${checkOutDetailsCtrl.amount * checkOutDetailsCtrl.cnt}",
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
                  fonts.checkout,
                  style: AppCss.tenorSansRegular14.textColor(Colors.white),
                )
              ],
            ),
          ).inkWell(
            onTap: () {
              Get.toNamed(routeName.checkoutdetails);
            },
          )),
    );
  }
}
