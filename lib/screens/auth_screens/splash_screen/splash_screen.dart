import 'dart:async';
import 'dart:developer';

import 'package:ecommerceapp/common/config.dart';
import 'package:ecommerceapp/config.dart';
import 'package:ecommerceapp/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    bool isOnBoard = appCtrl.storage.read("onBoard") ?? false;
    log("onBoard: $isOnBoard");
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (isOnBoard) {
        Get.offAllNamed(routeName.loginSignUp);
      } else {
        Get.offAllNamed(routeName.onBoardScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Image.asset(imageAssets.p2,
            alignment: Alignment.center,
            height: double.infinity,
            fit: BoxFit.cover),
      ),
    );
  }
}
