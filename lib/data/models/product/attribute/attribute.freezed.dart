// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductAttributes _$ProductAttributesFromJson(Map<String, dynamic> json) {
  return _ProductAttributes.fromJson(json);
}

/// @nodoc
class _$ProductAttributesTearOff {
  const _$ProductAttributesTearOff();

  _ProductAttributes call(
      {String? status, String? message, ProductAttribute? data}) {
    return _ProductAttributes(
      status: status,
      message: message,
      data: data,
    );
  }

  ProductAttributes fromJson(Map<String, Object?> json) {
    return ProductAttributes.fromJson(json);
  }
}

/// @nodoc
const $ProductAttributes = _$ProductAttributesTearOff();

/// @nodoc
mixin _$ProductAttributes {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ProductAttribute? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAttributesCopyWith<ProductAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributesCopyWith<$Res> {
  factory $ProductAttributesCopyWith(
          ProductAttributes value, $Res Function(ProductAttributes) then) =
      _$ProductAttributesCopyWithImpl<$Res>;
  $Res call({String? status, String? message, ProductAttribute? data});

  $ProductAttributeCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductAttributesCopyWithImpl<$Res>
    implements $ProductAttributesCopyWith<$Res> {
  _$ProductAttributesCopyWithImpl(this._value, this._then);

  final ProductAttributes _value;
  // ignore: unused_field
  final $Res Function(ProductAttributes) _then;

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
              as ProductAttribute?,
    ));
  }

  @override
  $ProductAttributeCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductAttributeCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ProductAttributesCopyWith<$Res>
    implements $ProductAttributesCopyWith<$Res> {
  factory _$ProductAttributesCopyWith(
          _ProductAttributes value, $Res Function(_ProductAttributes) then) =
      __$ProductAttributesCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, ProductAttribute? data});

  @override
  $ProductAttributeCopyWith<$Res>? get data;
}

/// @nodoc
class __$ProductAttributesCopyWithImpl<$Res>
    extends _$ProductAttributesCopyWithImpl<$Res>
    implements _$ProductAttributesCopyWith<$Res> {
  __$ProductAttributesCopyWithImpl(
      _ProductAttributes _value, $Res Function(_ProductAttributes) _then)
      : super(_value, (v) => _then(v as _ProductAttributes));

  @override
  _ProductAttributes get _value => super._value as _ProductAttributes;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ProductAttributes(
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
              as ProductAttribute?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductAttributes implements _ProductAttributes {
  const _$_ProductAttributes({this.status, this.message, this.data});

  factory _$_ProductAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_ProductAttributesFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final ProductAttribute? data;

  @override
  String toString() {
    return 'ProductAttributes(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductAttributes &&
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
  _$ProductAttributesCopyWith<_ProductAttributes> get copyWith =>
      __$ProductAttributesCopyWithImpl<_ProductAttributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAttributesToJson(this);
  }
}

abstract class _ProductAttributes implements ProductAttributes {
  const factory _ProductAttributes(
      {String? status,
      String? message,
      ProductAttribute? data}) = _$_ProductAttributes;

  factory _ProductAttributes.fromJson(Map<String, dynamic> json) =
      _$_ProductAttributes.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  ProductAttribute? get data;
  @override
  @JsonKey(ignore: true)
  _$ProductAttributesCopyWith<_ProductAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductAttribute _$ProductAttributeFromJson(Map<String, dynamic> json) {
  return _ProductAttribute.fromJson(json);
}

/// @nodoc
class _$ProductAttributeTearOff {
  const _$ProductAttributeTearOff();

  _ProductAttribute call(
      {@JsonKey(name: 'color') List<String>? colors,
      @JsonKey(name: 'size') List<String>? sizes}) {
    return _ProductAttribute(
      colors: colors,
      sizes: sizes,
    );
  }

  ProductAttribute fromJson(Map<String, Object?> json) {
    return ProductAttribute.fromJson(json);
  }
}

/// @nodoc
const $ProductAttribute = _$ProductAttributeTearOff();

/// @nodoc
mixin _$ProductAttribute {
  @JsonKey(name: 'color')
  List<String>? get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  List<String>? get sizes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAttributeCopyWith<ProductAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeCopyWith<$Res> {
  factory $ProductAttributeCopyWith(
          ProductAttribute value, $Res Function(ProductAttribute) then) =
      _$ProductAttributeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'color') List<String>? colors,
      @JsonKey(name: 'size') List<String>? sizes});
}

/// @nodoc
class _$ProductAttributeCopyWithImpl<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  _$ProductAttributeCopyWithImpl(this._value, this._then);

  final ProductAttribute _value;
  // ignore: unused_field
  final $Res Function(ProductAttribute) _then;

  @override
  $Res call({
    Object? colors = freezed,
    Object? sizes = freezed,
  }) {
    return _then(_value.copyWith(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductAttributeCopyWith<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  factory _$ProductAttributeCopyWith(
          _ProductAttribute value, $Res Function(_ProductAttribute) then) =
      __$ProductAttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'color') List<String>? colors,
      @JsonKey(name: 'size') List<String>? sizes});
}

/// @nodoc
class __$ProductAttributeCopyWithImpl<$Res>
    extends _$ProductAttributeCopyWithImpl<$Res>
    implements _$ProductAttributeCopyWith<$Res> {
  __$ProductAttributeCopyWithImpl(
      _ProductAttribute _value, $Res Function(_ProductAttribute) _then)
      : super(_value, (v) => _then(v as _ProductAttribute));

  @override
  _ProductAttribute get _value => super._value as _ProductAttribute;

  @override
  $Res call({
    Object? colors = freezed,
    Object? sizes = freezed,
  }) {
    return _then(_ProductAttribute(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductAttribute implements _ProductAttribute {
  const _$_ProductAttribute(
      {@JsonKey(name: 'color') this.colors, @JsonKey(name: 'size') this.sizes});

  factory _$_ProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$$_ProductAttributeFromJson(json);

  @override
  @JsonKey(name: 'color')
  final List<String>? colors;
  @override
  @JsonKey(name: 'size')
  final List<String>? sizes;

  @override
  String toString() {
    return 'ProductAttribute(colors: $colors, sizes: $sizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductAttribute &&
            const DeepCollectionEquality().equals(other.colors, colors) &&
            const DeepCollectionEquality().equals(other.sizes, sizes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(sizes));

  @JsonKey(ignore: true)
  @override
  _$ProductAttributeCopyWith<_ProductAttribute> get copyWith =>
      __$ProductAttributeCopyWithImpl<_ProductAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductAttributeToJson(this);
  }
}

abstract class _ProductAttribute implements ProductAttribute {
  const factory _ProductAttribute(
      {@JsonKey(name: 'color') List<String>? colors,
      @JsonKey(name: 'size') List<String>? sizes}) = _$_ProductAttribute;

  factory _ProductAttribute.fromJson(Map<String, dynamic> json) =
      _$_ProductAttribute.fromJson;

  @override
  @JsonKey(name: 'color')
  List<String>? get colors;
  @override
  @JsonKey(name: 'size')
  List<String>? get sizes;
  @override
  @JsonKey(ignore: true)
  _$ProductAttributeCopyWith<_ProductAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}
