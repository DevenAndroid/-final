// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_available_variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductAvailableVariation _$$_ProductAvailableVariationFromJson(
        Map<String, dynamic> json) =>
    _$_ProductAvailableVariation(
      success: json['success'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ProductAvailableVariationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductAvailableVariationToJson(
        _$_ProductAvailableVariation instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$_ProductAvailableVariationItem _$$_ProductAvailableVariationItemFromJson(
        Map<String, dynamic> json) =>
    _$_ProductAvailableVariationItem(
      attribute: json['attributes'] == null
          ? null
          : ProductAvailableVariationAttribute.fromJson(
              json['attributes'] as Map<String, dynamic>),
      regularPrice: json['display_regular_price'] as int?,
      displayPrice: json['display_price'] as int?,
      image: json['image'] == null
          ? null
          : ProductAvailableVariationItemImage.fromJson(
              json['image'] as Map<String, dynamic>),
      maxQty: json['max_qty'] as int?,
      minQty: json['min_qty'] as int?,
      sku: json['sku'] as String?,
      variationId: json['variation_id'] as int?,
    );

Map<String, dynamic> _$$_ProductAvailableVariationItemToJson(
        _$_ProductAvailableVariationItem instance) =>
    <String, dynamic>{
      'attributes': instance.attribute,
      'display_regular_price': instance.regularPrice,
      'display_price': instance.displayPrice,
      'image': instance.image,
      'max_qty': instance.maxQty,
      'min_qty': instance.minQty,
      'sku': instance.sku,
      'variation_id': instance.variationId,
    };

_$_ProductAvailableVariationItemImage
    _$$_ProductAvailableVariationItemImageFromJson(Map<String, dynamic> json) =>
        _$_ProductAvailableVariationItemImage(
          src: json['src'] as String?,
        );

Map<String, dynamic> _$$_ProductAvailableVariationItemImageToJson(
        _$_ProductAvailableVariationItemImage instance) =>
    <String, dynamic>{
      'src': instance.src,
    };

_$_ProductAvailableVariationAttribute
    _$$_ProductAvailableVariationAttributeFromJson(Map<String, dynamic> json) =>
        _$_ProductAvailableVariationAttribute(
          color: json['attribute_pa_color'] as String?,
          size: json['attribute_pa_size'] as String?,
        );

Map<String, dynamic> _$$_ProductAvailableVariationAttributeToJson(
        _$_ProductAvailableVariationAttribute instance) =>
    <String, dynamic>{
      'attribute_pa_color': instance.color,
      'attribute_pa_size': instance.size,
    };
