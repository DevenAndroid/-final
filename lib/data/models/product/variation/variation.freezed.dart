// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductVariation _$ProductVariationFromJson(Map<String, dynamic> json) {
  return _ProductVariation.fromJson(json);
}

/// @nodoc
class _$ProductVariationTearOff {
  const _$ProductVariationTearOff();

  _ProductVariation call(
      {@JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'regular_price') String? regularPrice,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'stock_quantity') String? stockQuantity,
      @JsonKey(name: 'variation_id') String? variationId}) {
    return _ProductVariation(
      productId: productId,
      regularPrice: regularPrice,
      price: price,
      stockQuantity: stockQuantity,
      variationId: variationId,
    );
  }

  ProductVariation fromJson(Map<String, Object?> json) {
    return ProductVariation.fromJson(json);
  }
}

/// @nodoc
const $ProductVariation = _$ProductVariationTearOff();

/// @nodoc
mixin _$ProductVariation {
  @JsonKey(name: 'product_id')
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'regular_price')
  String? get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_quantity')
  String? get stockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'variation_id')
  String? get variationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariationCopyWith<ProductVariation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariationCopyWith<$Res> {
  factory $ProductVariationCopyWith(
          ProductVariation value, $Res Function(ProductVariation) then) =
      _$ProductVariationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'regular_price') String? regularPrice,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'stock_quantity') String? stockQuantity,
      @JsonKey(name: 'variation_id') String? variationId});
}

/// @nodoc
class _$ProductVariationCopyWithImpl<$Res>
    implements $ProductVariationCopyWith<$Res> {
  _$ProductVariationCopyWithImpl(this._value, this._then);

  final ProductVariation _value;
  // ignore: unused_field
  final $Res Function(ProductVariation) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? regularPrice = freezed,
    Object? price = freezed,
    Object? stockQuantity = freezed,
    Object? variationId = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      stockQuantity: stockQuantity == freezed
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as String?,
      variationId: variationId == freezed
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductVariationCopyWith<$Res>
    implements $ProductVariationCopyWith<$Res> {
  factory _$ProductVariationCopyWith(
          _ProductVariation value, $Res Function(_ProductVariation) then) =
      __$ProductVariationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'regular_price') String? regularPrice,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'stock_quantity') String? stockQuantity,
      @JsonKey(name: 'variation_id') String? variationId});
}

/// @nodoc
class __$ProductVariationCopyWithImpl<$Res>
    extends _$ProductVariationCopyWithImpl<$Res>
    implements _$ProductVariationCopyWith<$Res> {
  __$ProductVariationCopyWithImpl(
      _ProductVariation _value, $Res Function(_ProductVariation) _then)
      : super(_value, (v) => _then(v as _ProductVariation));

  @override
  _ProductVariation get _value => super._value as _ProductVariation;

  @override
  $Res call({
    Object? productId = freezed,
    Object? regularPrice = freezed,
    Object? price = freezed,
    Object? stockQuantity = freezed,
    Object? variationId = freezed,
  }) {
    return _then(_ProductVariation(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      stockQuantity: stockQuantity == freezed
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as String?,
      variationId: variationId == freezed
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductVariation extends _ProductVariation
    with DiagnosticableTreeMixin {
  const _$_ProductVariation(
      {@JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'regular_price') this.regularPrice,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'stock_quantity') this.stockQuantity,
      @JsonKey(name: 'variation_id') this.variationId})
      : super._();

  factory _$_ProductVariation.fromJson(Map<String, dynamic> json) =>
      _$$_ProductVariationFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final String? productId;
  @override
  @JsonKey(name: 'regular_price')
  final String? regularPrice;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'stock_quantity')
  final String? stockQuantity;
  @override
  @JsonKey(name: 'variation_id')
  final String? variationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductVariation(productId: $productId, regularPrice: $regularPrice, price: $price, stockQuantity: $stockQuantity, variationId: $variationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductVariation'))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('regularPrice', regularPrice))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('stockQuantity', stockQuantity))
      ..add(DiagnosticsProperty('variationId', variationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductVariation &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.regularPrice, regularPrice) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.stockQuantity, stockQuantity) &&
            const DeepCollectionEquality()
                .equals(other.variationId, variationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(regularPrice),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(stockQuantity),
      const DeepCollectionEquality().hash(variationId));

  @JsonKey(ignore: true)
  @override
  _$ProductVariationCopyWith<_ProductVariation> get copyWith =>
      __$ProductVariationCopyWithImpl<_ProductVariation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductVariationToJson(this);
  }
}

abstract class _ProductVariation extends ProductVariation {
  const factory _ProductVariation(
          {@JsonKey(name: 'product_id') String? productId,
          @JsonKey(name: 'regular_price') String? regularPrice,
          @JsonKey(name: 'price') String? price,
          @JsonKey(name: 'stock_quantity') String? stockQuantity,
          @JsonKey(name: 'variation_id') String? variationId}) =
      _$_ProductVariation;
  const _ProductVariation._() : super._();

  factory _ProductVariation.fromJson(Map<String, dynamic> json) =
      _$_ProductVariation.fromJson;

  @override
  @JsonKey(name: 'product_id')
  String? get productId;
  @override
  @JsonKey(name: 'regular_price')
  String? get regularPrice;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'stock_quantity')
  String? get stockQuantity;
  @override
  @JsonKey(name: 'variation_id')
  String? get variationId;
  @override
  @JsonKey(ignore: true)
  _$ProductVariationCopyWith<_ProductVariation> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariationResponse _$ProductVariationResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductVariationResponse.fromJson(json);
}

/// @nodoc
class _$ProductVariationResponseTearOff {
  const _$ProductVariationResponseTearOff();

  _ProductVariationResponse call(
      {String? status,
      String? message,
      @JsonKey(name: 'data') ProductVariationBody? data}) {
    return _ProductVariationResponse(
      status: status,
      message: message,
      data: data,
    );
  }

  ProductVariationResponse fromJson(Map<String, Object?> json) {
    return ProductVariationResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductVariationResponse = _$ProductVariationResponseTearOff();

/// @nodoc
mixin _$ProductVariationResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ProductVariationBody? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariationResponseCopyWith<ProductVariationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariationResponseCopyWith<$Res> {
  factory $ProductVariationResponseCopyWith(ProductVariationResponse value,
          $Res Function(ProductVariationResponse) then) =
      _$ProductVariationResponseCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      String? message,
      @JsonKey(name: 'data') ProductVariationBody? data});

  $ProductVariationBodyCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductVariationResponseCopyWithImpl<$Res>
    implements $ProductVariationResponseCopyWith<$Res> {
  _$ProductVariationResponseCopyWithImpl(this._value, this._then);

  final ProductVariationResponse _value;
  // ignore: unused_field
  final $Res Function(ProductVariationResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductVariationBody?,
    ));
  }

  @override
  $ProductVariationBodyCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductVariationBodyCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ProductVariationResponseCopyWith<$Res>
    implements $ProductVariationResponseCopyWith<$Res> {
  factory _$ProductVariationResponseCopyWith(_ProductVariationResponse value,
          $Res Function(_ProductVariationResponse) then) =
      __$ProductVariationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      String? message,
      @JsonKey(name: 'data') ProductVariationBody? data});

  @override
  $ProductVariationBodyCopyWith<$Res>? get data;
}

/// @nodoc
class __$ProductVariationResponseCopyWithImpl<$Res>
    extends _$ProductVariationResponseCopyWithImpl<$Res>
    implements _$ProductVariationResponseCopyWith<$Res> {
  __$ProductVariationResponseCopyWithImpl(_ProductVariationResponse _value,
      $Res Function(_ProductVariationResponse) _then)
      : super(_value, (v) => _then(v as _ProductVariationResponse));

  @override
  _ProductVariationResponse get _value =>
      super._value as _ProductVariationResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ProductVariationResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductVariationBody?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductVariationResponse
    with DiagnosticableTreeMixin
    implements _ProductVariationResponse {
  const _$_ProductVariationResponse(
      {this.status, this.message, @JsonKey(name: 'data') this.data});

  factory _$_ProductVariationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductVariationResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  @JsonKey(name: 'data')
  final ProductVariationBody? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductVariationResponse(status: $status, message: $message, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductVariationResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductVariationResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ProductVariationResponseCopyWith<_ProductVariationResponse> get copyWith =>
      __$ProductVariationResponseCopyWithImpl<_ProductVariationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductVariationResponseToJson(this);
  }
}

abstract class _ProductVariationResponse implements ProductVariationResponse {
  const factory _ProductVariationResponse(
          {String? status,
          String? message,
          @JsonKey(name: 'data') ProductVariationBody? data}) =
      _$_ProductVariationResponse;

  factory _ProductVariationResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductVariationResponse.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  @JsonKey(name: 'data')
  ProductVariationBody? get data;
  @override
  @JsonKey(ignore: true)
  _$ProductVariationResponseCopyWith<_ProductVariationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariationBody _$ProductVariationBodyFromJson(Map<String, dynamic> json) {
  return _ProductVariationBody.fromJson(json);
}

/// @nodoc
class _$ProductVariationBodyTearOff {
  const _$ProductVariationBodyTearOff();

  _ProductVariationBody call(
      {@JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'variations') ProductVariationData? variations}) {
    return _ProductVariationBody(
      productId: productId,
      variations: variations,
    );
  }

  ProductVariationBody fromJson(Map<String, Object?> json) {
    return ProductVariationBody.fromJson(json);
  }
}

/// @nodoc
const $ProductVariationBody = _$ProductVariationBodyTearOff();

/// @nodoc
mixin _$ProductVariationBody {
  @JsonKey(name: 'product_id')
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'variations')
  ProductVariationData? get variations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariationBodyCopyWith<ProductVariationBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariationBodyCopyWith<$Res> {
  factory $ProductVariationBodyCopyWith(ProductVariationBody value,
          $Res Function(ProductVariationBody) then) =
      _$ProductVariationBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'variations') ProductVariationData? variations});

  $ProductVariationDataCopyWith<$Res>? get variations;
}

/// @nodoc
class _$ProductVariationBodyCopyWithImpl<$Res>
    implements $ProductVariationBodyCopyWith<$Res> {
  _$ProductVariationBodyCopyWithImpl(this._value, this._then);

  final ProductVariationBody _value;
  // ignore: unused_field
  final $Res Function(ProductVariationBody) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? variations = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      variations: variations == freezed
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as ProductVariationData?,
    ));
  }

  @override
  $ProductVariationDataCopyWith<$Res>? get variations {
    if (_value.variations == null) {
      return null;
    }

    return $ProductVariationDataCopyWith<$Res>(_value.variations!, (value) {
      return _then(_value.copyWith(variations: value));
    });
  }
}

/// @nodoc
abstract class _$ProductVariationBodyCopyWith<$Res>
    implements $ProductVariationBodyCopyWith<$Res> {
  factory _$ProductVariationBodyCopyWith(_ProductVariationBody value,
          $Res Function(_ProductVariationBody) then) =
      __$ProductVariationBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'variations') ProductVariationData? variations});

  @override
  $ProductVariationDataCopyWith<$Res>? get variations;
}

/// @nodoc
class __$ProductVariationBodyCopyWithImpl<$Res>
    extends _$ProductVariationBodyCopyWithImpl<$Res>
    implements _$ProductVariationBodyCopyWith<$Res> {
  __$ProductVariationBodyCopyWithImpl(
      _ProductVariationBody _value, $Res Function(_ProductVariationBody) _then)
      : super(_value, (v) => _then(v as _ProductVariationBody));

  @override
  _ProductVariationBody get _value => super._value as _ProductVariationBody;

  @override
  $Res call({
    Object? productId = freezed,
    Object? variations = freezed,
  }) {
    return _then(_ProductVariationBody(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      variations: variations == freezed
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as ProductVariationData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductVariationBody
    with DiagnosticableTreeMixin
    implements _ProductVariationBody {
  const _$_ProductVariationBody(
      {@JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'variations') this.variations});

  factory _$_ProductVariationBody.fromJson(Map<String, dynamic> json) =>
      _$$_ProductVariationBodyFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final String? productId;
  @override
  @JsonKey(name: 'variations')
  final ProductVariationData? variations;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductVariationBody(productId: $productId, variations: $variations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductVariationBody'))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('variations', variations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductVariationBody &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.variations, variations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(variations));

  @JsonKey(ignore: true)
  @override
  _$ProductVariationBodyCopyWith<_ProductVariationBody> get copyWith =>
      __$ProductVariationBodyCopyWithImpl<_ProductVariationBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductVariationBodyToJson(this);
  }
}

abstract class _ProductVariationBody implements ProductVariationBody {
  const factory _ProductVariationBody(
          {@JsonKey(name: 'product_id') String? productId,
          @JsonKey(name: 'variations') ProductVariationData? variations}) =
      _$_ProductVariationBody;

  factory _ProductVariationBody.fromJson(Map<String, dynamic> json) =
      _$_ProductVariationBody.fromJson;

  @override
  @JsonKey(name: 'product_id')
  String? get productId;
  @override
  @JsonKey(name: 'variations')
  ProductVariationData? get variations;
  @override
  @JsonKey(ignore: true)
  _$ProductVariationBodyCopyWith<_ProductVariationBody> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariationData _$ProductVariationDataFromJson(Map<String, dynamic> json) {
  return _ProductVariationData.fromJson(json);
}

/// @nodoc
class _$ProductVariationDataTearOff {
  const _$ProductVariationDataTearOff();

  _ProductVariationData call(
      {@JsonKey(name: 'variation_id') dynamic variationId,
      @JsonKey(name: 'attributes') ProductVariationAttributeData? attributes,
      @JsonKey(name: 'regular_price') dynamic regularPrice,
      @JsonKey(name: 'stock_qty') dynamic stockQty,
      @JsonKey(name: 'sku') dynamic sku,
      @JsonKey(name: 'image') dynamic image}) {
    return _ProductVariationData(
      variationId: variationId,
      attributes: attributes,
      regularPrice: regularPrice,
      stockQty: stockQty,
      sku: sku,
      image: image,
    );
  }

  ProductVariationData fromJson(Map<String, Object?> json) {
    return ProductVariationData.fromJson(json);
  }
}

/// @nodoc
const $ProductVariationData = _$ProductVariationDataTearOff();

/// @nodoc
mixin _$ProductVariationData {
  @JsonKey(name: 'variation_id')
  dynamic get variationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  ProductVariationAttributeData? get attributes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'regular_price')
  dynamic get regularPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_qty')
  dynamic get stockQty => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  dynamic get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  dynamic get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariationDataCopyWith<ProductVariationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariationDataCopyWith<$Res> {
  factory $ProductVariationDataCopyWith(ProductVariationData value,
          $Res Function(ProductVariationData) then) =
      _$ProductVariationDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'variation_id') dynamic variationId,
      @JsonKey(name: 'attributes') ProductVariationAttributeData? attributes,
      @JsonKey(name: 'regular_price') dynamic regularPrice,
      @JsonKey(name: 'stock_qty') dynamic stockQty,
      @JsonKey(name: 'sku') dynamic sku,
      @JsonKey(name: 'image') dynamic image});

  $ProductVariationAttributeDataCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$ProductVariationDataCopyWithImpl<$Res>
    implements $ProductVariationDataCopyWith<$Res> {
  _$ProductVariationDataCopyWithImpl(this._value, this._then);

  final ProductVariationData _value;
  // ignore: unused_field
  final $Res Function(ProductVariationData) _then;

  @override
  $Res call({
    Object? variationId = freezed,
    Object? attributes = freezed,
    Object? regularPrice = freezed,
    Object? stockQty = freezed,
    Object? sku = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      variationId: variationId == freezed
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ProductVariationAttributeData?,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stockQty: stockQty == freezed
          ? _value.stockQty
          : stockQty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  @override
  $ProductVariationAttributeDataCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $ProductVariationAttributeDataCopyWith<$Res>(_value.attributes!,
        (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }
}

/// @nodoc
abstract class _$ProductVariationDataCopyWith<$Res>
    implements $ProductVariationDataCopyWith<$Res> {
  factory _$ProductVariationDataCopyWith(_ProductVariationData value,
          $Res Function(_ProductVariationData) then) =
      __$ProductVariationDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'variation_id') dynamic variationId,
      @JsonKey(name: 'attributes') ProductVariationAttributeData? attributes,
      @JsonKey(name: 'regular_price') dynamic regularPrice,
      @JsonKey(name: 'stock_qty') dynamic stockQty,
      @JsonKey(name: 'sku') dynamic sku,
      @JsonKey(name: 'image') dynamic image});

  @override
  $ProductVariationAttributeDataCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$ProductVariationDataCopyWithImpl<$Res>
    extends _$ProductVariationDataCopyWithImpl<$Res>
    implements _$ProductVariationDataCopyWith<$Res> {
  __$ProductVariationDataCopyWithImpl(
      _ProductVariationData _value, $Res Function(_ProductVariationData) _then)
      : super(_value, (v) => _then(v as _ProductVariationData));

  @override
  _ProductVariationData get _value => super._value as _ProductVariationData;

  @override
  $Res call({
    Object? variationId = freezed,
    Object? attributes = freezed,
    Object? regularPrice = freezed,
    Object? stockQty = freezed,
    Object? sku = freezed,
    Object? image = freezed,
  }) {
    return _then(_ProductVariationData(
      variationId: variationId == freezed
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ProductVariationAttributeData?,
      regularPrice: regularPrice == freezed
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stockQty: stockQty == freezed
          ? _value.stockQty
          : stockQty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductVariationData
    with DiagnosticableTreeMixin
    implements _ProductVariationData {
  const _$_ProductVariationData(
      {@JsonKey(name: 'variation_id') this.variationId,
      @JsonKey(name: 'attributes') this.attributes,
      @JsonKey(name: 'regular_price') this.regularPrice,
      @JsonKey(name: 'stock_qty') this.stockQty,
      @JsonKey(name: 'sku') this.sku,
      @JsonKey(name: 'image') this.image});

  factory _$_ProductVariationData.fromJson(Map<String, dynamic> json) =>
      _$$_ProductVariationDataFromJson(json);

  @override
  @JsonKey(name: 'variation_id')
  final dynamic variationId;
  @override
  @JsonKey(name: 'attributes')
  final ProductVariationAttributeData? attributes;
  @override
  @JsonKey(name: 'regular_price')
  final dynamic regularPrice;
  @override
  @JsonKey(name: 'stock_qty')
  final dynamic stockQty;
  @override
  @JsonKey(name: 'sku')
  final dynamic sku;
  @override
  @JsonKey(name: 'image')
  final dynamic image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductVariationData(variationId: $variationId, attributes: $attributes, regularPrice: $regularPrice, stockQty: $stockQty, sku: $sku, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductVariationData'))
      ..add(DiagnosticsProperty('variationId', variationId))
      ..add(DiagnosticsProperty('attributes', attributes))
      ..add(DiagnosticsProperty('regularPrice', regularPrice))
      ..add(DiagnosticsProperty('stockQty', stockQty))
      ..add(DiagnosticsProperty('sku', sku))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductVariationData &&
            const DeepCollectionEquality()
                .equals(other.variationId, variationId) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality()
                .equals(other.regularPrice, regularPrice) &&
            const DeepCollectionEquality().equals(other.stockQty, stockQty) &&
            const DeepCollectionEquality().equals(other.sku, sku) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(variationId),
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(regularPrice),
      const DeepCollectionEquality().hash(stockQty),
      const DeepCollectionEquality().hash(sku),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$ProductVariationDataCopyWith<_ProductVariationData> get copyWith =>
      __$ProductVariationDataCopyWithImpl<_ProductVariationData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductVariationDataToJson(this);
  }
}

abstract class _ProductVariationData implements ProductVariationData {
  const factory _ProductVariationData(
      {@JsonKey(name: 'variation_id') dynamic variationId,
      @JsonKey(name: 'attributes') ProductVariationAttributeData? attributes,
      @JsonKey(name: 'regular_price') dynamic regularPrice,
      @JsonKey(name: 'stock_qty') dynamic stockQty,
      @JsonKey(name: 'sku') dynamic sku,
      @JsonKey(name: 'image') dynamic image}) = _$_ProductVariationData;

  factory _ProductVariationData.fromJson(Map<String, dynamic> json) =
      _$_ProductVariationData.fromJson;

  @override
  @JsonKey(name: 'variation_id')
  dynamic get variationId;
  @override
  @JsonKey(name: 'attributes')
  ProductVariationAttributeData? get attributes;
  @override
  @JsonKey(name: 'regular_price')
  dynamic get regularPrice;
  @override
  @JsonKey(name: 'stock_qty')
  dynamic get stockQty;
  @override
  @JsonKey(name: 'sku')
  dynamic get sku;
  @override
  @JsonKey(name: 'image')
  dynamic get image;
  @override
  @JsonKey(ignore: true)
  _$ProductVariationDataCopyWith<_ProductVariationData> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariationAttributeData _$ProductVariationAttributeDataFromJson(
    Map<String, dynamic> json) {
  return _ProductVariationAttributeData.fromJson(json);
}

/// @nodoc
class _$ProductVariationAttributeDataTearOff {
  const _$ProductVariationAttributeDataTearOff();

  _ProductVariationAttributeData call({String? color, String? size}) {
    return _ProductVariationAttributeData(
      color: color,
      size: size,
    );
  }

  ProductVariationAttributeData fromJson(Map<String, Object?> json) {
    return ProductVariationAttributeData.fromJson(json);
  }
}

/// @nodoc
const $ProductVariationAttributeData = _$ProductVariationAttributeDataTearOff();

/// @nodoc
mixin _$ProductVariationAttributeData {
  String? get color => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariationAttributeDataCopyWith<ProductVariationAttributeData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariationAttributeDataCopyWith<$Res> {
  factory $ProductVariationAttributeDataCopyWith(
          ProductVariationAttributeData value,
          $Res Function(ProductVariationAttributeData) then) =
      _$ProductVariationAttributeDataCopyWithImpl<$Res>;
  $Res call({String? color, String? size});
}

/// @nodoc
class _$ProductVariationAttributeDataCopyWithImpl<$Res>
    implements $ProductVariationAttributeDataCopyWith<$Res> {
  _$ProductVariationAttributeDataCopyWithImpl(this._value, this._then);

  final ProductVariationAttributeData _value;
  // ignore: unused_field
  final $Res Function(ProductVariationAttributeData) _then;

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
abstract class _$ProductVariationAttributeDataCopyWith<$Res>
    implements $ProductVariationAttributeDataCopyWith<$Res> {
  factory _$ProductVariationAttributeDataCopyWith(
          _ProductVariationAttributeData value,
          $Res Function(_ProductVariationAttributeData) then) =
      __$ProductVariationAttributeDataCopyWithImpl<$Res>;
  @override
  $Res call({String? color, String? size});
}

/// @nodoc
class __$ProductVariationAttributeDataCopyWithImpl<$Res>
    extends _$ProductVariationAttributeDataCopyWithImpl<$Res>
    implements _$ProductVariationAttributeDataCopyWith<$Res> {
  __$ProductVariationAttributeDataCopyWithImpl(
      _ProductVariationAttributeData _value,
      $Res Function(_ProductVariationAttributeData) _then)
      : super(_value, (v) => _then(v as _ProductVariationAttributeData));

  @override
  _ProductVariationAttributeData get _value =>
      super._value as _ProductVariationAttributeData;

  @override
  $Res call({
    Object? color = freezed,
    Object? size = freezed,
  }) {
    return _then(_ProductVariationAttributeData(
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
class _$_ProductVariationAttributeData
    with DiagnosticableTreeMixin
    implements _ProductVariationAttributeData {
  const _$_ProductVariationAttributeData({this.color, this.size});

  factory _$_ProductVariationAttributeData.fromJson(
          Map<String, dynamic> json) =>
      _$$_ProductVariationAttributeDataFromJson(json);

  @override
  final String? color;
  @override
  final String? size;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductVariationAttributeData(color: $color, size: $size)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductVariationAttributeData'))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('size', size));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductVariationAttributeData &&
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
  _$ProductVariationAttributeDataCopyWith<_ProductVariationAttributeData>
      get copyWith => __$ProductVariationAttributeDataCopyWithImpl<
          _ProductVariationAttributeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductVariationAttributeDataToJson(this);
  }
}

abstract class _ProductVariationAttributeData
    implements ProductVariationAttributeData {
  const factory _ProductVariationAttributeData({String? color, String? size}) =
      _$_ProductVariationAttributeData;

  factory _ProductVariationAttributeData.fromJson(Map<String, dynamic> json) =
      _$_ProductVariationAttributeData.fromJson;

  @override
  String? get color;
  @override
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$ProductVariationAttributeDataCopyWith<_ProductVariationAttributeData>
      get copyWith => throw _privateConstructorUsedError;
}
