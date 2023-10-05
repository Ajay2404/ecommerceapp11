import 'package:ecommerceapp/config.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../intro_screen/loginsignup.dart';
import 'layouts/Intro_Page_1.dart';
import 'layouts/intro_page_2.dart';
import 'layouts/intro_page_3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Stack(
              children: [
                PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      onLastPage = (index == 2);
                    });
                  },
                  children: const [
                    IntroPage1(),
                    IntroPage2(),
                    IntroPage3(),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: const Alignment(-06, 0.90),
                    child: Row(
                      children: [
                        SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                              dotWidth: 10.0,
                              dotColor: Colors.grey,
                              dotHeight: 8.0,
                              activeDotColor: Colors.black),
                        ),
                        const Spacer(),
                        onLastPage
                            ? IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const LoginOrSignUp();
                                    },
                                  ));
                                },
                                icon: const Icon(
                                    Icons.arrow_circle_right_rounded),
                                iconSize: 60,
                              )
                            : IconButton(
                                onPressed: () {
                                  appCtrl.storage.write("onBoard", true);
                                  setState(() {});
                                  controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.ease);
                                },
                                icon: const Icon(
                                    Icons.arrow_circle_right_rounded),
                                iconSize: 60,
                              )
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}
