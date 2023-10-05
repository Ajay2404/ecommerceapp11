import 'package:ecommerceapp/controllers/common_controller/app_controller.dart';
import 'package:get/get.dart';

var appCtrl = Get.isRegistered<AppController>()
    ? Get.find<AppController>()
    : Get.put(AppController());
