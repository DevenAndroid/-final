// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchProduct _$SearchProductFromJson(Map<String, dynamic> json) {
  return _SearchProduct.fromJson(json);
}

/// @nodoc
class _$SearchProductTearOff {
  const _$SearchProductTearOff();

  _SearchProduct call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "type") dynamic type,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "image_url") dynamic imageUrl,
      @JsonKey(name: "price") dynamic price,
      @JsonKey(name: "price_html") dynamic priceHtml,
      @JsonKey(name: "sale_price") dynamic salePrice,
      @JsonKey(name: "regular_price") dynamic regularPrice,
      @JsonKey(name: "stock_quantity") dynamic quantity}) {
    return _SearchProduct(
      id: id,
      name: name,
      type: type,
      description: description,
      imageUrl: imageUrl,
      price: price,
      priceHtml: priceHtml,
      salePrice: salePrice,
      regularPrice: regularPrice,
      quantity: quantity,
    );
  }

  SearchProduct fromJson(Map<String, Object?> json) {
    return SearchProduct.fromJson(json);
  }
}

/// @nodoc
const $SearchProduct = _$SearchProductTearOff();

/// @nodoc
mixin _$SearchProduct {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  dynamic get name => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  dynamic get type => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchProductCopyWith<SearchProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductCopyWith<$Res> {
  factory $SearchProductCopyWith(
          SearchProduct value, $Res Function(SearchProduct) then) =
      _$SearchProductCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "type") dynamic type,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "image_url") dynamic imageUrl,
      @JsonKey(name: "price") dynamic price,
      @JsonKey(name: "price_html") dynamic priceHtml,
      @JsonKey(name: "sale_price") dynamic salePrice,
      @JsonKey(name: "regular_price") dynamic regularPrice,
      @JsonKey(name: "stock_quantity") dynamic quantity});
}

/// @nodoc
class _$SearchProductCopyWithImpl<$Res>
    implements $SearchProductCopyWith<$Res> {
  _$SearchProductCopyWithImpl(this._value, this._then);

  final SearchProduct _value;
  // ignore: unused_field
  final $Res Function(SearchProduct) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? priceHtml = freezed,
    Object? salePrice = freezed,
    Object? regularPrice = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    ));
  }
}

/// @nodoc
abstract class _$SearchProductCopyWith<$Res>
    implements $SearchProductCopyWith<$Res> {
  factory _$SearchProductCopyWith(
          _SearchProduct value, $Res Function(_SearchProduct) then) =
      __$SearchProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "type") dynamic type,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "image_url") dynamic imageUrl,
      @JsonKey(name: "price") dynamic price,
      @JsonKey(name: "price_html") dynamic priceHtml,
      @JsonKey(name: "sale_price") dynamic salePrice,
      @JsonKey(name: "regular_price") dynamic regularPrice,
      @JsonKey(name: "stock_quantity") dynamic quantity});
}

/// @nodoc
class __$SearchProductCopyWithImpl<$Res>
    extends _$SearchProductCopyWithImpl<$Res>
    implements _$SearchProductCopyWith<$Res> {
  __$SearchProductCopyWithImpl(
      _SearchProduct _value, $Res Function(_SearchProduct) _then)
      : super(_value, (v) => _then(v as _SearchProduct));

  @override
  _SearchProduct get _value => super._value as _SearchProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? priceHtml = freezed,
    Object? salePrice = freezed,
    Object? regularPrice = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_SearchProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchProduct implements _SearchProduct {
  const _$_SearchProduct(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "price") this.price,
      @JsonKey(name: "price_html") this.priceHtml,
      @JsonKey(name: "sale_price") this.salePrice,
      @JsonKey(name: "regular_price") this.regularPrice,
      @JsonKey(name: "stock_quantity") this.quantity});

  factory _$_SearchProduct.fromJson(Map<String, dynamic> json) =>
      _$$_SearchProductFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final dynamic name;
  @override
  @JsonKey(name: "type")
  final dynamic type;
  @override
  @JsonKey(name: "description")
  final dynamic description;
  @override
  @JsonKey(name: "image_url")
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
  String toString() {
    return 'SearchProduct(id: $id, name: $name, type: $type, description: $description, imageUrl: $imageUrl, price: $price, priceHtml: $priceHtml, salePrice: $salePrice, regularPrice: $regularPrice, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchProduct &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.priceHtml, priceHtml) &&
            const DeepCollectionEquality().equals(other.salePrice, salePrice) &&
            const DeepCollectionEquality()
                .equals(other.regularPrice, regularPrice) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(priceHtml),
      const DeepCollectionEquality().hash(salePrice),
      const DeepCollectionEquality().hash(regularPrice),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$SearchProductCopyWith<_SearchProduct> get copyWith =>
      __$SearchProductCopyWithImpl<_SearchProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchProductToJson(this);
  }
}

abstract class _SearchProduct implements SearchProduct {
  const factory _SearchProduct(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "type") dynamic type,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "image_url") dynamic imageUrl,
      @JsonKey(name: "price") dynamic price,
      @JsonKey(name: "price_html") dynamic priceHtml,
      @JsonKey(name: "sale_price") dynamic salePrice,
      @JsonKey(name: "regular_price") dynamic regularPrice,
      @JsonKey(name: "stock_quantity") dynamic quantity}) = _$_SearchProduct;

  factory _SearchProduct.fromJson(Map<String, dynamic> json) =
      _$_SearchProduct.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  dynamic get name;
  @override
  @JsonKey(name: "type")
  dynamic get type;
  @override
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @JsonKey(name: "image_url")
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
  @JsonKey(ignore: true)
  _$SearchProductCopyWith<_SearchProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
