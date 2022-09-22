import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_product.freezed.dart';
part 'create_product.g.dart';

@freezed
class CreateProductModel with _$CreateProductModel {
  const factory CreateProductModel({
    String? cookie,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "product_type") String? productType,
    @JsonKey(name: "product_price") String? productPrice,
    @JsonKey(name: "product_description") String? productDescription,
    @JsonKey(name: "categories") String? categories,
    @JsonKey(name: "product_image") String? productImage,
    @JsonKey(name: "sku") String? sku,
    @JsonKey(name: "product_gallery") List<ProductGallery>? productGallery,
  }) = _CreateProductModel;

  factory CreateProductModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProductModelFromJson(json);
}

@freezed
class ProductGallery with _$ProductGallery {
  const factory ProductGallery({
    @JsonKey(name: "base64_img") String? base64Img,
  }) = _ProductGallery;

  factory ProductGallery.fromJson(Map<String, dynamic> json) =>
      _$ProductGalleryFromJson(json);
}
