import 'package:ecommerceapp/screens/tab_screens/bag_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../screens/tab_screens/all_tabbar.dart';
import '../../screens/tab_screens/apparel_tabbar.dart';
import '../../screens/tab_screens/dress_tabbar.dart';
import '../../screens/tab_screens/tshirt_tabbar.dart';

class HomePageControllers extends GetxController {
  List<Tab> tabList = [
    const Tab(text: 'All'),
    const Tab(text: 'Apparel'),
    const Tab(text: 'dress'),
    const Tab(text: 'T-shirt'),
    const Tab(text: 'Bags'),
  ];

  List<Widget> allTabs = [
    const Tab1(),
    const Tab2(),
    const Tab3(),
    const Tab4(),
    const Tab5(),
  ];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}
