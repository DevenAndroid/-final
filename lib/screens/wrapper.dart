import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';
import 'main/main.dart';

import '../controller/auth_controller.dart';
import 'auth/login.dart';

class Wrapper extends GetView<AuthController> {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoggedIn) {
        debugPrint("User is logged in");
        // load when required by lazy loading
        // Get.put(HomeController(Get.find()));
        // Get.put(EarningsController());
        // Get.put(StoreOrderController(Get.find()));
        // Get.put(ProductController(Get.find()));
        // Get.put(ProductDetailController());
        // Get.put(CategoryController(Get.find()));
        // Get.put(StoreSettingsController());
        return HomeScreen();
      } else {
        debugPrint("User is logged out");
        return const LoginScreen();
      }
    });
  }
}
