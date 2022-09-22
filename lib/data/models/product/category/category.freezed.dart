// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategories _$ProductCategoriesFromJson(Map<String, dynamic> json) {
  return _ProductCategories.fromJson(json);
}

/// @nodoc
class _$ProductCategoriesTearOff {
  const _$ProductCategoriesTearOff();

  _ProductCategories call(
      {@JsonKey(name: 'categories') List<ProductCategory>? categories}) {
    return _ProductCategories(
      categories: categories,
    );
  }

  ProductCategories fromJson(Map<String, Object?> json) {
    return ProductCategories.fromJson(json);
  }
}

/// @nodoc
const $ProductCategories = _$ProductCategoriesTearOff();

/// @nodoc
mixin _$ProductCategories {
  @JsonKey(name: 'categories')
  List<ProductCategory>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoriesCopyWith<ProductCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoriesCopyWith<$Res> {
  factory $ProductCategoriesCopyWith(
          ProductCategories value, $Res Function(ProductCategories) then) =
      _$ProductCategoriesCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'categories') List<ProductCategory>? categories});
}

/// @nodoc
class _$ProductCategoriesCopyWithImpl<$Res>
    implements $ProductCategoriesCopyWith<$Res> {
  _$ProductCategoriesCopyWithImpl(this._value, this._then);

  final ProductCategories _value;
  // ignore: unused_field
  final $Res Function(ProductCategories) _then;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductCategoriesCopyWith<$Res>
    implements $ProductCategoriesCopyWith<$Res> {
  factory _$ProductCategoriesCopyWith(
          _ProductCategories value, $Res Function(_ProductCategories) then) =
      __$ProductCategoriesCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'categories') List<ProductCategory>? categories});
}

/// @nodoc
class __$ProductCategoriesCopyWithImpl<$Res>
    extends _$ProductCategoriesCopyWithImpl<$Res>
    implements _$ProductCategoriesCopyWith<$Res> {
  __$ProductCategoriesCopyWithImpl(
      _ProductCategories _value, $Res Function(_ProductCategories) _then)
      : super(_value, (v) => _then(v as _ProductCategories));

  @override
  _ProductCategories get _value => super._value as _ProductCategories;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_ProductCategories(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategories implements _ProductCategories {
  const _$_ProductCategories({@JsonKey(name: 'categories') this.categories});

  factory _$_ProductCategories.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoriesFromJson(json);

  @override
  @JsonKey(name: 'categories')
  final List<ProductCategory>? categories;

  @override
  String toString() {
    return 'ProductCategories(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCategories &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$ProductCategoriesCopyWith<_ProductCategories> get copyWith =>
      __$ProductCategoriesCopyWithImpl<_ProductCategories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoriesToJson(this);
  }
}

abstract class _ProductCategories implements ProductCategories {
  const factory _ProductCategories(
          {@JsonKey(name: 'categories') List<ProductCategory>? categories}) =
      _$_ProductCategories;

  factory _ProductCategories.fromJson(Map<String, dynamic> json) =
      _$_ProductCategories.fromJson;

  @override
  @JsonKey(name: 'categories')
  List<ProductCategory>? get categories;
  @override
  @JsonKey(ignore: true)
  _$ProductCategoriesCopyWith<_ProductCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
class _$ProductCategoryTearOff {
  const _$ProductCategoryTearOff();

  _ProductCategory call(
      {int? id,
      String? name,
      int? parent,
      String? description,
      String? display,
      String? image,
      @JsonKey(name: 'menu_order') int? menuOrder,
      int? count,
      bool? isSelected}) {
    return _ProductCategory(
      id: id,
      name: name,
      parent: parent,
      description: description,
      display: display,
      image: image,
      menuOrder: menuOrder,
      count: count,
      isSelected: isSelected,
    );
  }

  ProductCategory fromJson(Map<String, Object?> json) {
    return ProductCategory.fromJson(json);
  }
}

/// @nodoc
const $ProductCategory = _$ProductCategoryTearOff();

/// @nodoc
mixin _$ProductCategory {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get parent => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_order')
  int? get menuOrder => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      int? parent,
      String? description,
      String? display,
      String? image,
      @JsonKey(name: 'menu_order') int? menuOrder,
      int? count,
      bool? isSelected});
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  final ProductCategory _value;
  // ignore: unused_field
  final $Res Function(ProductCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parent = freezed,
    Object? description = freezed,
    Object? display = freezed,
    Object? image = freezed,
    Object? menuOrder = freezed,
    Object? count = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      menuOrder: menuOrder == freezed
          ? _value.menuOrder
          : menuOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ProductCategoryCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$ProductCategoryCopyWith(
          _ProductCategory value, $Res Function(_ProductCategory) then) =
      __$ProductCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      int? parent,
      String? description,
      String? display,
      String? image,
      @JsonKey(name: 'menu_order') int? menuOrder,
      int? count,
      bool? isSelected});
}

/// @nodoc
class __$ProductCategoryCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res>
    implements _$ProductCategoryCopyWith<$Res> {
  __$ProductCategoryCopyWithImpl(
      _ProductCategory _value, $Res Function(_ProductCategory) _then)
      : super(_value, (v) => _then(v as _ProductCategory));

  @override
  _ProductCategory get _value => super._value as _ProductCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parent = freezed,
    Object? description = freezed,
    Object? display = freezed,
    Object? image = freezed,
    Object? menuOrder = freezed,
    Object? count = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_ProductCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      menuOrder: menuOrder == freezed
          ? _value.menuOrder
          : menuOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategory implements _ProductCategory {
  const _$_ProductCategory(
      {this.id,
      this.name,
      this.parent,
      this.description,
      this.display,
      this.image,
      @JsonKey(name: 'menu_order') this.menuOrder,
      this.count,
      this.isSelected});

  factory _$_ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoryFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? parent;
  @override
  final String? description;
  @override
  final String? display;
  @override
  final String? image;
  @override
  @JsonKey(name: 'menu_order')
  final int? menuOrder;
  @override
  final int? count;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'ProductCategory(id: $id, name: $name, parent: $parent, description: $description, display: $display, image: $image, menuOrder: $menuOrder, count: $count, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.parent, parent) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.display, display) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.menuOrder, menuOrder) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(parent),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(display),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(menuOrder),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(isSelected));

  @JsonKey(ignore: true)
  @override
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith =>
      __$ProductCategoryCopyWithImpl<_ProductCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoryToJson(this);
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
      {int? id,
      String? name,
      int? parent,
      String? description,
      String? display,
      String? image,
      @JsonKey(name: 'menu_order') int? menuOrder,
      int? count,
      bool? isSelected}) = _$_ProductCategory;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$_ProductCategory.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get parent;
  @override
  String? get description;
  @override
  String? get display;
  @override
  String? get image;
  @override
  @JsonKey(name: 'menu_order')
  int? get menuOrder;
  @override
  int? get count;
  @override
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
