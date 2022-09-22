// import 'package:get/get.dart';
// import 'package:dinelah_vendor/data/repository/product_repository.dart';
//
// import '../../data/models/product/shipping_class/shipping.dart';
//
// mixin ProductShippingController on GetxController {
//   final ProductRepository _repository = Get.find<ProductRepository>();
//
//   final RxList<ShippingClass> _shippingClasses = <ShippingClass>[].obs;
//   List<ShippingClass> get shippingClasses => _shippingClasses;
//
//   @override
//   void onInit() {
//     super.onInit();
//
//     _getShippingClasses();
//   }
//
//   void _getShippingClasses() async {
//     ShippingClasses _response = await _repository.getShippingClasses();
//     _shippingClasses.value = _response.shippingClass ?? [];
//     update();
//   }
// }
