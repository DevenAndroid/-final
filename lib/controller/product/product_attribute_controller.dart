import 'package:dinelah_vendor/controller/product/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/utils/snackbar.dart';
import '../../data/models/product/variation_attributes/variation_attr.dart';
import '/data/models/product/attribute/attribute.dart';
import '../../screens/product/index.dart';
import '/data/repository/product_repository.dart';

mixin ProductAttributeController on GetxController {
  final ProductRepository _repository = Get.find<ProductRepository>();
  final GlobalKey<FormState> attributeFormKey = GlobalKey<FormState>();

  final _productAttributes = const ProductAttribute().obs;
  ProductAttribute get productAttributes => _productAttributes.value;

  final RxList<VariationAttribute> _colorVariationAttributes =
      <VariationAttribute>[].obs;
  List<VariationAttribute> get colorVariationAttributes =>
      _colorVariationAttributes;
  set colorVariationAttributes(List<VariationAttribute> value) =>
      _colorVariationAttributes.value = value;

  final RxList<VariationAttribute> _sizeVariationAttributes =
      <VariationAttribute>[].obs;
  List<VariationAttribute> get sizeVariationAttributes =>
      _sizeVariationAttributes;
  set sizeVariationAttributes(List<VariationAttribute> value) =>
      _sizeVariationAttributes.value = value;

  final _productAttributeWidgets = <ProductAttributeWidget>[].obs;
  List<ProductAttributeWidget> get productAttributeWidgets =>
      _productAttributeWidgets;

  final Rx<String?> _selectedAttribute = "".obs;
  String? get selectedAttribute => _selectedAttribute.value;
  set selectedAttribute(String? value) => _selectedAttribute.value = value;

  @override
  void onInit() {
    super.onInit();
    _getProductVariationAttributes();
  }

  Future<ProductAttributes> getProductAttributes(String? productId) async {
    final _response = await _repository.getProductAttributes(productId);
    if (_response.data != null) {
      _productAttributes.value = _response.data!;
      update();
    }
    return _response;
  }


  void addProductAttribute(){

  }

  void setProductAttribute(ProductAttributeWidget widget) {
    ProductAttributeWidget? attr = _productAttributeWidgets.firstWhereOrNull(
      (element) => element.name == widget.name,
    );
    if (attr == null) {
      _productAttributeWidgets.add(widget);
    } else {
      snack('Message!', 'Attribute already added. Check below.', Icons.warning);
    }
    update();
  }

  void updateProductAttribute(ProductAttributeWidget widget) {
    int _index = _productAttributeWidgets.indexOf(widget);

    if (_index >= 0) {
      _productAttributeWidgets.removeAt(_index);
      var _temp = ProductAttributeWidget(
        name: widget.name,
        isExpanded: !widget.isExpanded,
      );
      _productAttributeWidgets.insert(_index, _temp);
    }

    update();
  }

  void clearProductAttribute() {
    _productAttributeWidgets.clear();

    _colorVariationAttributes.value = _colorVariationAttributes.map((element) => element.copyWith(isSelected: false))
        .toList();

    _sizeVariationAttributes.value = _sizeVariationAttributes
        .map((element) => element.copyWith(isSelected: false))
        .toList();

    update();
  }

  void setAvailableColors(List<String> colors) {
    final _variations = _colorVariationAttributes.map((element) {
      if (colors.contains(element.slug)) {
        return element.copyWith(isSelected: true);
      } else {
        return element.copyWith(isSelected: false);
      }
    }).toList();
    _colorVariationAttributes.value = _variations;
    update();
  }

  void setAvailableSizes(List<String> sizes) {
    final _variations = _sizeVariationAttributes.map((element) {
      if (sizes.contains(element.slug)) {
        return element.copyWith(isSelected: true);
      } else {
        return element.copyWith(isSelected: false);
      }
    }).toList();
    _sizeVariationAttributes.value = _variations;
    update();
  }

  void removeProductAttribute(ProductAttributeWidget widget) {
    int _index = _productAttributeWidgets.indexOf(widget);

    if (_index >= 0) {
      if (widget.name?.toLowerCase().contains("size") == true) {
        sizeVariationAttributes = _sizeVariationAttributes
            .map((element) => element.copyWith(isSelected: false))
            .toList();
      } else {
        colorVariationAttributes = _colorVariationAttributes
            .map((element) => element.copyWith(isSelected: false))
            .toList();
      }
      _productAttributeWidgets.removeAt(_index);
      saveProductAttributes();
      update();
    }

    update();
  }

  void _getProductVariationAttributes() async {
    VariationAttributes _response =
        await _repository.getProductVariationAttributes();

    _response.data
        ?.where((element) => element.colors != null)
        .toList()
        .forEach((element) {
      _colorVariationAttributes.addAll(element.colors ?? []);
    });

    _response.data
        ?.where((element) => element.sizes != null)
        .toList()
        .forEach((element) {
      _sizeVariationAttributes.addAll(element.sizes ?? []);
    });

    update();
  }

  void updateSelectedSizeAttributes(VariationAttribute attribute) {
    int _index = _sizeVariationAttributes.indexOf(attribute);
    if (_index >= 0) {
      _sizeVariationAttributes.removeAt(_index);
      bool _isSelected = attribute.isSelected ?? false;
      _sizeVariationAttributes.insert(
        _index,
        attribute.copyWith(isSelected: !_isSelected),
      );
    }
    update();
  }

  void updateSelectedColorAttributes(VariationAttribute attribute) {
    int _index = _colorVariationAttributes.indexOf(attribute);
    if (_index >= 0) {
      _colorVariationAttributes.removeAt(_index);
      bool _isSelected = attribute.isSelected ?? false;
      _colorVariationAttributes.insert(
        _index,
        attribute.copyWith(isSelected: !_isSelected),
      );
    }
    update();
  }

  void saveProductAttributes() async {
    final _controller = Get.find<ProductDetailController>();
    final _colors = _colorVariationAttributes
        .where((element) => element.isSelected == true)
        .toList();

    _controller.availableColorVariationAttributes = _colors;

    final _sizes = _sizeVariationAttributes
        .where((element) => element.isSelected == true)
        .toList();

    _controller.availableSizeVariationAttributes = _sizes;

    final _body = {
      "product_id": _controller.createdProductId,
      "variation_attribute": {
        "color": _colors.map((e) => {"slug": e.slug}).toList(),
        "size": _sizes.map((e) => {"slug": e.slug}).toList()
      }
    };

    final _response = await _repository.saveProductAttributes(_body);
    snack('Message', _response['message'], Icons.message);

    debugPrint(_body.toString());
  }

  void showAvailableProductAttributes() async {
    final _controller = Get.find<ProductDetailController>();
    final _colors = _colorVariationAttributes
        .where((element) => element.isSelected == true)
        .toList();

    _controller.availableColorVariationAttributes = _colors;

    final _sizes = _sizeVariationAttributes
        .where((element) => element.isSelected == true)
        .toList();

    _controller.availableSizeVariationAttributes = _sizes;
  }
}
