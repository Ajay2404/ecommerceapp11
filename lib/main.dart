import 'package:ecommerceapp/routes/index.dart';
import 'package:ecommerceapp/screens/auth_screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: const Splashscreen(),
        getPages: appRoute.getPages,
        debugShowCheckedModeBanner: false);
  }
}
