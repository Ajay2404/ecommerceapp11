import 'package:flutter/material.dart';
import 'package:ecommerceapp/common/config.dart';

import '../app_screens/home_screen/layouts/bottom_layout.dart';
import '../app_screens/home_screen/layouts/gridview_common.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
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
                  itemCount: appArray.allTabList2.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 16 / 9,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      mainAxisExtent: 300),
                  itemBuilder: (context, index) {
                    return GridViewCommon(
                      image: appArray.allTabList2[index]["image"],
                      title: appArray.allTabList2[index]["name"],
                      price: appArray.allTabList2[index]["price"],
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
