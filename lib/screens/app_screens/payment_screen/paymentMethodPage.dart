import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/controllers/app_pages_controllers/payment_page_controller.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/screens/app_screens/payment_screen/layouts/comonColorContainer.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:ecommerceapp/widgets/drawer_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  final paymentPageCtrl = Get.put(PaymentPageControllers());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: paymentPageCtrl.scaffoldKey,
          appBar: AppBarCommon(
              onPressed: () =>
                  paymentPageCtrl.scaffoldKey.currentState!.openDrawer()),
          drawer: const DrawerCommon(),
          resizeToAvoidBottomInset: false,
          body: Column(children: <Widget>[
            const HSpace(Sizes.s30),
            Center(child: Text(fonts.paymethod)),
            const HSpace(Sizes.s10),
            SvgPicture.asset(svgAssets.inn3),
            const HSpace(Sizes.s30),
            SizedBox(
              height: 200,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                const VSpace(Sizes.s20),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFFFC8A9),
                  ),
                  width: Sizes.s320,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HSpace(Sizes.s90),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(fonts.ajay),
                            const VSpace(Sizes.s192),
                            Text(paymentPageCtrl.expiryDate),
                          ],
                        ),
                        Row(
                          children: [
                            Text(paymentPageCtrl.cardNumber),
                            const VSpace(Sizes.s80),
                            Text(paymentPageCtrl.cvvCode),
                          ],
                        ),
                      ]),
                ),
                const VSpace(Sizes.s20),
                const CommonColoredContainer(
                  color: Color(0xFF228A43),
                  width: Sizes.s320,
                ),
                const VSpace(Sizes.s20),
                const CommonColoredContainer(
                  color: Color(0xFFEE8955),
                  width: Sizes.s320,
                ),
                const HSpace(Sizes.s20),
                const CommonColoredContainer(
                  color: Color(0xF0402B4F),
                  width: Sizes.s320,
                ),
                const VSpace(Sizes.s20),
              ]),
            ),
            const HSpace(Sizes.s30),
            TextField(decoration: InputDecoration(hintText: fonts.nameoncard))
                .paddingOnly(right: 46, left: 48),
            const HSpace(Sizes.s30),
            TextField(decoration: InputDecoration(hintText: fonts.cardnum))
                .paddingOnly(right: 46, left: 48),
            const HSpace(Sizes.s30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: Sizes.s30,
                    width: Sizes.s150,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: fonts.exp,
                      ),
                    )),
                const VSpace(Sizes.s20),
                SizedBox(
                    height: Sizes.s30,
                    width: Sizes.s150,
                    child: TextField(
                        decoration: InputDecoration(hintText: fonts.expd))),
              ],
            ),
            const HSpace(Sizes.s30),
            TextField(
                controller: paymentPageCtrl.cvv,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: fonts.cvv,
                )).paddingOnly(right: 286, left: 48),
          ]),
          bottomNavigationBar: Container(
            color: Colors.black,
            height: Sizes.s60,
            width: double.infinity,
            child: Row(
              children: [
                const VSpace(Sizes.s150),
                SvgPicture.asset(svgAssets.plus, color: Colors.white),
                const VSpace(Sizes.s10),
                Text(
                  fonts.addcard,
                  style: AppCss.tenorSansRegular14.textColor(Colors.white),
                ),
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
