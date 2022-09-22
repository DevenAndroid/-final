import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variation.freezed.dart';
part 'variation.g.dart';

@freezed
class ProductVariation with _$ProductVariation {
  const ProductVariation._();

  const factory ProductVariation({
    @JsonKey(name: 'product_id') String? productId,
    @JsonKey(name: 'regular_price') String? regularPrice,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'stock_quantity') String? stockQuantity,
    @JsonKey(name: 'variation_id') String? variationId,
  }) = _ProductVariation;

  factory ProductVariation.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationFromJson(json);
}

@freezed
class ProductVariationResponse with _$ProductVariationResponse {
  const factory ProductVariationResponse({
    String? status,
    String? message,
    @JsonKey(name: 'data') ProductVariationBody? data,
  }) = _ProductVariationResponse;

  factory ProductVariationResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationResponseFromJson(json);
}

@freezed
class ProductVariationBody with _$ProductVariationBody {
  const factory ProductVariationBody({
    @JsonKey(name: 'product_id') String? productId,
    @JsonKey(name: 'variations') ProductVariationData? variations,
  }) = _ProductVariationBody;

  factory ProductVariationBody.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationBodyFromJson(json);
}

@freezed
class ProductVariationData with _$ProductVariationData {
  const factory ProductVariationData({
    @JsonKey(name: 'variation_id') dynamic variationId,
    @JsonKey(name: 'attributes') ProductVariationAttributeData? attributes,
    @JsonKey(name: 'regular_price') dynamic regularPrice,
    @JsonKey(name: 'stock_qty') dynamic stockQty,
    @JsonKey(name: 'sku') dynamic sku,
    @JsonKey(name: 'image') dynamic image,
  }) = _ProductVariationData;

  factory ProductVariationData.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationDataFromJson(json);
}

@freezed
class ProductVariationAttributeData with _$ProductVariationAttributeData {
  const factory ProductVariationAttributeData({
    String? color,
    String? size,
  }) = _ProductVariationAttributeData;

  factory ProductVariationAttributeData.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationAttributeDataFromJson(json);
}
