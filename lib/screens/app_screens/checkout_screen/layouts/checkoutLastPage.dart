import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/controllers/app_pages_controllers/checkout_page_controller.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/widgets/drawer_common.dart';

class CheckOutLastPage extends StatefulWidget {
  const CheckOutLastPage({Key? key}) : super(key: key);

  @override
  State<CheckOutLastPage> createState() => _CheckOutLastPageState();
}

class _CheckOutLastPageState extends State<CheckOutLastPage> {
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
          body: Column(
            children: [
              Center(
                child: Text(
                  fonts.checkOut,
                  style: AppCss.tenorSans,
                ).paddingOnly(top: 40),
              ),
              Center(child: SvgPicture.asset(svgAssets.inn3)),
              const HSpace(Sizes.s35),
              Container(
                child: Row(
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
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.placeOrderPage);
                },
              ),
              const HSpace(Sizes.s22),
              Center(child: SvgPicture.asset(svgAssets.line)),
              const HSpace(Sizes.s22),
              Row(
                children: [
                  const VSpace(Sizes.s55),
                  SvgPicture.asset(
                    svgAssets.mastercard,
                    height: Sizes.s32,
                  ),
                  const VSpace(Sizes.s10),
                  Text(fonts.mastercard),
                  Container(
                    child: const Icon(Icons.keyboard_arrow_right),
                  ).paddingOnly(left: 80),
                ],
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.paymentMethodPage);
                },
              ),
              const HSpace(Sizes.s22),
              Center(child: SvgPicture.asset(svgAssets.line)),
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
                                    width: 28,
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
                                    width: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(color: Colors.grey),
                                    )),
                              ),
                            ],
                          ),
                          const HSpace(Sizes.s15),
                          Text(
                              "\$${checkOutDetailsCtrl.amount * checkOutDetailsCtrl.cnt}",
                              style: AppCss.tenorSansRegular16
                                  .textColor(const Color(0xffdd8560))),
                        ],
                      ),
                    ]),
                  )),
              const HSpace(Sizes.s250),
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
              setState(() {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Column(
                        children: [
                          SvgPicture.asset(svgAssets.close)
                              .paddingOnly(left: 260)
                              .inkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          const HSpace(Sizes.s20),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, right: 40),
                            child: Text(fonts.paySuccess),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        Column(
                          children: [
                            SvgPicture.asset(svgAssets.success)
                                .paddingOnly(bottom: 30),
                            Text(fonts.yourpaysucc),
                            const HSpace(Sizes.s10),
                            Text(fonts.payid),
                            const HSpace(Sizes.s18),
                            SvgPicture.asset(svgAssets.inn3),
                            const HSpace(Sizes.s18),
                            Text(
                              fonts.rating,
                              style: AppCss.tenorSansRegular16,
                            ),
                            const HSpace(Sizes.s18),
                            Row(children: [
                              const VSpace(Sizes.s90),
                              SvgPicture.asset(svgAssets.rating),
                              const VSpace(Sizes.s20),
                              SvgPicture.asset(svgAssets.rating1),
                              const VSpace(Sizes.s20),
                              SvgPicture.asset(svgAssets.rating2),
                            ]),
                            const HSpace(Sizes.s40),
                            Row(
                              children: [
                                Container(
                                  height: Sizes.s50,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all()),
                                  child: Center(
                                    child: Text(fonts.submit,
                                        style: AppCss.tenorSansRegular14
                                            .textColor(Colors.white)),
                                  ),
                                ).paddingOnly(bottom: 28).inkWell(
                                  onTap: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content:
                                                Text(fonts.thanksForRate)));
                                  },
                                ),
                                const VSpace(Sizes.s10),
                                Container(
                                  height: Sizes.s50,
                                  width: 166,
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: Center(
                                    child: Text(fonts.backToHome,
                                        style: AppCss.tenorSansRegular14),
                                  ),
                                ).paddingOnly(bottom: 28).inkWell(
                                  onTap: () {
                                    Get.toNamed(routeName.home);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              });
            },
          )),
    );
  }
}
