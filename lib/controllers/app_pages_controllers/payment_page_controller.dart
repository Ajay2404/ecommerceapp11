import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PaymentPageControllers extends GetxController {
  PageController controller1 = PageController();
  TextEditingController card = TextEditingController();
  TextEditingController expiry = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController cvv = TextEditingController();
  String cardNumber = "XXXX XXXX XXXX XXXX";
  String expiryDate = "XX/XXXX";
  String cardHolderName = "Card Holder Name";
  String cvvCode = "XXX";
  bool isCvvFocused = false;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}
