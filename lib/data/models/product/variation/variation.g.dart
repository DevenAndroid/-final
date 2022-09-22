// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductVariation _$$_ProductVariationFromJson(Map<String, dynamic> json) =>
    _$_ProductVariation(
      productId: json['product_id'] as String?,
      regularPrice: json['regular_price'] as String?,
      price: json['price'] as String?,
      stockQuantity: json['stock_quantity'] as String?,
      variationId: json['variation_id'] as String?,
    );

Map<String, dynamic> _$$_ProductVariationToJson(_$_ProductVariation instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'regular_price': instance.regularPrice,
      'price': instance.price,
      'stock_quantity': instance.stockQuantity,
      'variation_id': instance.variationId,
    };

_$_ProductVariationResponse _$$_ProductVariationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductVariationResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductVariationBody.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductVariationResponseToJson(
        _$_ProductVariationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_ProductVariationBody _$$_ProductVariationBodyFromJson(
        Map<String, dynamic> json) =>
    _$_ProductVariationBody(
      productId: json['product_id'] as String?,
      variations: json['variations'] == null
          ? null
          : ProductVariationData.fromJson(
              json['variations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductVariationBodyToJson(
        _$_ProductVariationBody instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'variations': instance.variations,
    };

_$_ProductVariationData _$$_ProductVariationDataFromJson(
        Map<String, dynamic> json) =>
    _$_ProductVariationData(
      variationId: json['variation_id'],
      attributes: json['attributes'] == null
          ? null
          : ProductVariationAttributeData.fromJson(
              json['attributes'] as Map<String, dynamic>),
      regularPrice: json['regular_price'],
      stockQty: json['stock_qty'],
      sku: json['sku'],
      image: json['image'],
    );

Map<String, dynamic> _$$_ProductVariationDataToJson(
        _$_ProductVariationData instance) =>
    <String, dynamic>{
      'variation_id': instance.variationId,
      'attributes': instance.attributes,
      'regular_price': instance.regularPrice,
      'stock_qty': instance.stockQty,
      'sku': instance.sku,
      'image': instance.image,
    };

_$_ProductVariationAttributeData _$$_ProductVariationAttributeDataFromJson(
        Map<String, dynamic> json) =>
    _$_ProductVariationAttributeData(
      color: json['color'] as String?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$$_ProductVariationAttributeDataToJson(
        _$_ProductVariationAttributeData instance) =>
    <String, dynamic>{
      'color': instance.color,
      'size': instance.size,
    };
