import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_product.freezed.dart';
part 'search_product.g.dart';

@freezed
class SearchProduct with _$SearchProduct {
  const factory SearchProduct({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") dynamic name,
    @JsonKey(name: "type") dynamic type,
    @JsonKey(name: "description") dynamic description,
    @JsonKey(name: "image_url") dynamic imageUrl,
    @JsonKey(name: "price") dynamic price,
    @JsonKey(name: "price_html") dynamic priceHtml,
    @JsonKey(name: "sale_price") dynamic salePrice,
    @JsonKey(name: "regular_price") dynamic regularPrice,
    @JsonKey(name: "stock_quantity") dynamic quantity,
  }) = _SearchProduct;

  factory SearchProduct.fromJson(Map<String, dynamic> json) =>
      _$SearchProductFromJson(json);
}
