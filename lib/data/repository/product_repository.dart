import 'dart:convert' as convert;
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dinelah_vendor/data/models/product/shipping_class/shipping.dart';
import 'package:dinelah_vendor/data/models/product/variation_attributes/variation_attr.dart';
import 'package:dinelah_vendor/utils/snackbar.dart';
import '../../screens/product/widgets/product_variation.dart';
import '../models/product/attribute/attribute.dart';
import '../models/product/available_variations/product_available_variation.dart';
import '../models/product/search/search_product.dart';
import '../models/product/variation/variation.dart';
import '/data/models/product/category/category.dart';
import '/data/models/product/create/create_product.dart';
import '/data/models/product/product_model.dart';
import '/data/local/auth_db.dart';
import '/data/remote/api_service.dart';

import '../../constraints/api_endpoints.dart';
import 'package:dio/dio.dart' as dio;

class ProductRepository {
  final _dio = dio.Dio();

  Future<List<ProductModel>> getProducts({
    int? perPage = 10,
    int? pageNo = 1,
  }) async {
    // var _cookie =
    //     "Snoop Dog|1646906963|K4yoM1FFmPOOYwz1KSOy6ecQ88cuUcKdN3ZXzHDTgjM|edcdeaa37e0b4df307e9e0685837d296a8e3fb64e9074574c039c081f2ae57d9";
    final response = await ApiService.post(productListApi, _dio, body: {
      "cookie": AuthDb.getAuthCookie()?.cookie,
      "per_page": perPage,
      "page_no": pageNo,
    });

    List<dynamic> products = response["products"] ?? [];

    // debugPrint(_result.toString());
    return products.map((data) => ProductModel.fromJson(data)).toList();
  }

  Future<ProductCategories> getProductCategories(
    String vendorId, {
    int? perPage = 10,
    int? pageNo = 1,
  }) async {
    final _response = await ApiService.post(productCategoriesApi, _dio, body: {
      "cookie": AuthDb.getAuthCookie()?.cookie,
      "vendor_id": vendorId,
      "per_page": perPage,
      "page_no": pageNo,
    });

    return ProductCategories.fromJson(_response);
  }

  Future<dynamic> createNewProduct(CreateProductModel product) async {
    final _response = await ApiService.post(
      createProductApi,
      _dio,
      body: product.toJson(),
    );
    return _response;
  }

  Future<ShippingClasses> getShippingClasses() async {
    final _response = await ApiService.post(
      shippingClassesApi,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
      },
    );

    return ShippingClasses.fromJson(_response);
  }

  Future<ProductAttributes> getProductAttributes(String? productId) async {
    final _response = await ApiService.post(
      productAttributes,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
        "product_id": "$productId",
      },
    );

    debugPrint("Response: ${_response.toString()}");
    return ProductAttributes.fromJson(_response);
  }

  Future<VariationAttributes> getProductVariationAttributes() async {
    final _response = await ApiService.post(
      variationAttributes,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
      },
    );

    return VariationAttributes.fromJson(_response);
  }

  Future<ProductAvailableVariation> getProductAvailableVariationAttributes(
    String? productId,
  ) async {
    debugPrint("$productId");
    final _response = await ApiService.post(
      productAvailableVariationsApi,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
        "product_id": "$productId"
      },
    );

    return ProductAvailableVariation.fromJson(_response);
  }

  Future<dynamic> updateProductVariations(
    String productId,
    ProductVariationWidget variations,
  ) async {
    final _variation = variations.response?.data?.variations;

    String? _image;

    try {
      _image = convert.base64Encode(
        File(_variation?.image).readAsBytesSync(),
      );
    } catch (e) {
      debugPrint("$e");
    }

    final _response = await ApiService.post(
      updateProductVariationApi,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
        "product_id": productId,
        "image": _image,
        "regular_price": _variation?.regularPrice,
        "price": _variation?.regularPrice,
        "stock_quantity": _variation?.stockQty,
        "variation_id": _variation?.variationId,
        "sku": _variation?.sku,
        "attributes": {
          "size": _variation?.attributes?.size,
          "color": _variation?.attributes?.color
        }
      },
    );

    debugPrint("Response: ${_response.toString()}");
    if (_response['status'] == 'success') {
      snack('Success', _response['message'], Icons.done);
    } else {
      snack(
        'Warning',
        _response['message'] ??
            'Something unexpected happened. Try again later.',
        Icons.error,
      );
    }
  }

  Future<dynamic> removeProductVariations(
    String? variationId,
  ) async {
    final _response = await ApiService.post(
      removeProductVariationApi,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
        "variation_id": variationId,
      },
    );

    debugPrint("Response: ${_response.toString()}");
  }

  Future<ProductVariationResponse> createProductVariation({
    String? productId,
    String? regularPrice,
    String? color,
    String? size,
  }) async {
    final _response = await ApiService.post(
      createProductVariationApi,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
        "product_id": productId,
        "regular_price": regularPrice,
        "variation": {
          "color": color,
          "size": size,
        },
      },
    );

    return ProductVariationResponse.fromJson(_response);
  }

  Future<dynamic> updateProductInfo(Map<String, dynamic> map) async {
    final _response = await ApiService.post(
      updateProductApi,
      _dio,
      body: map,
    );
    log('SERVER RESPONSE :: '+_response.toString());
    return _response;
  }

  Future<List<ProductModel>> searchProducts(String? query) async {
    final _response = await ApiService.post(
      searchProductApi,
      _dio,
      body: {"cookie": AuthDb.getAuthCookie()?.cookie, "search": query},
    );

    List<dynamic> _products = _response["data"] ?? [];
    debugPrint("Products: $_products");

    return _products.map((data) => ProductModel.fromJson(data)).toList();
  }

  Future<dynamic> removeProduct(int? productId) async {
    final _response = await ApiService.post(
      deleteProductApi,
      _dio,
      body: {"cookie": AuthDb.getAuthCookie()?.cookie, "product_id": productId},
    );
    return _response;
  }

  Future<dynamic> saveProductAttributes(Map<String, Object> body) async {
    final _response = await ApiService.post(
      saveProductAttributeApi,
      _dio,
      body: body,
    );
    return _response;
  }
}
