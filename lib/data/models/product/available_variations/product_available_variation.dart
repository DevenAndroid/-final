import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_available_variation.freezed.dart';
part 'product_available_variation.g.dart';

@freezed
class ProductAvailableVariation with _$ProductAvailableVariation {
  const ProductAvailableVariation._();

  factory ProductAvailableVariation({
    String? success,
    String? message,
    List<ProductAvailableVariationItem>? data,
  }) = _ProductAvailableVariation;

  factory ProductAvailableVariation.fromJson(Map<String, dynamic> json) =>
      _$ProductAvailableVariationFromJson(json);
}

@freezed
class ProductAvailableVariationItem with _$ProductAvailableVariationItem {
  const ProductAvailableVariationItem._();

  factory ProductAvailableVariationItem({
    @JsonKey(name: 'attributes') ProductAvailableVariationAttribute? attribute,
    @JsonKey(name: 'display_regular_price') int? regularPrice,
    @JsonKey(name: 'display_price') int? displayPrice,
    @JsonKey(name: 'image') ProductAvailableVariationItemImage? image,
    @JsonKey(name: 'max_qty') int? maxQty,
    @JsonKey(name: 'min_qty') int? minQty,
    @JsonKey(name: 'sku') String? sku,
    @JsonKey(name: 'variation_id') int? variationId,
  }) = _ProductAvailableVariationItem;

  factory ProductAvailableVariationItem.fromJson(Map<String, dynamic> json) =>
      _$ProductAvailableVariationItemFromJson(json);
}

@freezed
class ProductAvailableVariationItemImage
    with _$ProductAvailableVariationItemImage {
  const ProductAvailableVariationItemImage._();

  factory ProductAvailableVariationItemImage({
    @JsonKey(name: 'src') String? src,
  }) = _ProductAvailableVariationItemImage;

  factory ProductAvailableVariationItemImage.fromJson(
          Map<String, dynamic> json) =>
      _$ProductAvailableVariationItemImageFromJson(json);
}

@freezed
class ProductAvailableVariationAttribute
    with _$ProductAvailableVariationAttribute {
  const ProductAvailableVariationAttribute._();

  factory ProductAvailableVariationAttribute({
    @JsonKey(name: 'attribute_pa_color') String? color,
    @JsonKey(name: 'attribute_pa_size') String? size,
  }) = _ProductAvailableVariationAttribute;

  factory ProductAvailableVariationAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$ProductAvailableVariationAttributeFromJson(json);
}
