import 'package:freezed_annotation/freezed_annotation.dart';

part 'variation_attr.freezed.dart';
part 'variation_attr.g.dart';

@freezed
class VariationAttributes with _$VariationAttributes {
  const factory VariationAttributes({
    String? status,
    String? message,
    List<Attributes>? data,
  }) = _VariationAttributes;

  factory VariationAttributes.fromJson(Map<String, dynamic> json) =>
      _$VariationAttributesFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    @JsonKey(name: 'color') List<VariationAttribute>? colors,
    @JsonKey(name: 'size') List<VariationAttribute>? sizes,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class VariationAttribute with _$VariationAttribute {
  const factory VariationAttribute({
    String? name,
    String? slug,
    @JsonKey(defaultValue: false) bool? isSelected,
  }) = _VariationAttribute;

  factory VariationAttribute.fromJson(Map<String, dynamic> json) =>
      _$VariationAttributeFromJson(json);
}
