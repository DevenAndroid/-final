// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProductModel _$$_CreateProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateProductModel(
      cookie: json['cookie'] as String?,
      productName: json['product_name'] as String?,
      productType: json['product_type'] as String?,
      productPrice: json['product_price'] as String?,
      productDescription: json['product_description'] as String?,
      categories: json['categories'] as String?,
      productImage: json['product_image'] as String?,
      sku: json['sku'] as String?,
      productGallery: (json['product_gallery'] as List<dynamic>?)
          ?.map((e) => ProductGallery.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreateProductModelToJson(
        _$_CreateProductModel instance) =>
    <String, dynamic>{
      'cookie': instance.cookie,
      'product_name': instance.productName,
      'product_type': instance.productType,
      'product_price': instance.productPrice,
      'product_description': instance.productDescription,
      'categories': instance.categories,
      'product_image': instance.productImage,
      'sku': instance.sku,
      'product_gallery': instance.productGallery,
    };

_$_ProductGallery _$$_ProductGalleryFromJson(Map<String, dynamic> json) =>
    _$_ProductGallery(
      base64Img: json['base64_img'] as String?,
    );

Map<String, dynamic> _$$_ProductGalleryToJson(_$_ProductGallery instance) =>
    <String, dynamic>{
      'base64_img': instance.base64Img,
    };
