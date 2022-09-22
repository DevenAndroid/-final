// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      title: json['title'],
      type: json['type'] as String?,
      description: json['description'],
      imageUrl: json['featured_src'],
      price: json['price'],
      priceHtml: json['price_html'],
      salePrice: json['sale_price'],
      regularPrice: json['regular_price'],
      quantity: json['stock_quantity'],
      taxStatus: json['tax_status'],
      taxClass: json['tax_class'],
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingClass: json['shipping_class'] as String?,
      minPrice: json['min_price'] as String?,
      maxPrice: json['max_price'] as String?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'description': instance.description,
      'featured_src': instance.imageUrl,
      'price': instance.price,
      'price_html': instance.priceHtml,
      'sale_price': instance.salePrice,
      'regular_price': instance.regularPrice,
      'stock_quantity': instance.quantity,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'categories': instance.categories,
      'shipping_class': instance.shippingClass,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
    };
