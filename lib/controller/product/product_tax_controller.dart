import 'package:get/get.dart';

import '../../data/models/product/shipping_class/shipping.dart';

mixin ProductTaxController on GetxController {
  final List<String> _taxStatus = ["Taxable", "Shipping Only", "None"];
  List<String> get taxStatus => _taxStatus;

  final _selectedTaxStatus = "Taxable".obs;
  String get selectedTaxStatus => _selectedTaxStatus.value;
  set selectedTaxStatus(String? status) =>
      _selectedTaxStatus.value = status ?? "Taxable";

  final List<String> _taxClass = ["Standard", "Zero Rate"];
  List<String> get taxClass => _taxClass;

  final _selectedTaxClass = "Standard".obs;
  String get selectedTaxClass => _selectedTaxClass.value;
  set selectedTaxClass(String? status) =>
      _selectedTaxClass.value = status ?? "Standard";

  final _selectedShippingClass = const ShippingClass().obs;
  ShippingClass get selectedShippingClass => _selectedShippingClass.value;
  set selectedShippingClass(ShippingClass status) =>
      _selectedShippingClass.value = status;
}
