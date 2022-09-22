import 'package:get/get.dart';
import '../controller/category_controller.dart';
import '../controller/earnings_controller.dart';
import '../controller/home_controller.dart';
import '../controller/product/product_controller.dart';
import '../controller/product/product_detail_controller.dart';
import '../controller/store_order_controller.dart';
import '../controller/store_settings_controller.dart';
import '../data/repository/product_repository.dart';
import '../data/repository/store_order_repository.dart';
import '/controller/auth_controller.dart';
import '/controller/reset_password_controller.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    // load globally
    Get.put(AuthController());
    Get.put(ResetPasswordController());
    Get.lazyPut(() => ProductRepository());
    Get.lazyPut(() => StoreOrderRepository(), fenix: true);
    // Get.put(StoreSettingsController());

    // lazy put will be called only when the controller is called
    Get.lazyPut(() => ProductDetailController(), fenix: true);
    Get.lazyPut(() => HomeController(Get.find()), fenix: true);
    Get.lazyPut(() => EarningsController(), fenix: true);
    Get.lazyPut(() => StoreOrderController(Get.find()), fenix: true);
    Get.lazyPut(() => ProductController(Get.find()), fenix: true);
    Get.lazyPut(() => CategoryController(Get.find()), fenix: true);
    Get.lazyPut(() => StoreSettingsController(), fenix: true);
  }
}
