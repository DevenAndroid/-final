// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: 'max_price') String? maxPrice}) {
    return _ProductModel(
      id: id,
      title: title,
      type: type,
      description: description,
      imageUrl: imageUrl,
      price: price,
      priceHtml: priceHtml,
      salePrice: salePrice,
      regularPrice: regularPrice,
      quantity: quantity,
      taxStatus: taxStatus,
      taxClass: taxClass,
      categories: categories,
      shippingClass: shippingClass,
      minPrice: minPrice,
      maxPrice: maxPrice,
    );
  }

  ProductModel fromJson(Map<String, Object?> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  dynamic get title => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: "featured_src")
  dynamic get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  dynamic get price => throw _privateConstructorUsedError;
  @JsonKey(name: "price_html")
  dynamic get priceHtml => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  dynamic get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_price")
  dynamic get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_quantity")
  dynamic get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_status")
  dynamic get taxStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_class")
  dynamic get taxClass => throw _privateConstructorUsedError;
  @JsonKey(name: "categories")
  List<ProductCategory>? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_class")
  String? get shippingClass => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_price')
  String? get minPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_price')
  String? get maxPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: 'max_price') String? maxPrice});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? priceHtml = freezed,
    Object? salePrice = freezed,
    Object? regularPrice = freezed,
    Object? quantity = freezed,
    Object? taxStatus = freezed,
    Object? taxClass = freezed,
    Object? categories = freezed,
    Object? shippingClass = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priceHtml: priceHtml == freezed
          ? _value.priceHtml
          : priceHtml // ignore: cast_nullable_to_non_nullable
              as dynamic,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxStatus: taxStatus == freezed
          ? _value.taxStatus
          : taxStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxClass: taxClass == freezed
          ? _value.taxClass
          : taxClass // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
      shippingClass: shippingClass == freezed
          ? _value.shippingClass
          : shippingClass // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPrice: maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: 'max_price') String? maxPrice});
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? priceHtml = freezed,
    Object? salePrice = freezed,
    Object? regularPrice = freezed,
    Object? quantity = freezed,
    Object? taxStatus = freezed,
    Object? taxClass = freezed,
    Object? categories = freezed,
    Object? shippingClass = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
  }) {
    return _then(_ProductModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      priceHtml: priceHtml == freezed
          ? _value.priceHtml
          : priceHtml // ignore: cast_nullable_to_non_nullable
              as dynamic,
      salePrice: salePrice == freezed
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxStatus: taxStatus == freezed
          ? _value.taxStatus
          : taxStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxClass: taxClass == freezed
          ? _value.taxClass
          : taxClass // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
      shippingClass: shippingClass == freezed
          ? _value.shippingClass
          : shippingClass // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPrice: maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel extends _ProductModel {
  const _$_ProductModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "featured_src") this.imageUrl,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "price_html") this.priceHtml,
      @JsonKey(name: "sale_price") this.salePrice,
      @JsonKey(name: "regular_price") this.regularPrice,
      @JsonKey(name: "stock_quantity") this.quantity,
      @JsonKey(name: "tax_status") this.taxStatus,
      @JsonKey(name: "tax_class") this.taxClass,
      @JsonKey(name: "categories") this.categories,
      @JsonKey(name: "shipping_class") this.shippingClass,
      @JsonKey(name: 'min_price') this.minPrice,
      @JsonKey(name: 'max_price') this.maxPrice})
      : super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "title")
  final dynamic title;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "description")
  final dynamic description;
  @override
  @JsonKey(name: "featured_src")
  final dynamic imageUrl;
  @override
  @JsonKey(name: "price")
  final dynamic price;
  @override
  @JsonKey(name: "price_html")
  final dynamic priceHtml;
  @override
  @JsonKey(name: "sale_price")
  final dynamic salePrice;
  @override
  @JsonKey(name: "regular_price")
  final dynamic regularPrice;
  @override
  @JsonKey(name: "stock_quantity")
  final dynamic quantity;
  @override
  @JsonKey(name: "tax_status")
  final dynamic taxStatus;
  @override
  @JsonKey(name: "tax_class")
  final dynamic taxClass;
  @override
  @JsonKey(name: "categories")
  final List<ProductCategory>? categories;
  @override
  @JsonKey(name: "shipping_class")
  final String? shippingClass;
  @override
  @JsonKey(name: 'min_price')
  final String? minPrice;
  @override
  @JsonKey(name: 'max_price')
  final String? maxPrice;

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, type: $type, description: $description, imageUrl: $imageUrl, price: $price, priceHtml: $priceHtml, salePrice: $salePrice, regularPrice: $regularPrice, quantity: $quantity, taxStatus: $taxStatus, taxClass: $taxClass, categories: $categories, shippingClass: $shippingClass, minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.priceHtml, priceHtml) &&
            const DeepCollectionEquality().equals(other.salePrice, salePrice) &&
            const DeepCollectionEquality()
                .equals(other.regularPrice, regularPrice) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.taxStatus, taxStatus) &&
            const DeepCollectionEquality().equals(other.taxClass, taxClass) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.shippingClass, shippingClass) &&
            const DeepCollectionEquality().equals(other.minPrice, minPrice) &&
            const DeepCollectionEquality().equals(other.maxPrice, maxPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(priceHtml),
      const DeepCollectionEquality().hash(salePrice),
      const DeepCollectionEquality().hash(regularPrice),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(taxStatus),
      const DeepCollectionEquality().hash(taxClass),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(shippingClass),
      const DeepCollectionEquality().hash(minPrice),
      const DeepCollectionEquality().hash(maxPrice));

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(this);
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: 'max_price') String? maxPrice}) = _$_ProductModel;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "title")
  dynamic get title;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @JsonKey(name: "featured_src")
  dynamic get imageUrl;
  @override
  @JsonKey(name: "price")
  dynamic get price;
  @override
  @JsonKey(name: "price_html")
  dynamic get priceHtml;
  @override
  @JsonKey(name: "sale_price")
  dynamic get salePrice;
  @override
  @JsonKey(name: "regular_price")
  dynamic get regularPrice;
  @override
  @JsonKey(name: "stock_quantity")
  dynamic get quantity;
  @override
  @JsonKey(name: "tax_status")
  dynamic get taxStatus;
  @override
  @JsonKey(name: "tax_class")
  dynamic get taxClass;
  @override
  @JsonKey(name: "categories")
  List<ProductCategory>? get categories;
  @override
  @JsonKey(name: "shipping_class")
  String? get shippingClass;
  @override
  @JsonKey(name: 'min_price')
  String? get minPrice;
  @override
  @JsonKey(name: 'max_price')
  String? get maxPrice;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
