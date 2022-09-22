// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shipping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingClasses _$ShippingClassesFromJson(Map<String, dynamic> json) {
  return _ShippingClasses.fromJson(json);
}

/// @nodoc
class _$ShippingClassesTearOff {
  const _$ShippingClassesTearOff();

  _ShippingClasses call(
      {String? status,
      String? message,
      @JsonKey(name: 'data') List<ShippingClass>? shippingClass}) {
    return _ShippingClasses(
      status: status,
      message: message,
      shippingClass: shippingClass,
    );
  }

  ShippingClasses fromJson(Map<String, Object?> json) {
    return ShippingClasses.fromJson(json);
  }
}

/// @nodoc
const $ShippingClasses = _$ShippingClassesTearOff();

/// @nodoc
mixin _$ShippingClasses {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<ShippingClass>? get shippingClass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingClassesCopyWith<ShippingClasses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingClassesCopyWith<$Res> {
  factory $ShippingClassesCopyWith(
          ShippingClasses value, $Res Function(ShippingClasses) then) =
      _$ShippingClassesCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      String? message,
      @JsonKey(name: 'data') List<ShippingClass>? shippingClass});
}

/// @nodoc
class _$ShippingClassesCopyWithImpl<$Res>
    implements $ShippingClassesCopyWith<$Res> {
  _$ShippingClassesCopyWithImpl(this._value, this._then);

  final ShippingClasses _value;
  // ignore: unused_field
  final $Res Function(ShippingClasses) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? shippingClass = freezed,
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
      shippingClass: shippingClass == freezed
          ? _value.shippingClass
          : shippingClass // ignore: cast_nullable_to_non_nullable
              as List<ShippingClass>?,
    ));
  }
}

/// @nodoc
abstract class _$ShippingClassesCopyWith<$Res>
    implements $ShippingClassesCopyWith<$Res> {
  factory _$ShippingClassesCopyWith(
          _ShippingClasses value, $Res Function(_ShippingClasses) then) =
      __$ShippingClassesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      String? message,
      @JsonKey(name: 'data') List<ShippingClass>? shippingClass});
}

/// @nodoc
class __$ShippingClassesCopyWithImpl<$Res>
    extends _$ShippingClassesCopyWithImpl<$Res>
    implements _$ShippingClassesCopyWith<$Res> {
  __$ShippingClassesCopyWithImpl(
      _ShippingClasses _value, $Res Function(_ShippingClasses) _then)
      : super(_value, (v) => _then(v as _ShippingClasses));

  @override
  _ShippingClasses get _value => super._value as _ShippingClasses;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? shippingClass = freezed,
  }) {
    return _then(_ShippingClasses(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingClass: shippingClass == freezed
          ? _value.shippingClass
          : shippingClass // ignore: cast_nullable_to_non_nullable
              as List<ShippingClass>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingClasses implements _ShippingClasses {
  const _$_ShippingClasses(
      {this.status, this.message, @JsonKey(name: 'data') this.shippingClass});

  factory _$_ShippingClasses.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingClassesFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  @JsonKey(name: 'data')
  final List<ShippingClass>? shippingClass;

  @override
  String toString() {
    return 'ShippingClasses(status: $status, message: $message, shippingClass: $shippingClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShippingClasses &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.shippingClass, shippingClass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(shippingClass));

  @JsonKey(ignore: true)
  @override
  _$ShippingClassesCopyWith<_ShippingClasses> get copyWith =>
      __$ShippingClassesCopyWithImpl<_ShippingClasses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingClassesToJson(this);
  }
}

abstract class _ShippingClasses implements ShippingClasses {
  const factory _ShippingClasses(
          {String? status,
          String? message,
          @JsonKey(name: 'data') List<ShippingClass>? shippingClass}) =
      _$_ShippingClasses;

  factory _ShippingClasses.fromJson(Map<String, dynamic> json) =
      _$_ShippingClasses.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<ShippingClass>? get shippingClass;
  @override
  @JsonKey(ignore: true)
  _$ShippingClassesCopyWith<_ShippingClasses> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingClass _$ShippingClassFromJson(Map<String, dynamic> json) {
  return _ShippingClass.fromJson(json);
}

/// @nodoc
class _$ShippingClassTearOff {
  const _$ShippingClassTearOff();

  _ShippingClass call(
      {@JsonKey(name: 'term_id') dynamic termId,
      dynamic name,
      dynamic slug,
      @JsonKey(name: 'term_group') dynamic termGroup,
      @JsonKey(name: 'term_taxonomy_id') dynamic termTaxonomyId,
      dynamic taxonomy,
      dynamic description,
      dynamic parent,
      dynamic count,
      dynamic filter}) {
    return _ShippingClass(
      termId: termId,
      name: name,
      slug: slug,
      termGroup: termGroup,
      termTaxonomyId: termTaxonomyId,
      taxonomy: taxonomy,
      description: description,
      parent: parent,
      count: count,
      filter: filter,
    );
  }

  ShippingClass fromJson(Map<String, Object?> json) {
    return ShippingClass.fromJson(json);
  }
}

/// @nodoc
const $ShippingClass = _$ShippingClassTearOff();

/// @nodoc
mixin _$ShippingClass {
  @JsonKey(name: 'term_id')
  dynamic get termId => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'term_group')
  dynamic get termGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'term_taxonomy_id')
  dynamic get termTaxonomyId => throw _privateConstructorUsedError;
  dynamic get taxonomy => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get parent => throw _privateConstructorUsedError;
  dynamic get count => throw _privateConstructorUsedError;
  dynamic get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingClassCopyWith<ShippingClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingClassCopyWith<$Res> {
  factory $ShippingClassCopyWith(
          ShippingClass value, $Res Function(ShippingClass) then) =
      _$ShippingClassCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'term_id') dynamic termId,
      dynamic name,
      dynamic slug,
      @JsonKey(name: 'term_group') dynamic termGroup,
      @JsonKey(name: 'term_taxonomy_id') dynamic termTaxonomyId,
      dynamic taxonomy,
      dynamic description,
      dynamic parent,
      dynamic count,
      dynamic filter});
}

/// @nodoc
class _$ShippingClassCopyWithImpl<$Res>
    implements $ShippingClassCopyWith<$Res> {
  _$ShippingClassCopyWithImpl(this._value, this._then);

  final ShippingClass _value;
  // ignore: unused_field
  final $Res Function(ShippingClass) _then;

  @override
  $Res call({
    Object? termId = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? termGroup = freezed,
    Object? termTaxonomyId = freezed,
    Object? taxonomy = freezed,
    Object? description = freezed,
    Object? parent = freezed,
    Object? count = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as dynamic,
      termGroup: termGroup == freezed
          ? _value.termGroup
          : termGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      termTaxonomyId: termTaxonomyId == freezed
          ? _value.termTaxonomyId
          : termTaxonomyId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxonomy: taxonomy == freezed
          ? _value.taxonomy
          : taxonomy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ShippingClassCopyWith<$Res>
    implements $ShippingClassCopyWith<$Res> {
  factory _$ShippingClassCopyWith(
          _ShippingClass value, $Res Function(_ShippingClass) then) =
      __$ShippingClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'term_id') dynamic termId,
      dynamic name,
      dynamic slug,
      @JsonKey(name: 'term_group') dynamic termGroup,
      @JsonKey(name: 'term_taxonomy_id') dynamic termTaxonomyId,
      dynamic taxonomy,
      dynamic description,
      dynamic parent,
      dynamic count,
      dynamic filter});
}

/// @nodoc
class __$ShippingClassCopyWithImpl<$Res>
    extends _$ShippingClassCopyWithImpl<$Res>
    implements _$ShippingClassCopyWith<$Res> {
  __$ShippingClassCopyWithImpl(
      _ShippingClass _value, $Res Function(_ShippingClass) _then)
      : super(_value, (v) => _then(v as _ShippingClass));

  @override
  _ShippingClass get _value => super._value as _ShippingClass;

  @override
  $Res call({
    Object? termId = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? termGroup = freezed,
    Object? termTaxonomyId = freezed,
    Object? taxonomy = freezed,
    Object? description = freezed,
    Object? parent = freezed,
    Object? count = freezed,
    Object? filter = freezed,
  }) {
    return _then(_ShippingClass(
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as dynamic,
      termGroup: termGroup == freezed
          ? _value.termGroup
          : termGroup // ignore: cast_nullable_to_non_nullable
              as dynamic,
      termTaxonomyId: termTaxonomyId == freezed
          ? _value.termTaxonomyId
          : termTaxonomyId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxonomy: taxonomy == freezed
          ? _value.taxonomy
          : taxonomy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as dynamic,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingClass implements _ShippingClass {
  const _$_ShippingClass(
      {@JsonKey(name: 'term_id') this.termId,
      this.name,
      this.slug,
      @JsonKey(name: 'term_group') this.termGroup,
      @JsonKey(name: 'term_taxonomy_id') this.termTaxonomyId,
      this.taxonomy,
      this.description,
      this.parent,
      this.count,
      this.filter});

  factory _$_ShippingClass.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingClassFromJson(json);

  @override
  @JsonKey(name: 'term_id')
  final dynamic termId;
  @override
  final dynamic name;
  @override
  final dynamic slug;
  @override
  @JsonKey(name: 'term_group')
  final dynamic termGroup;
  @override
  @JsonKey(name: 'term_taxonomy_id')
  final dynamic termTaxonomyId;
  @override
  final dynamic taxonomy;
  @override
  final dynamic description;
  @override
  final dynamic parent;
  @override
  final dynamic count;
  @override
  final dynamic filter;

  @override
  String toString() {
    return 'ShippingClass(termId: $termId, name: $name, slug: $slug, termGroup: $termGroup, termTaxonomyId: $termTaxonomyId, taxonomy: $taxonomy, description: $description, parent: $parent, count: $count, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShippingClass &&
            const DeepCollectionEquality().equals(other.termId, termId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.termGroup, termGroup) &&
            const DeepCollectionEquality()
                .equals(other.termTaxonomyId, termTaxonomyId) &&
            const DeepCollectionEquality().equals(other.taxonomy, taxonomy) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(termId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(termGroup),
      const DeepCollectionEquality().hash(termTaxonomyId),
      const DeepCollectionEquality().hash(taxonomy),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(parent),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$ShippingClassCopyWith<_ShippingClass> get copyWith =>
      __$ShippingClassCopyWithImpl<_ShippingClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingClassToJson(this);
  }
}

abstract class _ShippingClass implements ShippingClass {
  const factory _ShippingClass(
      {@JsonKey(name: 'term_id') dynamic termId,
      dynamic name,
      dynamic slug,
      @JsonKey(name: 'term_group') dynamic termGroup,
      @JsonKey(name: 'term_taxonomy_id') dynamic termTaxonomyId,
      dynamic taxonomy,
      dynamic description,
      dynamic parent,
      dynamic count,
      dynamic filter}) = _$_ShippingClass;

  factory _ShippingClass.fromJson(Map<String, dynamic> json) =
      _$_ShippingClass.fromJson;

  @override
  @JsonKey(name: 'term_id')
  dynamic get termId;
  @override
  dynamic get name;
  @override
  dynamic get slug;
  @override
  @JsonKey(name: 'term_group')
  dynamic get termGroup;
  @override
  @JsonKey(name: 'term_taxonomy_id')
  dynamic get termTaxonomyId;
  @override
  dynamic get taxonomy;
  @override
  dynamic get description;
  @override
  dynamic get parent;
  @override
  dynamic get count;
  @override
  dynamic get filter;
  @override
  @JsonKey(ignore: true)
  _$ShippingClassCopyWith<_ShippingClass> get copyWith =>
      throw _privateConstructorUsedError;
}
