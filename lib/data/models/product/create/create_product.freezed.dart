// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProductModel _$CreateProductModelFromJson(Map<String, dynamic> json) {
  return _CreateProductModel.fromJson(json);
}

/// @nodoc
class _$CreateProductModelTearOff {
  const _$CreateProductModelTearOff();

  _CreateProductModel call(
      {String? cookie,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "product_type") String? productType,
      @JsonKey(name: "product_price") String? productPrice,
      @JsonKey(name: "product_description") String? productDescription,
      @JsonKey(name: "categories") String? categories,
      @JsonKey(name: "product_image") String? productImage,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "product_gallery") List<ProductGallery>? productGallery}) {
    return _CreateProductModel(
      cookie: cookie,
      productName: productName,
      productType: productType,
      productPrice: productPrice,
      productDescription: productDescription,
      categories: categories,
      productImage: productImage,
      sku: sku,
      productGallery: productGallery,
    );
  }

  CreateProductModel fromJson(Map<String, Object?> json) {
    return CreateProductModel.fromJson(json);
  }
}

/// @nodoc
const $CreateProductModel = _$CreateProductModelTearOff();

/// @nodoc
mixin _$CreateProductModel {
  String? get cookie => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_type")
  String? get productType => throw _privateConstructorUsedError;
  @JsonKey(name: "product_price")
  String? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "product_description")
  String? get productDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "categories")
  String? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "product_image")
  String? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "product_gallery")
  List<ProductGallery>? get productGallery =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProductModelCopyWith<CreateProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductModelCopyWith<$Res> {
  factory $CreateProductModelCopyWith(
          CreateProductModel value, $Res Function(CreateProductModel) then) =
      _$CreateProductModelCopyWithImpl<$Res>;
  $Res call(
      {String? cookie,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "product_type") String? productType,
      @JsonKey(name: "product_price") String? productPrice,
      @JsonKey(name: "product_description") String? productDescription,
      @JsonKey(name: "categories") String? categories,
      @JsonKey(name: "product_image") String? productImage,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "product_gallery") List<ProductGallery>? productGallery});
}

/// @nodoc
class _$CreateProductModelCopyWithImpl<$Res>
    implements $CreateProductModelCopyWith<$Res> {
  _$CreateProductModelCopyWithImpl(this._value, this._then);

  final CreateProductModel _value;
  // ignore: unused_field
  final $Res Function(CreateProductModel) _then;

  @override
  $Res call({
    Object? cookie = freezed,
    Object? productName = freezed,
    Object? productType = freezed,
    Object? productPrice = freezed,
    Object? productDescription = freezed,
    Object? categories = freezed,
    Object? productImage = freezed,
    Object? sku = freezed,
    Object? productGallery = freezed,
  }) {
    return _then(_value.copyWith(
      cookie: cookie == freezed
          ? _value.cookie
          : cookie // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: productPrice == freezed
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: productDescription == freezed
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: productImage == freezed
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      productGallery: productGallery == freezed
          ? _value.productGallery
          : productGallery // ignore: cast_nullable_to_non_nullable
              as List<ProductGallery>?,
    ));
  }
}

/// @nodoc
abstract class _$CreateProductModelCopyWith<$Res>
    implements $CreateProductModelCopyWith<$Res> {
  factory _$CreateProductModelCopyWith(
          _CreateProductModel value, $Res Function(_CreateProductModel) then) =
      __$CreateProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? cookie,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "product_type") String? productType,
      @JsonKey(name: "product_price") String? productPrice,
      @JsonKey(name: "product_description") String? productDescription,
      @JsonKey(name: "categories") String? categories,
      @JsonKey(name: "product_image") String? productImage,
      @JsonKey(name: "sku") String? sku,
      @JsonKey(name: "product_gallery") List<ProductGallery>? productGallery});
}

/// @nodoc
class __$CreateProductModelCopyWithImpl<$Res>
    extends _$CreateProductModelCopyWithImpl<$Res>
    implements _$CreateProductModelCopyWith<$Res> {
  __$CreateProductModelCopyWithImpl(
      _CreateProductModel _value, $Res Function(_CreateProductModel) _then)
      : super(_value, (v) => _then(v as _CreateProductModel));

  @override
  _CreateProductModel get _value => super._value as _CreateProductModel;

  @override
  $Res call({
    Object? cookie = freezed,
    Object? productName = freezed,
    Object? productType = freezed,
    Object? productPrice = freezed,
    Object? productDescription = freezed,
    Object? categories = freezed,
    Object? productImage = freezed,
    Object? sku = freezed,
    Object? productGallery = freezed,
  }) {
    return _then(_CreateProductModel(
      cookie: cookie == freezed
          ? _value.cookie
          : cookie // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: productPrice == freezed
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: productDescription == freezed
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: productImage == freezed
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      productGallery: productGallery == freezed
          ? _value.productGallery
          : productGallery // ignore: cast_nullable_to_non_nullable
              as List<ProductGallery>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProductModel implements _CreateProductModel {
  const _$_CreateProductModel(
      {this.cookie,
      @JsonKey(name: "product_name") this.productName,
      @JsonKey(name: "product_type") this.productType,
      @JsonKey(name: "product_price") this.productPrice,
      @JsonKey(name: "product_description") this.productDescription,
      @JsonKey(name: "categories") this.categories,
      @JsonKey(name: "product_image") this.productImage,
      @JsonKey(name: "sku") this.sku,
      @JsonKey(name: "product_gallery") this.productGallery});

  factory _$_CreateProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateProductModelFromJson(json);

  @override
  final String? cookie;
  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "product_type")
  final String? productType;
  @override
  @JsonKey(name: "product_price")
  final String? productPrice;
  @override
  @JsonKey(name: "product_description")
  final String? productDescription;
  @override
  @JsonKey(name: "categories")
  final String? categories;
  @override
  @JsonKey(name: "product_image")
  final String? productImage;
  @override
  @JsonKey(name: "sku")
  final String? sku;
  @override
  @JsonKey(name: "product_gallery")
  final List<ProductGallery>? productGallery;

  @override
  String toString() {
    return 'CreateProductModel(cookie: $cookie, productName: $productName, productType: $productType, productPrice: $productPrice, productDescription: $productDescription, categories: $categories, productImage: $productImage, sku: $sku, productGallery: $productGallery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductModel &&
            const DeepCollectionEquality().equals(other.cookie, cookie) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality()
                .equals(other.productType, productType) &&
            const DeepCollectionEquality()
                .equals(other.productPrice, productPrice) &&
            const DeepCollectionEquality()
                .equals(other.productDescription, productDescription) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.productImage, productImage) &&
            const DeepCollectionEquality().equals(other.sku, sku) &&
            const DeepCollectionEquality()
                .equals(other.productGallery, productGallery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cookie),
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(productType),
      const DeepCollectionEquality().hash(productPrice),
      const DeepCollectionEquality().hash(productDescription),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(productImage),
      const DeepCollectionEquality().hash(sku),
      const DeepCollectionEquality().hash(productGallery));

  @JsonKey(ignore: true)
  @override
  _$CreateProductModelCopyWith<_CreateProductModel> get copyWith =>
      __$CreateProductModelCopyWithImpl<_CreateProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateProductModelToJson(this);
  }
}

abstract class _CreateProductModel implements CreateProductModel {
  const factory _CreateProductModel(
      {String? cookie,
      @JsonKey(name: "product_name")
          String? productName,
      @JsonKey(name: "product_type")
          String? productType,
      @JsonKey(name: "product_price")
          String? productPrice,
      @JsonKey(name: "product_description")
          String? productDescription,
      @JsonKey(name: "categories")
          String? categories,
      @JsonKey(name: "product_image")
          String? productImage,
      @JsonKey(name: "sku")
          String? sku,
      @JsonKey(name: "product_gallery")
          List<ProductGallery>? productGallery}) = _$_CreateProductModel;

  factory _CreateProductModel.fromJson(Map<String, dynamic> json) =
      _$_CreateProductModel.fromJson;

  @override
  String? get cookie;
  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "product_type")
  String? get productType;
  @override
  @JsonKey(name: "product_price")
  String? get productPrice;
  @override
  @JsonKey(name: "product_description")
  String? get productDescription;
  @override
  @JsonKey(name: "categories")
  String? get categories;
  @override
  @JsonKey(name: "product_image")
  String? get productImage;
  @override
  @JsonKey(name: "sku")
  String? get sku;
  @override
  @JsonKey(name: "product_gallery")
  List<ProductGallery>? get productGallery;
  @override
  @JsonKey(ignore: true)
  _$CreateProductModelCopyWith<_CreateProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductGallery _$ProductGalleryFromJson(Map<String, dynamic> json) {
  return _ProductGallery.fromJson(json);
}

/// @nodoc
class _$ProductGalleryTearOff {
  const _$ProductGalleryTearOff();

  _ProductGallery call({@JsonKey(name: "base64_img") String? base64Img}) {
    return _ProductGallery(
      base64Img: base64Img,
    );
  }

  ProductGallery fromJson(Map<String, Object?> json) {
    return ProductGallery.fromJson(json);
  }
}

/// @nodoc
const $ProductGallery = _$ProductGalleryTearOff();

/// @nodoc
mixin _$ProductGallery {
  @JsonKey(name: "base64_img")
  String? get base64Img => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductGalleryCopyWith<ProductGallery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductGalleryCopyWith<$Res> {
  factory $ProductGalleryCopyWith(
          ProductGallery value, $Res Function(ProductGallery) then) =
      _$ProductGalleryCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "base64_img") String? base64Img});
}

/// @nodoc
class _$ProductGalleryCopyWithImpl<$Res>
    implements $ProductGalleryCopyWith<$Res> {
  _$ProductGalleryCopyWithImpl(this._value, this._then);

  final ProductGallery _value;
  // ignore: unused_field
  final $Res Function(ProductGallery) _then;

  @override
  $Res call({
    Object? base64Img = freezed,
  }) {
    return _then(_value.copyWith(
      base64Img: base64Img == freezed
          ? _value.base64Img
          : base64Img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductGalleryCopyWith<$Res>
    implements $ProductGalleryCopyWith<$Res> {
  factory _$ProductGalleryCopyWith(
          _ProductGallery value, $Res Function(_ProductGallery) then) =
      __$ProductGalleryCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "base64_img") String? base64Img});
}

/// @nodoc
class __$ProductGalleryCopyWithImpl<$Res>
    extends _$ProductGalleryCopyWithImpl<$Res>
    implements _$ProductGalleryCopyWith<$Res> {
  __$ProductGalleryCopyWithImpl(
      _ProductGallery _value, $Res Function(_ProductGallery) _then)
      : super(_value, (v) => _then(v as _ProductGallery));

  @override
  _ProductGallery get _value => super._value as _ProductGallery;

  @override
  $Res call({
    Object? base64Img = freezed,
  }) {
    return _then(_ProductGallery(
      base64Img: base64Img == freezed
          ? _value.base64Img
          : base64Img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductGallery implements _ProductGallery {
  const _$_ProductGallery({@JsonKey(name: "base64_img") this.base64Img});

  factory _$_ProductGallery.fromJson(Map<String, dynamic> json) =>
      _$$_ProductGalleryFromJson(json);

  @override
  @JsonKey(name: "base64_img")
  final String? base64Img;

  @override
  String toString() {
    return 'ProductGallery(base64Img: $base64Img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductGallery &&
            const DeepCollectionEquality().equals(other.base64Img, base64Img));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(base64Img));

  @JsonKey(ignore: true)
  @override
  _$ProductGalleryCopyWith<_ProductGallery> get copyWith =>
      __$ProductGalleryCopyWithImpl<_ProductGallery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductGalleryToJson(this);
  }
}

abstract class _ProductGallery implements ProductGallery {
  const factory _ProductGallery(
      {@JsonKey(name: "base64_img") String? base64Img}) = _$_ProductGallery;

  factory _ProductGallery.fromJson(Map<String, dynamic> json) =
      _$_ProductGallery.fromJson;

  @override
  @JsonKey(name: "base64_img")
  String? get base64Img;
  @override
  @JsonKey(ignore: true)
  _$ProductGalleryCopyWith<_ProductGallery> get copyWith =>
      throw _privateConstructorUsedError;
}
