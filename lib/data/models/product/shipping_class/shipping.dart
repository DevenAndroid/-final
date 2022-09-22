import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping.freezed.dart';
part 'shipping.g.dart';

@freezed
class ShippingClasses with _$ShippingClasses {
  const factory ShippingClasses({
    String? status,
    String? message,
    @JsonKey(name: 'data') List<ShippingClass>? shippingClass,
  }) = _ShippingClasses;

  factory ShippingClasses.fromJson(Map<String, dynamic> json) =>
      _$ShippingClassesFromJson(json);
}

@freezed
class ShippingClass with _$ShippingClass {
  const factory ShippingClass({
    @JsonKey(name: 'term_id') dynamic termId,
    dynamic name,
    dynamic slug,
    @JsonKey(name: 'term_group') dynamic termGroup,
    @JsonKey(name: 'term_taxonomy_id') dynamic termTaxonomyId,
    dynamic taxonomy,
    dynamic description,
    dynamic parent,
    dynamic count,
    dynamic filter,
  }) = _ShippingClass;

  factory ShippingClass.fromJson(Map<String, dynamic> json) => _$ShippingClassFromJson(json);
}
