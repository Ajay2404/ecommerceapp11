import 'dart:developer';

import 'package:ecommerceapp/routes/index.dart';
import 'package:get/get.dart';

class CollectionLikeController extends GetxController {
  var image;
  var name;
  var price;
  var title;


  // onTapLike() {
  //   Get.toNamed(routeName.errorPage);
  //   update();
  // }

  @override
  void onReady() {
    var data = Get.arguments;
    log("DATA $data");
    image = data != null ? data["image"] : "";
    name = data != null ? data["name"] : "";
    price = data != null ? data["price"] : "";
    title = data != null ? data["title"] : "";
    update();
    // TODO: implement onReady
    super.onReady();
  }
}
