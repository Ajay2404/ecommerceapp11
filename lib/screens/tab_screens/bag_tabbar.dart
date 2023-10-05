import 'package:ecommerceapp/common/config.dart';
import 'package:flutter/material.dart';
import '../app_screens/home_screen/layouts/bottom_layout.dart';
import '../app_screens/home_screen/layouts/gridview_common.dart';


class Tab5 extends StatefulWidget {
  const Tab5({Key? key}) : super(key: key);

  @override
  State<Tab5> createState() => _Tab5State();
}

class _Tab5State extends State<Tab5> {
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
                  itemCount: appArray.allTabList4.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 16 / 9,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      mainAxisExtent: 300),
                  itemBuilder: (context, index) {
                    return GridViewCommon(
                      image: appArray.allTabList4[index]["image"],
                      title: appArray.allTabList4[index]["name"],
                      price: appArray.allTabList4[index]["price"],
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
