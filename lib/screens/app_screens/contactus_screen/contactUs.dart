import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/controllers/app_pages_controllers/contactUs_page_controller.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/screens/app_screens/contactus_screen/layouts/contactUsCommonContainer.dart';
import 'package:ecommerceapp/widgets/app_bar_common.dart';
import 'package:ecommerceapp/widgets/common_Bottom.dart';
import 'package:ecommerceapp/widgets/drawer_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final contactUsCtrl = Get.put(ContactUsPageControllers());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: contactUsCtrl.scaffoldKey,
        appBar: AppBarCommon(
            onPressed: () =>
                contactUsCtrl.scaffoldKey.currentState!.openDrawer()),
        drawer: const DrawerCommon(),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
                child: Text(fonts.contactus, style: AppCss.tenorSansRegular22)
                    .paddingOnly(top: 30, bottom: 05)),
            SvgPicture.asset(svgAssets.inn3, width: 120),
            const HSpace(Sizes.s60),
            SvgPicture.asset(
              svgAssets.msg,
              height: Sizes.s43,
              width: Sizes.s45,
            ),
            const HSpace(Sizes.s20),
            Center(
                child: Text(fonts.neeDans, style: AppCss.tenorSansRegular18)
                    .paddingAll(15)),
            const HSpace(Sizes.s20),
            CommonTextButton(
                buttonText: fonts.chatWithUs,
                onTap: () {
                  Get.toNamed(routeName.errorPage);
                },
                textColor: Colors.white,
                buttonColor: Colors.black,
                height: Sizes.s50,
                width: Sizes.s180),
            const HSpace(Sizes.s60),
            SvgPicture.asset(svgAssets.mail,
                height: Sizes.s43, width: Sizes.s45),
            const HSpace(Sizes.s20),
            Center(
              child: Text(fonts.youCanText, style: AppCss.tenorSansRegular18)
                  .paddingAll(15),
            ),
            const HSpace(Sizes.s20),
            CommonTextButton(
                buttonText: fonts.textUs,
                onTap: () {
                  Get.toNamed(routeName.errorPage);
                },
                textColor: Colors.white,
                buttonColor: Colors.black,
                height: Sizes.s50,
                width: Sizes.s180),
            const HSpace(Sizes.s60),
            SvgPicture.asset(svgAssets.twit,
                height: Sizes.s43, width: Sizes.s45),
            const HSpace(Sizes.s20),
            Center(
              child: Text(fonts.sendDirectMsg, style: AppCss.tenorSansRegular18)
                  .paddingAll(15),
            ),
            const CommonBottom()
          ]),
        ),
      ),
    );
  }
}
