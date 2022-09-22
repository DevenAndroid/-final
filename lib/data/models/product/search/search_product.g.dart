// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchProduct _$$_SearchProductFromJson(Map<String, dynamic> json) =>
    _$_SearchProduct(
      id: json['id'] as int?,
      name: json['name'],
      type: json['type'],
      description: json['description'],
      imageUrl: json['image_url'],
      price: json['price'],
      priceHtml: json['price_html'],
      salePrice: json['sale_price'],
      regularPrice: json['regular_price'],
      quantity: json['stock_quantity'],
    );

Map<String, dynamic> _$$_SearchProductToJson(_$_SearchProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'price_html': instance.priceHtml,
      'sale_price': instance.salePrice,
      'regular_price': instance.regularPrice,
      'stock_quantity': instance.quantity,
    };
