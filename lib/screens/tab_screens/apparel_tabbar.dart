import 'package:ecommerceapp/common/config.dart';
import 'package:flutter/material.dart';

import '../app_screens/home_screen/layouts/bottom_layout.dart';
import '../app_screens/home_screen/layouts/gridview_common.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
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
                  itemCount: appArray.allTabList1.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 16 / 9,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      mainAxisExtent: 300),
                  itemBuilder: (context, index) {
                    return GridViewCommon(
                      image: appArray.allTabList1[index]["image"],
                      title: appArray.allTabList1[index]["name"],
                      price: appArray.allTabList1[index]["price"],
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
