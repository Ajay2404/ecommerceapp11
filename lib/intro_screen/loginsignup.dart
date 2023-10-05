import 'package:ecommerceapp/extensions/widget_extension.dart';
import 'package:ecommerceapp/intro_screen/layouts/loginButton.dart';
import 'package:ecommerceapp/intro_screen/layouts/signUpButton.dart';
import 'package:flutter/material.dart';

import '../common/config.dart';

class LoginOrSignUp extends StatefulWidget {
  const LoginOrSignUp({Key? key}) : super(key: key);

  @override
  State<LoginOrSignUp> createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: SafeArea(
            child: Stack(children: [
              Image.asset(
                      alignment: Alignment.center,
                      imageAssets.p6,
                      height: double.infinity,
                      fit: BoxFit.cover)
                  .center(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  LoginButton(),
                  SignUpButton(),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
