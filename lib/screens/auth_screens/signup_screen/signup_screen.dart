import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/controllers/auth_pages_controllers/signup_page_controller.dart';
import 'package:ecommerceapp/screens/auth_screens/signup_success_screen/signup_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'layouts/signupcommon.dart';

class SignUpPg extends StatelessWidget {
  final signUpCtrl = Get.put(SignUpController());

  SignUpPg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(builder: (signUpCtrl) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: SvgPicture.asset(svgAssets.p5),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        bottom: 10,
                      ),
                      child: Text(fonts.signUp,
                          style: GoogleFonts.publicSans(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 160),
                  child: Text(fonts.createAccount,
                      style: GoogleFonts.lato(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.normal)),
                ),
                SignUpCommon(labelText: fonts.userName),
                SignUpCommon(labelText: fonts.email),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextField(
                    obscureText: signUpCtrl.passwordVisible,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(signUpCtrl.passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () => signUpCtrl.onTapPasswordShow(),
                      ),
                      labelText: fonts.password,
                      labelStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextField(
                    obscureText: signUpCtrl.passwordVisible1,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(signUpCtrl.passwordVisible1
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () => signUpCtrl.onTapConfirmPasswordShow(),
                      ),
                      labelText: fonts.confirmPass,
                      labelStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Checkbox(
                          value: signUpCtrl.check,
                          onChanged: (value) => signUpCtrl.onTapCheck(value)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(fonts.byCreating,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.grey)),
                    ),
                  ],
                ),
                Material(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 40),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const SignUpSucess();
                          },
                        ));
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
