import 'package:freezed_annotation/freezed_annotation.dart';

import 'available_variations/product_available_variation.dart';
import 'category/category.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") dynamic title,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "description") dynamic description,
    @JsonKey(name: "featured_src") dynamic imageUrl,
    @JsonKey(name: "price") dynamic price,
    @JsonKey(name: "price_html") dynamic priceHtml,
    @JsonKey(name: "sale_price") dynamic salePrice,
    @JsonKey(name: "regular_price") dynamic regularPrice,
    @JsonKey(name: "stock_quantity") dynamic quantity,
    @JsonKey(name: "tax_status") dynamic taxStatus,
    @JsonKey(name: "tax_class") dynamic taxClass,
    @JsonKey(name: "categories") List<ProductCategory>? categories,
    @JsonKey(name: "shipping_class") String? shippingClass,
    @JsonKey(name: 'min_price') String? minPrice,
    @JsonKey(name: 'max_price') String? maxPrice,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
