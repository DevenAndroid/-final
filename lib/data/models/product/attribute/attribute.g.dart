// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductAttributes _$$_ProductAttributesFromJson(Map<String, dynamic> json) =>
    _$_ProductAttributes(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductAttribute.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductAttributesToJson(
        _$_ProductAttributes instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_ProductAttribute _$$_ProductAttributeFromJson(Map<String, dynamic> json) =>
    _$_ProductAttribute(
      colors:
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sizes: (json['size'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductAttributeToJson(_$_ProductAttribute instance) =>
    <String, dynamic>{
      'color': instance.colors,
      'size': instance.sizes,
    };
