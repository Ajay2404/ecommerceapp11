import 'package:get/get.dart';

class SignUpController extends GetxController {
  bool check = false;
  bool passwordVisible = false;
  bool passwordVisible1 = false;

  onTapPasswordShow() {
    passwordVisible = !passwordVisible;
    update();
  }

  onTapConfirmPasswordShow() {
    passwordVisible1 = !passwordVisible1;
    update();
  }

  onTapCheck(value) {
    check = value!;
    update();
  }
}
