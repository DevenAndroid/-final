import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/utils/snackbar.dart';

import '../../data/models/product/available_variations/product_available_variation.dart';
import '../../data/models/product/variation/variation.dart';
import '../../data/models/product/variation_attributes/variation_attr.dart';
import '../../data/repository/product_repository.dart';
import '../../screens/product/widgets/product_variation.dart';

mixin ProductVariantController on GetxController {
  final ProductRepository _repository = Get.find<ProductRepository>();
  final GlobalKey<FormState> variationFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> variationsFormKey = GlobalKey<FormState>();

  final _creatingVariation = false.obs;
  bool get creatingVariation => _creatingVariation.value;

  final _productVariationAttributes = <ProductVariationWidget>[].obs;
  List<ProductVariationWidget> get productVariationAttributes =>
      _productVariationAttributes;

  final RxList<VariationAttribute> _availableColorVariationAttributes =
      <VariationAttribute>[].obs;
  List<VariationAttribute> get availableColorVariationAttributes =>
      _availableColorVariationAttributes;
  set availableColorVariationAttributes(List<VariationAttribute> attributes) =>
      _availableColorVariationAttributes.value = attributes;

  final RxList<VariationAttribute> _availableSizeVariationAttributes =
      <VariationAttribute>[].obs;
  List<VariationAttribute> get availableSizeVariationAttributes =>
      _availableSizeVariationAttributes;
  set availableSizeVariationAttributes(List<VariationAttribute> attributes) =>
      _availableSizeVariationAttributes.value = attributes;

  final Rx<VariationAttribute?> _selectedColorVariation =
      const VariationAttribute().obs;
  VariationAttribute? get selectedColorVariation =>
      _selectedColorVariation.value;
  set selectedColorVariation(VariationAttribute? value) =>
      _selectedColorVariation.value = value;

  final Rx<VariationAttribute?> _selectedSizeVariation =
      const VariationAttribute().obs;
  VariationAttribute? get selectedSizeVariation => _selectedSizeVariation.value;
  set selectedSizeVariation(VariationAttribute? value) =>
      _selectedSizeVariation.value = value;

  final _priceTextEditingControllers = <TextEditingController?>[].obs;
  List<TextEditingController?> get priceTextEditingControllers =>
      _priceTextEditingControllers;

  final _skuTextEditingControllers = <TextEditingController?>[].obs;
  List<TextEditingController?> get skuTextEditingControllers =>
      _skuTextEditingControllers;

  final _stockTextEditingControllers = <TextEditingController?>[].obs;
  List<TextEditingController?> get stockTextEditingControllers =>
      _stockTextEditingControllers;

  final _tags = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<ProductAvailableVariation> getProductAvailableVariationAttributes(
      String? productId) async {
    return await _repository.getProductAvailableVariationAttributes(productId);
  }

  void addProductVariationController(
    String tag,
    TextEditingController? priceController,
    TextEditingController? skuController,
    TextEditingController? stockController,
  ) {
    int _index = _tags.indexOf(tag);
    if (_index.isNegative) {
      _priceTextEditingControllers.add(priceController);
      _skuTextEditingControllers.add(skuController);
      _stockTextEditingControllers.add(stockController);
      _tags.add(tag);
    } else {
      _priceTextEditingControllers.removeAt(_index);
      _skuTextEditingControllers.removeAt(_index);
      _stockTextEditingControllers.removeAt(_index);

      _priceTextEditingControllers.insert(_index, priceController);
      _skuTextEditingControllers.insert(_index, skuController);
      _stockTextEditingControllers.insert(_index, stockController);
    }

    update();
  }

  void removeProductVariationController(
    String tag,
    TextEditingController? priceController,
    TextEditingController? skuController,
    TextEditingController? stockController,
  ) {
    debugPrint("${_priceTextEditingControllers.length}");
    int _index = _tags.indexOf(tag);
    if (_index >= 0) {
      _priceTextEditingControllers.removeAt(_index);
      _skuTextEditingControllers.removeAt(_index);
      _stockTextEditingControllers.removeAt(_index);
      _tags.removeAt(_index);

      debugPrint("${_priceTextEditingControllers.length}");
      update();
    }
  }

  // void setProductVariationAttribute(ProductVariationWidget widget) {
  //   if (!_tags.contains(
  //       "${widget.response?.data?.variations?.attributes?.color}&${widget.response?.data?.variations?.attributes?.size}")) {
  //     _productVariationAttributes.add(widget);
  //     print(_productVariationAttributes);
  //     update();
  //   } else {
  //     snack(
  //       'Oh ho!',
  //       'This variation is already exist.',
  //       Icons.warning,
  //     );
  //   }
  // }

  void setProductVariationAttributes(ProductVariationWidget widget) {
    _productVariationAttributes.add(widget);
    print(_productVariationAttributes);
  }

  void clearProductVariationAttributes() {
    _productVariationAttributes.clear();
    _availableColorVariationAttributes.clear();
    _availableSizeVariationAttributes.clear();
    update();
  }

  void updateProductVariationExpanded(
    ProductVariationWidget widget,
    String tag,
  ) {
    int _index = _productVariationAttributes.indexOf(widget);

    if (_index >= 0) {
      _productVariationAttributes.removeAt(_index);
      var _temp = ProductVariationWidget(
        response: widget.response?.copyWith(
            data: widget.response?.data?.copyWith(
          variations: widget.response?.data?.variations?.copyWith(
            attributes: widget.response?.data?.variations?.attributes?.copyWith(
              color: widget.response?.data?.variations?.attributes?.color,
              size: widget.response?.data?.variations?.attributes?.size,
            ),
            regularPrice: priceTextEditingControllers[_index]?.text ?? '',
            sku: skuTextEditingControllers[_index]?.text ?? '',
            stockQty: stockTextEditingControllers[_index]?.text ?? '',
          ),
        )),
        isExpanded: !widget.isExpanded,
      );
      _productVariationAttributes.insert(_index, _temp);
    }

    update();
  }

  void uploadProductVariationImage(
    ProductVariationWidget widget,
    String path,
  ) {
    int _index = _productVariationAttributes.indexOf(widget);

    if (_index >= 0) {
      _productVariationAttributes.removeAt(_index);
      var _temp = ProductVariationWidget(
        response: widget.response?.copyWith(
            data: widget.response?.data?.copyWith(
          variations: widget.response?.data?.variations?.copyWith(image: path),
        )),
        isExpanded: widget.isExpanded,
      );
      _productVariationAttributes.insert(_index, _temp);
    }

    update();
  }

  void removeProductVariationAttribute(ProductVariationWidget widget) {
    int _index = _productVariationAttributes.indexOf(widget);

    if (_index >= 0) {
      _productVariationAttributes.removeAt(_index);
    }
    removeProductVariations(
        widget.response?.data?.variations?.variationId?.toString());

    update();
  }

  Future<ProductVariationResponse> createProductVariation({
    String? productId,
    String? regularPrice,
    String? color,
    String? size,
  }) async {
    try {
      print("MApz  >>>>> $productId, $regularPrice $Color $Size");
      _creatingVariation.value = true;
      update();
      final _response = await _repository.createProductVariation(
        productId: productId,
        regularPrice: regularPrice,
        color: color,
        size: size,
      );
      print("Response >>>>>>>>> ${_response.message}");

      snack('Variation', '${_response.message}', Icons.message);

      // if (_response.status == 'success') {
      //   setProductVariationAttribute(
      //     ProductVariationWidget(response: _response),
      //   );
      // }

      debugPrint("Response:: $_response");
      return _response;
    } catch (e) {
      return Future.error(e.toString().substring(0,200));
    } finally {
      _creatingVariation.value = false;
      update();
    }
  }

  void updateProductVariations(
    String productId,
  ) async {
    try {
      _creatingVariation.value = true;
      update();
      List<String?> _prices = priceTextEditingControllers
          .map((element) => element?.text ?? '')
          .toList();

      List<String?> _skus = skuTextEditingControllers
          .map((element) => element?.text ?? '')
          .toList();

      List<String?> _stocks = stockTextEditingControllers
          .map((element) => element?.text ?? '')
          .toList();

      for (var i = 0; i < productVariationAttributes.length; i++) {
        final _attributeData = productVariationAttributes[i].response;
        final item = ProductVariationWidget(
          response: _attributeData?.copyWith(
            data: _attributeData.data?.copyWith(
              variations: _attributeData.data?.variations?.copyWith(
                regularPrice: _prices[i],
                sku: _skus[i],
                stockQty: _stocks[i],
              ),
            ),
          ),
        );

        final _response = await _repository.updateProductVariations(
          productId,
          item,
        );
      }
    } catch (e) {
      return Future.error(e.toString().substring(0,200));
    } finally {
      _creatingVariation.value = false;
      update();
    }
  }

  void removeProductVariations(
    String? variationId,
  ) async {
    try {
      final _response = await _repository.removeProductVariations(variationId);
    } catch (e) {
      return Future.error(e.toString().substring(0,200));
    } finally {
      _creatingVariation.value = false;
      update();
    }
  }
}
