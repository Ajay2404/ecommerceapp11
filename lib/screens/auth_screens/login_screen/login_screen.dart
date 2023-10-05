import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/common/theme/app_css.dart';
import 'package:ecommerceapp/extensions/spacing.dart';
import 'package:ecommerceapp/screens/app_screens/home_screen/home_screen.dart';
import 'package:ecommerceapp/screens/auth_screens/login_screen/layouts/commonButton.dart';
import 'package:ecommerceapp/screens/auth_screens/login_screen/layouts/commonText.dart';
import 'package:ecommerceapp/screens/auth_screens/login_screen/layouts/commonTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPg extends StatefulWidget {
  const LoginPg({Key? key}) : super(key: key);

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _obscureText = true;

  // BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(imageAssets.p5),
            Row(
              children: [
                Text(fonts.welcome,
                    style: GoogleFonts.publicSans(
                        fontSize: 35, fontWeight: FontWeight.w900)),
              ],
            ),
            Text(fonts.pleaselogin,
                style: GoogleFonts.lato(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
            CommonTextField(
              controller: email,
              obscureText: false,
              labelText: fonts.email,
              labelStyle: const TextStyle(fontSize: 20, color: Colors.black),
              textStyle: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const HSpace(Sizes.s35),
            CommonTextField(
              controller: password,
              obscureText: _obscureText,
              labelText: fonts.password,
              labelStyle: const TextStyle(fontSize: 20, color: Colors.black),
              textStyle: const TextStyle(fontSize: 20, color: Colors.grey),
              suffixIcon: const Icon(Icons.visibility_off),
            ),
            const VSpace(Sizes.s60),
            Material(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  Get.to(const HomeScreen());
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      fonts.login,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ).paddingOnly(left: 10, right: 10),
            ),
            const VSpace(Sizes.s10),
            Row(
              children: [
                CommonText(
                  text: fonts.line,
                  textStyle: const TextStyle(color: Colors.grey),
                ),
                CommonText(
                  text: fonts.or,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                CommonText(
                  text: fonts.line,
                  textStyle: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const VSpace(Sizes.s10),
            CommonButton(
              buttonText: fonts.continueWithFb,
              buttonImage: AssetImage(imageAssets.fbLogo),
              buttonColor: const Color(0xff4267b2),
              textColor: Colors.white,
              onTap: () {},
            ),
            const VSpace(Sizes.s10),
            CommonButton(
              buttonText: fonts.continueWithGoogle,
              buttonImage: AssetImage(imageAssets.googleLogo),
              buttonColor: Colors.white,
              textColor: Colors.black,
              onTap: () {},
            ),
            const VSpace(Sizes.s10),
            CommonButton(
              buttonText: fonts.continueWithApple,
              buttonImage: AssetImage(imageAssets.appleLogo),
              buttonColor: Colors.white,
              textColor: Colors.black,
              onTap: () {},
            ),
          ],
        ).paddingSymmetric(horizontal: Insets.i20),
      ),
    );
  }
}
