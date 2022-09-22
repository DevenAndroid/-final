// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingClasses _$$_ShippingClassesFromJson(Map<String, dynamic> json) =>
    _$_ShippingClasses(
      status: json['status'] as String?,
      message: json['message'] as String?,
      shippingClass: (json['data'] as List<dynamic>?)
          ?.map((e) => ShippingClass.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShippingClassesToJson(_$_ShippingClasses instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.shippingClass,
    };

_$_ShippingClass _$$_ShippingClassFromJson(Map<String, dynamic> json) =>
    _$_ShippingClass(
      termId: json['term_id'],
      name: json['name'],
      slug: json['slug'],
      termGroup: json['term_group'],
      termTaxonomyId: json['term_taxonomy_id'],
      taxonomy: json['taxonomy'],
      description: json['description'],
      parent: json['parent'],
      count: json['count'],
      filter: json['filter'],
    );

Map<String, dynamic> _$$_ShippingClassToJson(_$_ShippingClass instance) =>
    <String, dynamic>{
      'term_id': instance.termId,
      'name': instance.name,
      'slug': instance.slug,
      'term_group': instance.termGroup,
      'term_taxonomy_id': instance.termTaxonomyId,
      'taxonomy': instance.taxonomy,
      'description': instance.description,
      'parent': instance.parent,
      'count': instance.count,
      'filter': instance.filter,
    };
