import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class ProductCategories with _$ProductCategories {
  const factory ProductCategories({
    @JsonKey(name: 'categories') List<ProductCategory>? categories,
  }) = _ProductCategories;

  factory ProductCategories.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoriesFromJson(json);
}

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    int? id,
    String? name,
    int? parent,
    String? description,
    String? display,
    String? image,
    @JsonKey(name: 'menu_order') int? menuOrder,
    int? count,
    bool? isSelected,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}
