import 'package:freezed_annotation/freezed_annotation.dart';

part 'attribute.freezed.dart';
part 'attribute.g.dart';

@freezed
class ProductAttributes with _$ProductAttributes {
  const factory ProductAttributes({
    String? status,
    String? message,
    ProductAttribute? data,
  }) = _ProductAttributes;

  factory ProductAttributes.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributesFromJson(json);
}

@freezed
class ProductAttribute with _$ProductAttribute {
  const factory ProductAttribute({
    @JsonKey(name: 'color') List<String>? colors,
    @JsonKey(name: 'size') List<String>? sizes,
  }) = _ProductAttribute;

  factory ProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeFromJson(json);
}
