import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/controllers/app_pages_controllers/address_page_controller.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/extensions/text_style_extensions.dart';
import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/screens/app_screens/address_screen/layouts/adress_common.dart';
import 'package:ecommerceapp/screens/app_screens/address_screen/layouts/commonTextfield.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:ecommerceapp/widgets/drawer_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PlaceOrderPage extends StatefulWidget {
  const PlaceOrderPage({Key? key}) : super(key: key);

  @override
  State<PlaceOrderPage> createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  final addressCtrl = Get.put(AddressPageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddressPageController>(builder: (_) {
      return Scaffold(
        key: addressCtrl.scaffoldKey,
        appBar: AppBarCommon(
            onPressed: () =>
                addressCtrl.scaffoldKey.currentState!.openDrawer()),
        drawer: const DrawerCommon(),
        body: SingleChildScrollView(
          child: Column(children: [
            const HSpace(Sizes.s50),
            Center(
                child: Text(
              fonts.shippingAdd,
              style: AppCss.tenorSansRegular20,
            )),
            const HSpace(Sizes.s10),
            SvgPicture.asset(svgAssets.inn3),
            const HSpace(Sizes.s50),
            CommonRow(
              firstHintText: fonts.firstNm,
              lastHintText: fonts.lastNm,
              keyboardType: TextInputType.name,
            ),
            const HSpace(Sizes.s35),
            CommonTextFieldWithPadding(
              hintText: fonts.address,
              keyboardType: TextInputType.text,
            ),
            const HSpace(Sizes.s35),
            CommonTextFieldWithPadding(
              hintText: fonts.city,
              keyboardType: TextInputType.text,
            ),
            const HSpace(Sizes.s35),
            CommonRow(
              firstHintText: fonts.state,
              lastHintText: fonts.zipCode,
              keyboardType: TextInputType.number,
            ),
            const HSpace(Sizes.s35),
            CommonTextFieldWithPadding(
              hintText: fonts.phoneNum,
              keyboardType: TextInputType.number,
            ),
          ]),
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          height: Sizes.s60,
          width: double.infinity,
          child: Row(
            children: [
              const VSpace(Sizes.s100),
              SvgPicture.asset(svgAssets.plus, color: Colors.white),
              const VSpace(Sizes.s50),
              Text(
                fonts.checkout,
                style: AppCss.tenorSansRegular14.textColor(Colors.white),
              )
            ],
          ),
        ).inkWell(
          onTap: () {
            Get.toNamed(routeName.paymentMethodPage);
          },
        ),
      );
    });
  }
}
