import 'package:flutter/material.dart';
import 'package:ecommerceapp/common/config.dart';

import '../../common/theme/app_css.dart';
import '../app_screens/home_screen/layouts/bottom_layout.dart';
import '../app_screens/home_screen/layouts/gridview_common.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: Sizes.s600,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: appArray.allTabList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 16 / 9,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      mainAxisExtent: 300),
                  itemBuilder: (context, index) {
                    return GridViewCommon(
                      image: appArray.allTabList[index]["image"],
                      title: appArray.allTabList[index]["name"],
                      price: appArray.allTabList[index]["price"],
                    );
                  },
                ),
              ),
              const BottomLayout(),
            ],
          ),
        ),
      ),
    );
  }
}
