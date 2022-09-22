// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCategories _$$_ProductCategoriesFromJson(Map<String, dynamic> json) =>
    _$_ProductCategories(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductCategoriesToJson(
        _$_ProductCategories instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$_ProductCategory _$$_ProductCategoryFromJson(Map<String, dynamic> json) =>
    _$_ProductCategory(
      id: json['id'] as int?,
      name: json['name'] as String?,
      parent: json['parent'] as int?,
      description: json['description'] as String?,
      display: json['display'] as String?,
      image: json['image'] as String?,
      menuOrder: json['menu_order'] as int?,
      count: json['count'] as int?,
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$$_ProductCategoryToJson(_$_ProductCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent': instance.parent,
      'description': instance.description,
      'display': instance.display,
      'image': instance.image,
      'menu_order': instance.menuOrder,
      'count': instance.count,
      'isSelected': instance.isSelected,
    };
