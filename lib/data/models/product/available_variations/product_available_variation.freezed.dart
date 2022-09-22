// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_available_variation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductAvailableVariation _$ProductAvailableVariationFromJson(
    Map<String, dynamic> json) {
  return _ProductAvailableVariation.fromJson(json);
}

/// @nodoc
class _$ProductAvailableVariationTearOff {
  const _$ProductAvailableVariationTearOff();

  _ProductAvailableVariation call(
      {String? success,
      String? message,
      List<ProductAvailableVariationItem>? data}) {
    return _ProductAvailableVariation(
      success: success,
      message: message,
      data: data,
    );
  }

  ProductAvailableVariation fromJson(Map<String, Object?> json) {
    return ProductAvailableVariation.fromJson(json);
  }
}

/// @nodoc
const $ProductAvailableVariation = _$ProductAvailableVariationTearOff();

/// @nodoc
mixin _$ProductAvailableVariation {
  String? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ProductAvailableVariationItem>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAvailableVariationCopyWith<ProductAvailableVariation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAvailableVariationCopyWith<$Res> {
  factory $ProductAvailableVariationCopyWith(ProductAvailableVariation value,
          $Res Function(ProductAvailableVariation) then) =
      _$ProductAvailableVariationCopyWithImpl<$Res>;
  $Res call(
      {String? success,
      String? message,
      List<ProductAvailableVariationItem>? data});
}

/// @nodoc
class _$ProductAvailableVariationCopyWithImpl<$Res>
    implements $ProductAvailableVariationCopyWith<$Res> {
  _$ProductAvailableVariationCopyWithImpl(this._value, this._then);

  final ProductAvailableVariation _value;
  // ignore: unused_field
  final $Res Function(ProductAvailableVariation) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductAvailableVariationItem>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductAvailableVariationCopyWith<$Res>
    implements $ProductAvailableVariationCopyWith<$Res> {
  factory _$ProductAvailableVariationCopyWith(_ProductAvailableVariation value,
          $Res Function(_ProductAvailableVariation) then) =
      __$ProductAvailableVariationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? success,
      String? message,
      List<ProductAvailableVariationItem>? data});
}

/// @nodoc
class __$ProductAvailableVariationCopyWithImpl<$Res>
    extends _$ProductAvailableVariationCopyWithImpl<$Res>
    implements _$ProductAvailableVariationCopyWith<$Res> {
  __$ProductAvailableVariationCopyWithImpl(_ProductAvailableVariation _value,
      $Res Function(_ProductAvailableVariation) _then)
      : super(_value, (v) => _then(v as _ProductAvailableVariation));

  @override
  _ProductAvailableVariation get _value =>
      super._value as _ProductAvailableVariation;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ProductAvailableVariation(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductAvailableVariationItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductAvailableVariation extends _ProductAvailableVariation {
  _$_ProductAvailableVariation({this.success, this.message, this.data})
      : super._();

  factory _$_ProductAvailableVariation.fromJson(Map<String, dynamic> json) =>
      _$$_ProductAvailableVariationFromJson(json);

  @override
  final String? success;
  @override
  final String? message;
  @override
  final List<ProductAvailableVariationItem>? data;

  @override
  String toString() {
    return 'ProductAvailableVariation(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductAvailableVariation &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ProductAvailableVariationCopyWith<_ProductAvailableVariation>
      get copyWith =>
          __$ProductAvailableVariationCopyWithImpl<_ProductAvailableVariation>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAvailableVariationToJson(this);
  }
}

abstract class _ProductAvailableVariation extends ProductAvailableVariation {
  factory _ProductAvailableVariation(
          {String? success,
          String? message,
          List<ProductAvailableVariationItem>? data}) =
      _$_ProductAvailableVariation;
  _ProductAvailableVariation._() : super._();

  factory _ProductAvailableVariation.fromJson(Map<String, dynamic> json) =
      _$_ProductAvailableVariation.fromJson;

  @override
  String? get success;
  @override
  String? get message;
  @override
  List<ProductAvailableVariationItem>? get data;
  @override
  @JsonKey(ignore: true)
  _$ProductAvailableVariationCopyWith<_ProductAvailableVariation>
      get copyWith => throw _privateConstructorUsedError;
}

ProductAvailableVariationItem _$ProductAvailableVariationItemFromJson(
    Map<String, dynamic> json) {
  return _ProductAvailableVariationItem.fromJson(json);
}

/// @nodoc
class _$ProductAvailableVariationItemTearOff {
  const _$ProductAvailableVariationItemTearOff();

  _ProductAvailableVariationItem call(
      {@JsonKey(name: 'attributes')
          ProductAvailableVariationAttribute? attribute,
      @JsonKey(name: 'display_regular_price')
          int? regularPrice,
      @JsonKey(name: 'display_price')
          int? displayPrice,
      @JsonKey(name: 'image')
          ProductAvailableVariationItemImage? image,
      @JsonKey(name: 'max_qty')
          int? maxQty,
      @JsonKey(name: 'min_qty')
          int? minQty,
      @JsonKey(name: 'sku')
          String? sku,
      @JsonKey(name: 'variation_id')
          int? variationId}) {
    return _ProductAvailableVariationItem(
      attribute: attribute,
      regularPrice: regularPrice,
      displayPrice: displayPrice,
      image: image,
      maxQty: maxQty,
      minQty: minQty,
      sku: sku,
      variationId: variationId,
    );
  }

  ProductAvailableVariationItem fromJson(Map<String, Object?> json) {
    return ProductAvailableVariationItem.fromJson(json);
  }
}

/// @nodoc
const $ProductAvailableVariationItem = _$ProductAvailableVariationItemTearOff();

/// @nodoc
mixin _$ProductAvailableVariationItem {
  @JsonKey(name: 'attributes')
  ProductAvailableVariationAttribute? get attribute =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'display_regular_price')
  int? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_price')
  int? get displayPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  ProductAvailableVariationItemImage? get image =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'max_qty')
  int? get maxQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_qty')
  int? get minQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'variation_id')
  int? get variationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAvailableVariationItemCopyWith<ProductAvailableVariationItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAvailableVariationItemCopyWith<$Res> {
  factory $ProductAvailableVariationItemCopyWith(
          ProductAvailableVariationItem value,
          $Res Function(ProductAvailableVariationItem) then) =
      _$ProductAvailableVariationItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'attributes')
          ProductAvailableVariationAttribute? attribute,
      @JsonKey(name: 'display_regular_price')
          int? regularPrice,
      @JsonKey(name: 'display_price')
          int? displayPrice,
      @JsonKey(name: 'image')
          ProductAvailableVariationItemImage? image,
      @JsonKey(name: 'max_qty')
          int? maxQty,
      @JsonKey(name: 'min_qty')
          int? minQty,
      @JsonKey(name: 'sku')
          String? sku,
      @JsonKey(name: 'variation_id')
          int? variationId});

  $ProductAvailableVariationAttributeCopyWith<$Res>? get attribute;
  $ProductAvailableVariationItemImageCopyWith<$Res>? get image;
}

/// @nodoc
class _$ProductAvailableVariationItemCopyWithImpl<$Res>
    implements $ProductAvailableVariationItemCopyWith<$Res> {
  _$ProductAvailableVariationItemCopyWithImpl(this._value, this._then);

  final ProductAvailableVariationItem _value;
  // ignore: unused_field
  final $Res Function(ProductAvailableVariationItem) _then;

  @override
  $Res call({
    Object? attribute = freezed,
    Object? regularPrice = freezed,
    Object? displayPrice = freezed,
    Object? image = freezed,
    Object? maxQty = freezed,
    Object? minQty = freezed,
    Object? sku = freezed,
    Object? variationId = freezed,
  }) {
    return _then(_value.copyWith(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as ProductAvailableVariationAttribute?,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      displayPrice: displayPrice == freezed
          ? _value.displayPrice
          : displayPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ProductAvailableVariationItemImage?,
      maxQty: maxQty == freezed
          ? _value.maxQty
          : maxQty // ignore: cast_nullable_to_non_nullable
              as int?,
      minQty: minQty == freezed
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      variationId: variationId == freezed
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $ProductAvailableVariationAttributeCopyWith<$Res>? get attribute {
    if (_value.attribute == null) {
      return null;
    }

    return $ProductAvailableVariationAttributeCopyWith<$Res>(_value.attribute!,
        (value) {
      return _then(_value.copyWith(attribute: value));
    });
  }

  @override
  $ProductAvailableVariationItemImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ProductAvailableVariationItemImageCopyWith<$Res>(_value.image!,
        (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc
abstract class _$ProductAvailableVariationItemCopyWith<$Res>
    implements $ProductAvailableVariationItemCopyWith<$Res> {
  factory _$ProductAvailableVariationItemCopyWith(
          _ProductAvailableVariationItem value,
          $Res Function(_ProductAvailableVariationItem) then) =
      __$ProductAvailableVariationItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'attributes')
          ProductAvailableVariationAttribute? attribute,
      @JsonKey(name: 'display_regular_price')
          int? regularPrice,
      @JsonKey(name: 'display_price')
          int? displayPrice,
      @JsonKey(name: 'image')
          ProductAvailableVariationItemImage? image,
      @JsonKey(name: 'max_qty')
          int? maxQty,
      @JsonKey(name: 'min_qty')
          int? minQty,
      @JsonKey(name: 'sku')
          String? sku,
      @JsonKey(name: 'variation_id')
          int? variationId});

  @override
  $ProductAvailableVariationAttributeCopyWith<$Res>? get attribute;
  @override
  $ProductAvailableVariationItemImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$ProductAvailableVariationItemCopyWithImpl<$Res>
    extends _$ProductAvailableVariationItemCopyWithImpl<$Res>
    implements _$ProductAvailableVariationItemCopyWith<$Res> {
  __$ProductAvailableVariationItemCopyWithImpl(
      _ProductAvailableVariationItem _value,
      $Res Function(_ProductAvailableVariationItem) _then)
      : super(_value, (v) => _then(v as _ProductAvailableVariationItem));

  @override
  _ProductAvailableVariationItem get _value =>
      super._value as _ProductAvailableVariationItem;

  @override
  $Res call({
    Object? attribute = freezed,
    Object? regularPrice = freezed,
    Object? displayPrice = freezed,
    Object? image = freezed,
    Object? maxQty = freezed,
    Object? minQty = freezed,
    Object? sku = freezed,
    Object? variationId = freezed,
  }) {
    return _then(_ProductAvailableVariationItem(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as ProductAvailableVariationAttribute?,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      displayPrice: displayPrice == freezed
          ? _value.displayPrice
          : displayPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ProductAvailableVariationItemImage?,
      maxQty: maxQty == freezed
          ? _value.maxQty
          : maxQty // ignore: cast_nullable_to_non_nullable
              as int?,
      minQty: minQty == freezed
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      variationId: variationId == freezed
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductAvailableVariationItem extends _ProductAvailableVariationItem {
  _$_ProductAvailableVariationItem(
      {@JsonKey(name: 'attributes') this.attribute,
      @JsonKey(name: 'display_regular_price') this.regularPrice,
      @JsonKey(name: 'display_price') this.displayPrice,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'max_qty') this.maxQty,
      @JsonKey(name: 'min_qty') this.minQty,
      @JsonKey(name: 'sku') this.sku,
      @JsonKey(name: 'variation_id') this.variationId})
      : super._();

  factory _$_ProductAvailableVariationItem.fromJson(
          Map<String, dynamic> json) =>
      _$$_ProductAvailableVariationItemFromJson(json);

  @override
  @JsonKey(name: 'attributes')
  final ProductAvailableVariationAttribute? attribute;
  @override
  @JsonKey(name: 'display_regular_price')
  final int? regularPrice;
  @override
  @JsonKey(name: 'display_price')
  final int? displayPrice;
  @override
  @JsonKey(name: 'image')
  final ProductAvailableVariationItemImage? image;
  @override
  @JsonKey(name: 'max_qty')
  final int? maxQty;
  @override
  @JsonKey(name: 'min_qty')
  final int? minQty;
  @override
  @JsonKey(name: 'sku')
  final String? sku;
  @override
  @JsonKey(name: 'variation_id')
  final int? variationId;

  @override
  String toString() {
    return 'ProductAvailableVariationItem(attribute: $attribute, regularPrice: $regularPrice, displayPrice: $displayPrice, image: $image, maxQty: $maxQty, minQty: $minQty, sku: $sku, variationId: $variationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductAvailableVariationItem &&
            const DeepCollectionEquality().equals(other.attribute, attribute) &&
            const DeepCollectionEquality()
                .equals(other.regularPrice, regularPrice) &&
            const DeepCollectionEquality()
                .equals(other.displayPrice, displayPrice) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.maxQty, maxQty) &&
            const DeepCollectionEquality().equals(other.minQty, minQty) &&
            const DeepCollectionEquality().equals(other.sku, sku) &&
            const DeepCollectionEquality()
                .equals(other.variationId, variationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(attribute),
      const DeepCollectionEquality().hash(regularPrice),
      const DeepCollectionEquality().hash(displayPrice),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(maxQty),
      const DeepCollectionEquality().hash(minQty),
      const DeepCollectionEquality().hash(sku),
      const DeepCollectionEquality().hash(variationId));

  @JsonKey(ignore: true)
  @override
  _$ProductAvailableVariationItemCopyWith<_ProductAvailableVariationItem>
      get copyWith => __$ProductAvailableVariationItemCopyWithImpl<
          _ProductAvailableVariationItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAvailableVariationItemToJson(this);
  }
}

abstract class _ProductAvailableVariationItem
    extends ProductAvailableVariationItem {
  factory _ProductAvailableVariationItem(
      {@JsonKey(name: 'attributes')
          ProductAvailableVariationAttribute? attribute,
      @JsonKey(name: 'display_regular_price')
          int? regularPrice,
      @JsonKey(name: 'display_price')
          int? displayPrice,
      @JsonKey(name: 'image')
          ProductAvailableVariationItemImage? image,
      @JsonKey(name: 'max_qty')
          int? maxQty,
      @JsonKey(name: 'min_qty')
          int? minQty,
      @JsonKey(name: 'sku')
          String? sku,
      @JsonKey(name: 'variation_id')
          int? variationId}) = _$_ProductAvailableVariationItem;
  _ProductAvailableVariationItem._() : super._();

  factory _ProductAvailableVariationItem.fromJson(Map<String, dynamic> json) =
      _$_ProductAvailableVariationItem.fromJson;

  @override
  @JsonKey(name: 'attributes')
  ProductAvailableVariationAttribute? get attribute;
  @override
  @JsonKey(name: 'display_regular_price')
  int? get regularPrice;
  @override
  @JsonKey(name: 'display_price')
  int? get displayPrice;
  @override
  @JsonKey(name: 'image')
  ProductAvailableVariationItemImage? get image;
  @override
  @JsonKey(name: 'max_qty')
  int? get maxQty;
  @override
  @JsonKey(name: 'min_qty')
  int? get minQty;
  @override
  @JsonKey(name: 'sku')
  String? get sku;
  @override
  @JsonKey(name: 'variation_id')
  int? get variationId;
  @override
  @JsonKey(ignore: true)
  _$ProductAvailableVariationItemCopyWith<_ProductAvailableVariationItem>
      get copyWith => throw _privateConstructorUsedError;
}

ProductAvailableVariationItemImage _$ProductAvailableVariationItemImageFromJson(
    Map<String, dynamic> json) {
  return _ProductAvailableVariationItemImage.fromJson(json);
}

/// @nodoc
class _$ProductAvailableVariationItemImageTearOff {
  const _$ProductAvailableVariationItemImageTearOff();

  _ProductAvailableVariationItemImage call(
      {@JsonKey(name: 'src') String? src}) {
    return _ProductAvailableVariationItemImage(
      src: src,
    );
  }

  ProductAvailableVariationItemImage fromJson(Map<String, Object?> json) {
    return ProductAvailableVariationItemImage.fromJson(json);
  }
}

/// @nodoc
const $ProductAvailableVariationItemImage =
    _$ProductAvailableVariationItemImageTearOff();

/// @nodoc
mixin _$ProductAvailableVariationItemImage {
  @JsonKey(name: 'src')
  String? get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAvailableVariationItemImageCopyWith<
          ProductAvailableVariationItemImage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAvailableVariationItemImageCopyWith<$Res> {
  factory $ProductAvailableVariationItemImageCopyWith(
          ProductAvailableVariationItemImage value,
          $Res Function(ProductAvailableVariationItemImage) then) =
      _$ProductAvailableVariationItemImageCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'src') String? src});
}

/// @nodoc
class _$ProductAvailableVariationItemImageCopyWithImpl<$Res>
    implements $ProductAvailableVariationItemImageCopyWith<$Res> {
  _$ProductAvailableVariationItemImageCopyWithImpl(this._value, this._then);

  final ProductAvailableVariationItemImage _value;
  // ignore: unused_field
  final $Res Function(ProductAvailableVariationItemImage) _then;

  @override
  $Res call({
    Object? src = freezed,
  }) {
    return _then(_value.copyWith(
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductAvailableVariationItemImageCopyWith<$Res>
    implements $ProductAvailableVariationItemImageCopyWith<$Res> {
  factory _$ProductAvailableVariationItemImageCopyWith(
          _ProductAvailableVariationItemImage value,
          $Res Function(_ProductAvailableVariationItemImage) then) =
      __$ProductAvailableVariationItemImageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'src') String? src});
}

/// @nodoc
class __$ProductAvailableVariationItemImageCopyWithImpl<$Res>
    extends _$ProductAvailableVariationItemImageCopyWithImpl<$Res>
    implements _$ProductAvailableVariationItemImageCopyWith<$Res> {
  __$ProductAvailableVariationItemImageCopyWithImpl(
      _ProductAvailableVariationItemImage _value,
      $Res Function(_ProductAvailableVariationItemImage) _then)
      : super(_value, (v) => _then(v as _ProductAvailableVariationItemImage));

  @override
  _ProductAvailableVariationItemImage get _value =>
      super._value as _ProductAvailableVariationItemImage;

  @override
  $Res call({
    Object? src = freezed,
  }) {
    return _then(_ProductAvailableVariationItemImage(
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductAvailableVariationItemImage
    extends _ProductAvailableVariationItemImage {
  _$_ProductAvailableVariationItemImage({@JsonKey(name: 'src') this.src})
      : super._();

  factory _$_ProductAvailableVariationItemImage.fromJson(
          Map<String, dynamic> json) =>
      _$$_ProductAvailableVariationItemImageFromJson(json);

  @override
  @JsonKey(name: 'src')
  final String? src;

  @override
  String toString() {
    return 'ProductAvailableVariationItemImage(src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductAvailableVariationItemImage &&
            const DeepCollectionEquality().equals(other.src, src));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(src));

  @JsonKey(ignore: true)
  @override
  _$ProductAvailableVariationItemImageCopyWith<
          _ProductAvailableVariationItemImage>
      get copyWith => __$ProductAvailableVariationItemImageCopyWithImpl<
          _ProductAvailableVariationItemImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAvailableVariationItemImageToJson(this);
  }
}

abstract class _ProductAvailableVariationItemImage
    extends ProductAvailableVariationItemImage {
  factory _ProductAvailableVariationItemImage(
          {@JsonKey(name: 'src') String? src}) =
      _$_ProductAvailableVariationItemImage;
  _ProductAvailableVariationItemImage._() : super._();

  factory _ProductAvailableVariationItemImage.fromJson(
          Map<String, dynamic> json) =
      _$_ProductAvailableVariationItemImage.fromJson;

  @override
  @JsonKey(name: 'src')
  String? get src;
  @override
  @JsonKey(ignore: true)
  _$ProductAvailableVariationItemImageCopyWith<
          _ProductAvailableVariationItemImage>
      get copyWith => throw _privateConstructorUsedError;
}

ProductAvailableVariationAttribute _$ProductAvailableVariationAttributeFromJson(
    Map<String, dynamic> json) {
  return _ProductAvailableVariationAttribute.fromJson(json);
}

/// @nodoc
class _$ProductAvailableVariationAttributeTearOff {
  const _$ProductAvailableVariationAttributeTearOff();

  _ProductAvailableVariationAttribute call(
      {@JsonKey(name: 'attribute_pa_color') String? color,
      @JsonKey(name: 'attribute_pa_size') String? size}) {
    return _ProductAvailableVariationAttribute(
      color: color,
      size: size,
    );
  }

  ProductAvailableVariationAttribute fromJson(Map<String, Object?> json) {
    return ProductAvailableVariationAttribute.fromJson(json);
  }
}

/// @nodoc
const $ProductAvailableVariationAttribute =
    _$ProductAvailableVariationAttributeTearOff();

/// @nodoc
mixin _$ProductAvailableVariationAttribute {
  @JsonKey(name: 'attribute_pa_color')
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_pa_size')
  String? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAvailableVariationAttributeCopyWith<
          ProductAvailableVariationAttribute>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAvailableVariationAttributeCopyWith<$Res> {
  factory $ProductAvailableVariationAttributeCopyWith(
          ProductAvailableVariationAttribute value,
          $Res Function(ProductAvailableVariationAttribute) then) =
      _$ProductAvailableVariationAttributeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'attribute_pa_color') String? color,
      @JsonKey(name: 'attribute_pa_size') String? size});
}

/// @nodoc
class _$ProductAvailableVariationAttributeCopyWithImpl<$Res>
    implements $ProductAvailableVariationAttributeCopyWith<$Res> {
  _$ProductAvailableVariationAttributeCopyWithImpl(this._value, this._then);

  final ProductAvailableVariationAttribute _value;
  // ignore: unused_field
  final $Res Function(ProductAvailableVariationAttribute) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductAvailableVariationAttributeCopyWith<$Res>
    implements $ProductAvailableVariationAttributeCopyWith<$Res> {
  factory _$ProductAvailableVariationAttributeCopyWith(
          _ProductAvailableVariationAttribute value,
          $Res Function(_ProductAvailableVariationAttribute) then) =
      __$ProductAvailableVariationAttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'attribute_pa_color') String? color,
      @JsonKey(name: 'attribute_pa_size') String? size});
}

/// @nodoc
class __$ProductAvailableVariationAttributeCopyWithImpl<$Res>
    extends _$ProductAvailableVariationAttributeCopyWithImpl<$Res>
    implements _$ProductAvailableVariationAttributeCopyWith<$Res> {
  __$ProductAvailableVariationAttributeCopyWithImpl(
      _ProductAvailableVariationAttribute _value,
      $Res Function(_ProductAvailableVariationAttribute) _then)
      : super(_value, (v) => _then(v as _ProductAvailableVariationAttribute));

  @override
  _ProductAvailableVariationAttribute get _value =>
      super._value as _ProductAvailableVariationAttribute;

  @override
  $Res call({
    Object? color = freezed,
    Object? size = freezed,
  }) {
    return _then(_ProductAvailableVariationAttribute(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductAvailableVariationAttribute
    extends _ProductAvailableVariationAttribute {
  _$_ProductAvailableVariationAttribute(
      {@JsonKey(name: 'attribute_pa_color') this.color,
      @JsonKey(name: 'attribute_pa_size') this.size})
      : super._();

  factory _$_ProductAvailableVariationAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$$_ProductAvailableVariationAttributeFromJson(json);

  @override
  @JsonKey(name: 'attribute_pa_color')
  final String? color;
  @override
  @JsonKey(name: 'attribute_pa_size')
  final String? size;

  @override
  String toString() {
    return 'ProductAvailableVariationAttribute(color: $color, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductAvailableVariationAttribute &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$ProductAvailableVariationAttributeCopyWith<
          _ProductAvailableVariationAttribute>
      get copyWith => __$ProductAvailableVariationAttributeCopyWithImpl<
          _ProductAvailableVariationAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAvailableVariationAttributeToJson(this);
  }
}

abstract class _ProductAvailableVariationAttribute
    extends ProductAvailableVariationAttribute {
  factory _ProductAvailableVariationAttribute(
          {@JsonKey(name: 'attribute_pa_color') String? color,
          @JsonKey(name: 'attribute_pa_size') String? size}) =
      _$_ProductAvailableVariationAttribute;
  _ProductAvailableVariationAttribute._() : super._();

  factory _ProductAvailableVariationAttribute.fromJson(
          Map<String, dynamic> json) =
      _$_ProductAvailableVariationAttribute.fromJson;

  @override
  @JsonKey(name: 'attribute_pa_color')
  String? get color;
  @override
  @JsonKey(name: 'attribute_pa_size')
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$ProductAvailableVariationAttributeCopyWith<
          _ProductAvailableVariationAttribute>
      get copyWith => throw _privateConstructorUsedError;
}
