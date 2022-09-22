// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variation_attr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariationAttributes _$VariationAttributesFromJson(Map<String, dynamic> json) {
  return _VariationAttributes.fromJson(json);
}

/// @nodoc
class _$VariationAttributesTearOff {
  const _$VariationAttributesTearOff();

  _VariationAttributes call(
      {String? status, String? message, List<Attributes>? data}) {
    return _VariationAttributes(
      status: status,
      message: message,
      data: data,
    );
  }

  VariationAttributes fromJson(Map<String, Object?> json) {
    return VariationAttributes.fromJson(json);
  }
}

/// @nodoc
const $VariationAttributes = _$VariationAttributesTearOff();

/// @nodoc
mixin _$VariationAttributes {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Attributes>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariationAttributesCopyWith<VariationAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationAttributesCopyWith<$Res> {
  factory $VariationAttributesCopyWith(
          VariationAttributes value, $Res Function(VariationAttributes) then) =
      _$VariationAttributesCopyWithImpl<$Res>;
  $Res call({String? status, String? message, List<Attributes>? data});
}

/// @nodoc
class _$VariationAttributesCopyWithImpl<$Res>
    implements $VariationAttributesCopyWith<$Res> {
  _$VariationAttributesCopyWithImpl(this._value, this._then);

  final VariationAttributes _value;
  // ignore: unused_field
  final $Res Function(VariationAttributes) _then;

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
              as List<Attributes>?,
    ));
  }
}

/// @nodoc
abstract class _$VariationAttributesCopyWith<$Res>
    implements $VariationAttributesCopyWith<$Res> {
  factory _$VariationAttributesCopyWith(_VariationAttributes value,
          $Res Function(_VariationAttributes) then) =
      __$VariationAttributesCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, List<Attributes>? data});
}

/// @nodoc
class __$VariationAttributesCopyWithImpl<$Res>
    extends _$VariationAttributesCopyWithImpl<$Res>
    implements _$VariationAttributesCopyWith<$Res> {
  __$VariationAttributesCopyWithImpl(
      _VariationAttributes _value, $Res Function(_VariationAttributes) _then)
      : super(_value, (v) => _then(v as _VariationAttributes));

  @override
  _VariationAttributes get _value => super._value as _VariationAttributes;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_VariationAttributes(
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
              as List<Attributes>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariationAttributes implements _VariationAttributes {
  const _$_VariationAttributes({this.status, this.message, this.data});

  factory _$_VariationAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_VariationAttributesFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final List<Attributes>? data;

  @override
  String toString() {
    return 'VariationAttributes(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VariationAttributes &&
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
  _$VariationAttributesCopyWith<_VariationAttributes> get copyWith =>
      __$VariationAttributesCopyWithImpl<_VariationAttributes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariationAttributesToJson(this);
  }
}

abstract class _VariationAttributes implements VariationAttributes {
  const factory _VariationAttributes(
      {String? status,
      String? message,
      List<Attributes>? data}) = _$_VariationAttributes;

  factory _VariationAttributes.fromJson(Map<String, dynamic> json) =
      _$_VariationAttributes.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<Attributes>? get data;
  @override
  @JsonKey(ignore: true)
  _$VariationAttributesCopyWith<_VariationAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
class _$AttributesTearOff {
  const _$AttributesTearOff();

  _Attributes call(
      {@JsonKey(name: 'color') List<VariationAttribute>? colors,
      @JsonKey(name: 'size') List<VariationAttribute>? sizes}) {
    return _Attributes(
      colors: colors,
      sizes: sizes,
    );
  }

  Attributes fromJson(Map<String, Object?> json) {
    return Attributes.fromJson(json);
  }
}

/// @nodoc
const $Attributes = _$AttributesTearOff();

/// @nodoc
mixin _$Attributes {
  @JsonKey(name: 'color')
  List<VariationAttribute>? get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  List<VariationAttribute>? get sizes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'color') List<VariationAttribute>? colors,
      @JsonKey(name: 'size') List<VariationAttribute>? sizes});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res> implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  final Attributes _value;
  // ignore: unused_field
  final $Res Function(Attributes) _then;

  @override
  $Res call({
    Object? colors = freezed,
    Object? sizes = freezed,
  }) {
    return _then(_value.copyWith(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<VariationAttribute>?,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<VariationAttribute>?,
    ));
  }
}

/// @nodoc
abstract class _$AttributesCopyWith<$Res> implements $AttributesCopyWith<$Res> {
  factory _$AttributesCopyWith(
          _Attributes value, $Res Function(_Attributes) then) =
      __$AttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'color') List<VariationAttribute>? colors,
      @JsonKey(name: 'size') List<VariationAttribute>? sizes});
}

/// @nodoc
class __$AttributesCopyWithImpl<$Res> extends _$AttributesCopyWithImpl<$Res>
    implements _$AttributesCopyWith<$Res> {
  __$AttributesCopyWithImpl(
      _Attributes _value, $Res Function(_Attributes) _then)
      : super(_value, (v) => _then(v as _Attributes));

  @override
  _Attributes get _value => super._value as _Attributes;

  @override
  $Res call({
    Object? colors = freezed,
    Object? sizes = freezed,
  }) {
    return _then(_Attributes(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<VariationAttribute>?,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<VariationAttribute>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attributes implements _Attributes {
  const _$_Attributes(
      {@JsonKey(name: 'color') this.colors, @JsonKey(name: 'size') this.sizes});

  factory _$_Attributes.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesFromJson(json);

  @override
  @JsonKey(name: 'color')
  final List<VariationAttribute>? colors;
  @override
  @JsonKey(name: 'size')
  final List<VariationAttribute>? sizes;

  @override
  String toString() {
    return 'Attributes(colors: $colors, sizes: $sizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attributes &&
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
  _$AttributesCopyWith<_Attributes> get copyWith =>
      __$AttributesCopyWithImpl<_Attributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesToJson(this);
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes(
      {@JsonKey(name: 'color') List<VariationAttribute>? colors,
      @JsonKey(name: 'size') List<VariationAttribute>? sizes}) = _$_Attributes;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$_Attributes.fromJson;

  @override
  @JsonKey(name: 'color')
  List<VariationAttribute>? get colors;
  @override
  @JsonKey(name: 'size')
  List<VariationAttribute>? get sizes;
  @override
  @JsonKey(ignore: true)
  _$AttributesCopyWith<_Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

VariationAttribute _$VariationAttributeFromJson(Map<String, dynamic> json) {
  return _VariationAttribute.fromJson(json);
}

/// @nodoc
class _$VariationAttributeTearOff {
  const _$VariationAttributeTearOff();

  _VariationAttribute call(
      {String? name,
      String? slug,
      @JsonKey(defaultValue: false) bool? isSelected}) {
    return _VariationAttribute(
      name: name,
      slug: slug,
      isSelected: isSelected,
    );
  }

  VariationAttribute fromJson(Map<String, Object?> json) {
    return VariationAttribute.fromJson(json);
  }
}

/// @nodoc
const $VariationAttribute = _$VariationAttributeTearOff();

/// @nodoc
mixin _$VariationAttribute {
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariationAttributeCopyWith<VariationAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationAttributeCopyWith<$Res> {
  factory $VariationAttributeCopyWith(
          VariationAttribute value, $Res Function(VariationAttribute) then) =
      _$VariationAttributeCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? slug,
      @JsonKey(defaultValue: false) bool? isSelected});
}

/// @nodoc
class _$VariationAttributeCopyWithImpl<$Res>
    implements $VariationAttributeCopyWith<$Res> {
  _$VariationAttributeCopyWithImpl(this._value, this._then);

  final VariationAttribute _value;
  // ignore: unused_field
  final $Res Function(VariationAttribute) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$VariationAttributeCopyWith<$Res>
    implements $VariationAttributeCopyWith<$Res> {
  factory _$VariationAttributeCopyWith(
          _VariationAttribute value, $Res Function(_VariationAttribute) then) =
      __$VariationAttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? slug,
      @JsonKey(defaultValue: false) bool? isSelected});
}

/// @nodoc
class __$VariationAttributeCopyWithImpl<$Res>
    extends _$VariationAttributeCopyWithImpl<$Res>
    implements _$VariationAttributeCopyWith<$Res> {
  __$VariationAttributeCopyWithImpl(
      _VariationAttribute _value, $Res Function(_VariationAttribute) _then)
      : super(_value, (v) => _then(v as _VariationAttribute));

  @override
  _VariationAttribute get _value => super._value as _VariationAttribute;

  @override
  $Res call({
    Object? name = freezed,
    Object? slug = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_VariationAttribute(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariationAttribute implements _VariationAttribute {
  const _$_VariationAttribute(
      {this.name, this.slug, @JsonKey(defaultValue: false) this.isSelected});

  factory _$_VariationAttribute.fromJson(Map<String, dynamic> json) =>
      _$$_VariationAttributeFromJson(json);

  @override
  final String? name;
  @override
  final String? slug;
  @override
  @JsonKey(defaultValue: false)
  final bool? isSelected;

  @override
  String toString() {
    return 'VariationAttribute(name: $name, slug: $slug, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VariationAttribute &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(isSelected));

  @JsonKey(ignore: true)
  @override
  _$VariationAttributeCopyWith<_VariationAttribute> get copyWith =>
      __$VariationAttributeCopyWithImpl<_VariationAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariationAttributeToJson(this);
  }
}

abstract class _VariationAttribute implements VariationAttribute {
  const factory _VariationAttribute(
      {String? name,
      String? slug,
      @JsonKey(defaultValue: false) bool? isSelected}) = _$_VariationAttribute;

  factory _VariationAttribute.fromJson(Map<String, dynamic> json) =
      _$_VariationAttribute.fromJson;

  @override
  String? get name;
  @override
  String? get slug;
  @override
  @JsonKey(defaultValue: false)
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$VariationAttributeCopyWith<_VariationAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}
