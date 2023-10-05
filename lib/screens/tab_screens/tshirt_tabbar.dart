import 'package:flutter/material.dart';
import 'package:ecommerceapp/common/config.dart';

import '../app_screens/home_screen/layouts/bottom_layout.dart';
import '../app_screens/home_screen/layouts/gridview_common.dart';

class Tab4 extends StatefulWidget {
  const Tab4({Key? key}) : super(key: key);

  @override
  State<Tab4> createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 600,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: appArray.allTabList3.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 16 / 9,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      mainAxisExtent: 300),
                  itemBuilder: (context, index) {
                    return GridViewCommon(
                      image: appArray.allTabList3[index]["image"],
                      title: appArray.allTabList3[index]["name"],
                      price: appArray.allTabList3[index]["price"],
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
