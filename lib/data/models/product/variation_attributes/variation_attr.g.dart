// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation_attr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariationAttributes _$$_VariationAttributesFromJson(
        Map<String, dynamic> json) =>
    _$_VariationAttributes(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Attributes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VariationAttributesToJson(
        _$_VariationAttributes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_Attributes _$$_AttributesFromJson(Map<String, dynamic> json) =>
    _$_Attributes(
      colors: (json['color'] as List<dynamic>?)
          ?.map((e) => VariationAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      sizes: (json['size'] as List<dynamic>?)
          ?.map((e) => VariationAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttributesToJson(_$_Attributes instance) =>
    <String, dynamic>{
      'color': instance.colors,
      'size': instance.sizes,
    };

_$_VariationAttribute _$$_VariationAttributeFromJson(
        Map<String, dynamic> json) =>
    _$_VariationAttribute(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VariationAttributeToJson(
        _$_VariationAttribute instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'isSelected': instance.isSelected,
    };
