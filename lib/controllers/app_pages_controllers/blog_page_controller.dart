import 'package:ecommerceapp/common/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogPageControllers extends GetxController {
  late TabController tabController;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> productScaffoldKey = GlobalKey<ScaffoldState>();
  var status = 0;
  var image;
  var name;
  var price;
  var title;
  var date;
  var blogdata;

  List productLists = [];

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    productLists =  appArray.listArray;
    var data = Get.arguments;
    image = data != null ? data["image"] : "";
    name = data != null ? data["name"] : "";
    price = data != null ? data["price"] : "";
    title = data != null ? data["title"] : "";
    date = data != null ? data["date"] : "";
    update();
  }

// int selectIndex = 0;
}
