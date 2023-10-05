import 'package:ecommerceapp/screens/app_screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../common/config.dart';

class SignUpSucess extends StatefulWidget {
  const SignUpSucess({Key? key}) : super(key: key);

  @override
  State<SignUpSucess> createState() => _SignUpSucessState();
}

class _SignUpSucessState extends State<SignUpSucess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Lottie.asset(jsonAssets.loader,
                    height: 190, width: 190, alignment: Alignment.topCenter),
              )),
              Text(fonts.success,
                  style: const TextStyle(
                      height: 4, fontSize: 40, fontWeight: FontWeight.w900)),
              Center(
                child: Text(fonts.youHaveSuccess,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20, color: Colors.grey)),
              ),
              Material(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 190),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const HomeScreen();
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
                          fonts.startShopping,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
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
  }
}
