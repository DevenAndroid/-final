// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreOrderDetail _$StoreOrderDetailFromJson(Map<String, dynamic> json) {
  return _StoreOrderDetail.fromJson(json);
}

/// @nodoc
class _$StoreOrderDetailTearOff {
  const _$StoreOrderDetailTearOff();

  _StoreOrderDetail call(
      {int? id,
      String? status,
      @JsonKey(name: 'shipping_total') String? shippingTotal,
      @JsonKey(name: 'total_tax') String? totalTax,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'payment_method_title') String? paymentMethodTitle,
      @JsonKey(name: 'date_created') String? createDate,
      @JsonKey(name: 'line_items') List<ProductLineItem>? lineItems,
      @JsonKey(name: 'billing') BillingDetail? billing,
      @JsonKey(name: 'shipping_lines') List<ShippingLines>? shippingLines}) {
    return _StoreOrderDetail(
      id: id,
      status: status,
      shippingTotal: shippingTotal,
      totalTax: totalTax,
      currencySymbol: currencySymbol,
      paymentMethodTitle: paymentMethodTitle,
      createDate: createDate,
      lineItems: lineItems,
      billing: billing,
      shippingLines: shippingLines,
    );
  }

  StoreOrderDetail fromJson(Map<String, Object?> json) {
    return StoreOrderDetail.fromJson(json);
  }
}

/// @nodoc
const $StoreOrderDetail = _$StoreOrderDetailTearOff();

/// @nodoc
mixin _$StoreOrderDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_total')
  String? get shippingTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  String? get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  String? get orderTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_title')
  String? get paymentMethodTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  String? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_items')
  List<ProductLineItem>? get lineItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'billing')
  BillingDetail? get billing => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_lines')
  List<ShippingLines>? get shippingLines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreOrderDetailCopyWith<StoreOrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreOrderDetailCopyWith<$Res> {
  factory $StoreOrderDetailCopyWith(
          StoreOrderDetail value, $Res Function(StoreOrderDetail) then) =
      _$StoreOrderDetailCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? status,
      @JsonKey(name: 'shipping_total') String? shippingTotal,
      @JsonKey(name: 'total_tax') String? totalTax,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'payment_method_title') String? paymentMethodTitle,
      @JsonKey(name: 'date_created') String? createDate,
      @JsonKey(name: 'line_items') List<ProductLineItem>? lineItems,
      @JsonKey(name: 'billing') BillingDetail? billing,
      @JsonKey(name: 'shipping_lines') List<ShippingLines>? shippingLines});

  $BillingDetailCopyWith<$Res>? get billing;
}

/// @nodoc
class _$StoreOrderDetailCopyWithImpl<$Res>
    implements $StoreOrderDetailCopyWith<$Res> {
  _$StoreOrderDetailCopyWithImpl(this._value, this._then);

  final StoreOrderDetail _value;
  // ignore: unused_field
  final $Res Function(StoreOrderDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? shippingTotal = freezed,
    Object? totalTax = freezed,
    Object? currencySymbol = freezed,
    Object? paymentMethodTitle = freezed,
    Object? createDate = freezed,
    Object? lineItems = freezed,
    Object? billing = freezed,
    Object? shippingLines = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingTotal: shippingTotal == freezed
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: currencySymbol == freezed
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodTitle: paymentMethodTitle == freezed
          ? _value.paymentMethodTitle
          : paymentMethodTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: lineItems == freezed
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<ProductLineItem>?,
      billing: billing == freezed
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as BillingDetail?,
      shippingLines: shippingLines == freezed
          ? _value.shippingLines
          : shippingLines // ignore: cast_nullable_to_non_nullable
              as List<ShippingLines>?,
    ));
  }

  @override
  $BillingDetailCopyWith<$Res>? get billing {
    if (_value.billing == null) {
      return null;
    }

    return $BillingDetailCopyWith<$Res>(_value.billing!, (value) {
      return _then(_value.copyWith(billing: value));
    });
  }
}

/// @nodoc
abstract class _$StoreOrderDetailCopyWith<$Res>
    implements $StoreOrderDetailCopyWith<$Res> {
  factory _$StoreOrderDetailCopyWith(
          _StoreOrderDetail value, $Res Function(_StoreOrderDetail) then) =
      __$StoreOrderDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? status,
      @JsonKey(name: 'shipping_total') String? shippingTotal,
      @JsonKey(name: 'total_tax') String? totalTax,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'payment_method_title') String? paymentMethodTitle,
      @JsonKey(name: 'date_created') String? createDate,
      @JsonKey(name: 'line_items') List<ProductLineItem>? lineItems,
      @JsonKey(name: 'billing') BillingDetail? billing,
      @JsonKey(name: 'shipping_lines') List<ShippingLines>? shippingLines});

  @override
  $BillingDetailCopyWith<$Res>? get billing;
}

/// @nodoc
class __$StoreOrderDetailCopyWithImpl<$Res>
    extends _$StoreOrderDetailCopyWithImpl<$Res>
    implements _$StoreOrderDetailCopyWith<$Res> {
  __$StoreOrderDetailCopyWithImpl(
      _StoreOrderDetail _value, $Res Function(_StoreOrderDetail) _then)
      : super(_value, (v) => _then(v as _StoreOrderDetail));

  @override
  _StoreOrderDetail get _value => super._value as _StoreOrderDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? shippingTotal = freezed,
    Object? totalTax = freezed,
    Object? currencySymbol = freezed,
    Object? paymentMethodTitle = freezed,
    Object? createDate = freezed,
    Object? lineItems = freezed,
    Object? billing = freezed,
    Object? shippingLines = freezed,
  }) {
    return _then(_StoreOrderDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingTotal: shippingTotal == freezed
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: currencySymbol == freezed
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodTitle: paymentMethodTitle == freezed
          ? _value.paymentMethodTitle
          : paymentMethodTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: lineItems == freezed
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<ProductLineItem>?,
      billing: billing == freezed
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as BillingDetail?,
      shippingLines: shippingLines == freezed
          ? _value.shippingLines
          : shippingLines // ignore: cast_nullable_to_non_nullable
              as List<ShippingLines>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreOrderDetail implements _StoreOrderDetail {
  _$_StoreOrderDetail(
      {this.id,
      this.status,
      @JsonKey(name: 'shipping_total') this.shippingTotal,
      @JsonKey(name: 'total_tax') this.totalTax,
      @JsonKey(name: 'total') this.orderTotal,
      @JsonKey(name: 'currency_symbol') this.currencySymbol,
      @JsonKey(name: 'payment_method_title') this.paymentMethodTitle,
      @JsonKey(name: 'date_created') this.createDate,
      @JsonKey(name: 'line_items') this.lineItems,
      @JsonKey(name: 'billing') this.billing,
      @JsonKey(name: 'shipping_lines') this.shippingLines});

  factory _$_StoreOrderDetail.fromJson(Map<String, dynamic> json) =>
      _$$_StoreOrderDetailFromJson(json);

  @override
  final int? id;
  @override
  final String? status;
  @override
  @JsonKey(name: 'shipping_total')
  final String? shippingTotal;
  @override
  @JsonKey(name: 'total_tax')
  final String? totalTax;
  @override
  @JsonKey(name: 'total')
  final String? orderTotal;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  @JsonKey(name: 'payment_method_title')
  final String? paymentMethodTitle;
  @override
  @JsonKey(name: 'date_created')
  final String? createDate;
  @override
  @JsonKey(name: 'line_items')
  final List<ProductLineItem>? lineItems;
  @override
  @JsonKey(name: 'billing')
  final BillingDetail? billing;
  @override
  @JsonKey(name: 'shipping_lines')
  final List<ShippingLines>? shippingLines;

  @override
  String toString() {
    return 'StoreOrderDetail(id: $id, status: $status, shippingTotal: $shippingTotal, totalTax: $totalTax, currencySymbol: $currencySymbol, paymentMethodTitle: $paymentMethodTitle, createDate: $createDate, lineItems: $lineItems, billing: $billing, shippingLines: $shippingLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreOrderDetail &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.shippingTotal, shippingTotal) &&
            const DeepCollectionEquality().equals(other.totalTax, totalTax) &&
            const DeepCollectionEquality()
                .equals(other.currencySymbol, currencySymbol) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethodTitle, paymentMethodTitle) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate) &&
            const DeepCollectionEquality().equals(other.lineItems, lineItems) &&
            const DeepCollectionEquality().equals(other.billing, billing) &&
            const DeepCollectionEquality()
                .equals(other.shippingLines, shippingLines));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(shippingTotal),
      const DeepCollectionEquality().hash(totalTax),
      const DeepCollectionEquality().hash(currencySymbol),
      const DeepCollectionEquality().hash(paymentMethodTitle),
      const DeepCollectionEquality().hash(createDate),
      const DeepCollectionEquality().hash(lineItems),
      const DeepCollectionEquality().hash(billing),
      const DeepCollectionEquality().hash(shippingLines));

  @JsonKey(ignore: true)
  @override
  _$StoreOrderDetailCopyWith<_StoreOrderDetail> get copyWith =>
      __$StoreOrderDetailCopyWithImpl<_StoreOrderDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreOrderDetailToJson(this);
  }
}

abstract class _StoreOrderDetail implements StoreOrderDetail {
   factory _StoreOrderDetail(
      {int? id,
      String? status,
      @JsonKey(name: 'shipping_total')
          String? shippingTotal,
      @JsonKey(name: 'total_tax')
          String? totalTax,
        @JsonKey(name: 'total')
        String? orderTotal,
      @JsonKey(name: 'currency_symbol')
          String? currencySymbol,
      @JsonKey(name: 'payment_method_title')
          String? paymentMethodTitle,
      @JsonKey(name: 'date_created')
          String? createDate,
      @JsonKey(name: 'line_items')
          List<ProductLineItem>? lineItems,
      @JsonKey(name: 'billing')
          BillingDetail? billing,
      @JsonKey(name: 'shipping_lines')
          List<ShippingLines>? shippingLines}) = _$_StoreOrderDetail;

  factory _StoreOrderDetail.fromJson(Map<String, dynamic> json) =
      _$_StoreOrderDetail.fromJson;

  @override
  int? get id;
  @override
  String? get status;
  @override
  @JsonKey(name: 'shipping_total')
  String? get shippingTotal;
  @override
  @JsonKey(name: 'total_tax')
  String? get totalTax;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol;
  @override
  @JsonKey(name: 'payment_method_title')
  String? get paymentMethodTitle;
  @override
  @JsonKey(name: 'date_created')
  String? get createDate;
  @override
  @JsonKey(name: 'line_items')
  List<ProductLineItem>? get lineItems;
  @override
  @JsonKey(name: 'billing')
  BillingDetail? get billing;
  @override
  @JsonKey(name: 'shipping_lines')
  List<ShippingLines>? get shippingLines;
  @override
  @JsonKey(ignore: true)
  _$StoreOrderDetailCopyWith<_StoreOrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductLineItem _$ProductLineItemFromJson(Map<String, dynamic> json) {
  return _ProductLineItem.fromJson(json);
}

/// @nodoc
class _$ProductLineItemTearOff {
  const _$ProductLineItemTearOff();

  _ProductLineItem call(
      {int? id,
      String? name,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'variation_id') int? variationId,
      int? quantity,
      String? sku,
      double? price,
      String? total,
      @JsonKey(name: 'total_tax') String? totalTax,
      String? subtotal,
      @JsonKey(name: 'subtotal_tax') String? subtotalTax}) {
    return _ProductLineItem(
      id: id,
      name: name,
      productId: productId,
      variationId: variationId,
      quantity: quantity,
      sku: sku,
      price: price,
      total: total,
      totalTax: totalTax,
      subtotal: subtotal,
      subtotalTax: subtotalTax,
    );
  }

  ProductLineItem fromJson(Map<String, Object?> json) {
    return ProductLineItem.fromJson(json);
  }
}

/// @nodoc
const $ProductLineItem = _$ProductLineItemTearOff();

/// @nodoc
mixin _$ProductLineItem {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'variation_id')
  int? get variationId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  String? get totalTax => throw _privateConstructorUsedError;
  String? get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal_tax')
  String? get subtotalTax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductLineItemCopyWith<ProductLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductLineItemCopyWith<$Res> {
  factory $ProductLineItemCopyWith(
          ProductLineItem value, $Res Function(ProductLineItem) then) =
      _$ProductLineItemCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'variation_id') int? variationId,
      int? quantity,
      String? sku,
      double? price,
      String? total,
      @JsonKey(name: 'total_tax') String? totalTax,
      String? subtotal,
      @JsonKey(name: 'subtotal_tax') String? subtotalTax});
}

/// @nodoc
class _$ProductLineItemCopyWithImpl<$Res>
    implements $ProductLineItemCopyWith<$Res> {
  _$ProductLineItemCopyWithImpl(this._value, this._then);

  final ProductLineItem _value;
  // ignore: unused_field
  final $Res Function(ProductLineItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? productId = freezed,
    Object? variationId = freezed,
    Object? quantity = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? total = freezed,
    Object? totalTax = freezed,
    Object? subtotal = freezed,
    Object? subtotalTax = freezed,
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
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      variationId: variationId == freezed
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotalTax: subtotalTax == freezed
          ? _value.subtotalTax
          : subtotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductLineItemCopyWith<$Res>
    implements $ProductLineItemCopyWith<$Res> {
  factory _$ProductLineItemCopyWith(
          _ProductLineItem value, $Res Function(_ProductLineItem) then) =
      __$ProductLineItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'variation_id') int? variationId,
      int? quantity,
      String? sku,
      double? price,
      String? total,
      @JsonKey(name: 'total_tax') String? totalTax,
      String? subtotal,
      @JsonKey(name: 'subtotal_tax') String? subtotalTax});
}

/// @nodoc
class __$ProductLineItemCopyWithImpl<$Res>
    extends _$ProductLineItemCopyWithImpl<$Res>
    implements _$ProductLineItemCopyWith<$Res> {
  __$ProductLineItemCopyWithImpl(
      _ProductLineItem _value, $Res Function(_ProductLineItem) _then)
      : super(_value, (v) => _then(v as _ProductLineItem));

  @override
  _ProductLineItem get _value => super._value as _ProductLineItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? productId = freezed,
    Object? variationId = freezed,
    Object? quantity = freezed,
    Object? sku = freezed,
    Object? price = freezed,
    Object? total = freezed,
    Object? totalTax = freezed,
    Object? subtotal = freezed,
    Object? subtotalTax = freezed,
  }) {
    return _then(_ProductLineItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      variationId: variationId == freezed
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotalTax: subtotalTax == freezed
          ? _value.subtotalTax
          : subtotalTax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductLineItem implements _ProductLineItem {
  _$_ProductLineItem(
      {this.id,
      this.name,
      @JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'variation_id') this.variationId,
      this.quantity,
      this.sku,
      this.price,
      this.total,
      @JsonKey(name: 'total_tax') this.totalTax,
      @JsonKey(name: 'total') this.orderTotal,
      this.subtotal,
      @JsonKey(name: 'subtotal_tax') this.subtotalTax});

  factory _$_ProductLineItem.fromJson(Map<String, dynamic> json) =>
      _$$_ProductLineItemFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'variation_id')
  final int? variationId;
  @override
  final int? quantity;
  @override
  final String? sku;
  @override
  final double? price;
  @override
  final String? total;
  @override
  @JsonKey(name: 'total_tax')
  final String? totalTax;
  @override
  @JsonKey(name: 'total_tax')
  final String? orderTotal;
  @override
  final String? subtotal;
  @override
  @JsonKey(name: 'subtotal_tax')
  final String? subtotalTax;

  @override
  String toString() {
    return 'ProductLineItem(id: $id, name: $name, productId: $productId, variationId: $variationId, quantity: $quantity, sku: $sku, price: $price, total: $total, totalTax: $totalTax, subtotal: $subtotal, subtotalTax: $subtotalTax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductLineItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.variationId, variationId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.sku, sku) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.totalTax, totalTax) &&
            const DeepCollectionEquality().equals(other.subtotal, subtotal) &&
            const DeepCollectionEquality()
                .equals(other.subtotalTax, subtotalTax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(variationId),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(sku),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalTax),
      const DeepCollectionEquality().hash(subtotal),
      const DeepCollectionEquality().hash(subtotalTax));

  @JsonKey(ignore: true)
  @override
  _$ProductLineItemCopyWith<_ProductLineItem> get copyWith =>
      __$ProductLineItemCopyWithImpl<_ProductLineItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductLineItemToJson(this);
  }
}

abstract class _ProductLineItem implements ProductLineItem {
  factory _ProductLineItem(
      {int? id,
      String? name,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'variation_id') int? variationId,
      int? quantity,
      String? sku,
      double? price,
      String? total,
      @JsonKey(name: 'total_tax') String? totalTax,
      @JsonKey(name: 'total') String? orderTotal,
      String? subtotal,
      @JsonKey(name: 'subtotal_tax') String? subtotalTax}) = _$_ProductLineItem;

  factory _ProductLineItem.fromJson(Map<String, dynamic> json) =
      _$_ProductLineItem.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'variation_id')
  int? get variationId;
  @override
  int? get quantity;
  @override
  String? get sku;
  @override
  double? get price;
  @override
  String? get total;
  @override
  @JsonKey(name: 'total_tax')
  String? get totalTax;
  @override
  String? get subtotal;
  @override
  @JsonKey(name: 'subtotal_tax')
  String? get subtotalTax;
  @override
  @JsonKey(ignore: true)
  _$ProductLineItemCopyWith<_ProductLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

BillingDetail _$BillingDetailFromJson(Map<String, dynamic> json) {
  return _BillingDetail.fromJson(json);
}

/// @nodoc
class _$BillingDetailTearOff {
  const _$BillingDetailTearOff();

  _BillingDetail call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? company,
      String? email,
      String? phone,
      @JsonKey(name: 'address_1') String? address1,
      @JsonKey(name: 'address_2') String? address2,
      String? city,
      String? state,
      String? postcode,
      String? country}) {
    return _BillingDetail(
      firstName: firstName,
      lastName: lastName,
      company: company,
      email: email,
      phone: phone,
      address1: address1,
      address2: address2,
      city: city,
      state: state,
      postcode: postcode,
      country: country,
    );
  }

  BillingDetail fromJson(Map<String, Object?> json) {
    return BillingDetail.fromJson(json);
  }
}

/// @nodoc
const $BillingDetail = _$BillingDetailTearOff();

/// @nodoc
mixin _$BillingDetail {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_1')
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_2')
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingDetailCopyWith<BillingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingDetailCopyWith<$Res> {
  factory $BillingDetailCopyWith(
          BillingDetail value, $Res Function(BillingDetail) then) =
      _$BillingDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? company,
      String? email,
      String? phone,
      @JsonKey(name: 'address_1') String? address1,
      @JsonKey(name: 'address_2') String? address2,
      String? city,
      String? state,
      String? postcode,
      String? country});
}

/// @nodoc
class _$BillingDetailCopyWithImpl<$Res>
    implements $BillingDetailCopyWith<$Res> {
  _$BillingDetailCopyWithImpl(this._value, this._then);

  final BillingDetail _value;
  // ignore: unused_field
  final $Res Function(BillingDetail) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: postcode == freezed
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BillingDetailCopyWith<$Res>
    implements $BillingDetailCopyWith<$Res> {
  factory _$BillingDetailCopyWith(
          _BillingDetail value, $Res Function(_BillingDetail) then) =
      __$BillingDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? company,
      String? email,
      String? phone,
      @JsonKey(name: 'address_1') String? address1,
      @JsonKey(name: 'address_2') String? address2,
      String? city,
      String? state,
      String? postcode,
      String? country});
}

/// @nodoc
class __$BillingDetailCopyWithImpl<$Res>
    extends _$BillingDetailCopyWithImpl<$Res>
    implements _$BillingDetailCopyWith<$Res> {
  __$BillingDetailCopyWithImpl(
      _BillingDetail _value, $Res Function(_BillingDetail) _then)
      : super(_value, (v) => _then(v as _BillingDetail));

  @override
  _BillingDetail get _value => super._value as _BillingDetail;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_BillingDetail(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: postcode == freezed
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillingDetail implements _BillingDetail {
  const _$_BillingDetail(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.company,
      this.email,
      this.phone,
      @JsonKey(name: 'address_1') this.address1,
      @JsonKey(name: 'address_2') this.address2,
      this.city,
      this.state,
      this.postcode,
      this.country});

  factory _$_BillingDetail.fromJson(Map<String, dynamic> json) =>
      _$$_BillingDetailFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? company;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'address_1')
  final String? address1;
  @override
  @JsonKey(name: 'address_2')
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postcode;
  @override
  final String? country;

  @override
  String toString() {
    return 'BillingDetail(firstName: $firstName, lastName: $lastName, company: $company, email: $email, phone: $phone, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BillingDetail &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.address1, address1) &&
            const DeepCollectionEquality().equals(other.address2, address2) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.postcode, postcode) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(address1),
      const DeepCollectionEquality().hash(address2),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(postcode),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$BillingDetailCopyWith<_BillingDetail> get copyWith =>
      __$BillingDetailCopyWithImpl<_BillingDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillingDetailToJson(this);
  }
}

abstract class _BillingDetail implements BillingDetail {
  const factory _BillingDetail(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? company,
      String? email,
      String? phone,
      @JsonKey(name: 'address_1') String? address1,
      @JsonKey(name: 'address_2') String? address2,
      String? city,
      String? state,
      String? postcode,
      String? country}) = _$_BillingDetail;

  factory _BillingDetail.fromJson(Map<String, dynamic> json) =
      _$_BillingDetail.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  String? get company;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'address_1')
  String? get address1;
  @override
  @JsonKey(name: 'address_2')
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postcode;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$BillingDetailCopyWith<_BillingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingLines _$ShippingLinesFromJson(Map<String, dynamic> json) {
  return _ShippingLines.fromJson(json);
}

/// @nodoc
class _$ShippingLinesTearOff {
  const _$ShippingLinesTearOff();

  _ShippingLines call(
      {int? id,
      @JsonKey(name: 'method_title') String? methodTitle,
      @JsonKey(name: 'method_id') String? methodId,
      @JsonKey(name: 'instance_id') String? instanceId,
      String? total,
      @JsonKey(name: 'total_tax') String? totalTax}) {
    return _ShippingLines(
      id: id,
      methodTitle: methodTitle,
      methodId: methodId,
      instanceId: instanceId,
      total: total,
      totalTax: totalTax,
    );
  }

  ShippingLines fromJson(Map<String, Object?> json) {
    return ShippingLines.fromJson(json);
  }
}

/// @nodoc
const $ShippingLines = _$ShippingLinesTearOff();

/// @nodoc
mixin _$ShippingLines {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'method_title')
  String? get methodTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'method_id')
  String? get methodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'instance_id')
  String? get instanceId => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  String? get totalTax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingLinesCopyWith<ShippingLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingLinesCopyWith<$Res> {
  factory $ShippingLinesCopyWith(
          ShippingLines value, $Res Function(ShippingLines) then) =
      _$ShippingLinesCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'method_title') String? methodTitle,
      @JsonKey(name: 'method_id') String? methodId,
      @JsonKey(name: 'instance_id') String? instanceId,
      String? total,
      @JsonKey(name: 'total_tax') String? totalTax});
}

/// @nodoc
class _$ShippingLinesCopyWithImpl<$Res>
    implements $ShippingLinesCopyWith<$Res> {
  _$ShippingLinesCopyWithImpl(this._value, this._then);

  final ShippingLines _value;
  // ignore: unused_field
  final $Res Function(ShippingLines) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? methodTitle = freezed,
    Object? methodId = freezed,
    Object? instanceId = freezed,
    Object? total = freezed,
    Object? totalTax = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      methodTitle: methodTitle == freezed
          ? _value.methodTitle
          : methodTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      methodId: methodId == freezed
          ? _value.methodId
          : methodId // ignore: cast_nullable_to_non_nullable
              as String?,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShippingLinesCopyWith<$Res>
    implements $ShippingLinesCopyWith<$Res> {
  factory _$ShippingLinesCopyWith(
          _ShippingLines value, $Res Function(_ShippingLines) then) =
      __$ShippingLinesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'method_title') String? methodTitle,
      @JsonKey(name: 'method_id') String? methodId,
      @JsonKey(name: 'instance_id') String? instanceId,
      String? total,
      @JsonKey(name: 'total_tax') String? totalTax});
}

/// @nodoc
class __$ShippingLinesCopyWithImpl<$Res>
    extends _$ShippingLinesCopyWithImpl<$Res>
    implements _$ShippingLinesCopyWith<$Res> {
  __$ShippingLinesCopyWithImpl(
      _ShippingLines _value, $Res Function(_ShippingLines) _then)
      : super(_value, (v) => _then(v as _ShippingLines));

  @override
  _ShippingLines get _value => super._value as _ShippingLines;

  @override
  $Res call({
    Object? id = freezed,
    Object? methodTitle = freezed,
    Object? methodId = freezed,
    Object? instanceId = freezed,
    Object? total = freezed,
    Object? totalTax = freezed,
  }) {
    return _then(_ShippingLines(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      methodTitle: methodTitle == freezed
          ? _value.methodTitle
          : methodTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      methodId: methodId == freezed
          ? _value.methodId
          : methodId // ignore: cast_nullable_to_non_nullable
              as String?,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: totalTax == freezed
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingLines implements _ShippingLines {
  _$_ShippingLines(
      {this.id,
      @JsonKey(name: 'method_title') this.methodTitle,
      @JsonKey(name: 'method_id') this.methodId,
      @JsonKey(name: 'instance_id') this.instanceId,
      this.total,
      @JsonKey(name: 'total_tax') this.totalTax,
      @JsonKey(name: 'total') this.orderTotal,
      }

      );

  factory _$_ShippingLines.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingLinesFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'method_title')
  final String? methodTitle;
  @override
  @JsonKey(name: 'method_id')
  final String? methodId;
  @override
  @JsonKey(name: 'instance_id')
  final String? instanceId;
  @override
  final String? total;
  @override
  @JsonKey(name: 'total_tax')
  final String? totalTax;
  @override
  @JsonKey(name: 'total')
  final String? orderTotal;

  @override
  String toString() {
    return 'ShippingLines(id: $id, '
        'methodTitle: $methodTitle, '
        'methodId: $methodId, instanceId: '
        '$instanceId, total: $total, '
        'totalTax: $totalTax'
        'orderTotal: $orderTotal'
        ')';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShippingLines &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.methodTitle, methodTitle) &&
            const DeepCollectionEquality().equals(other.methodId, methodId) &&
            const DeepCollectionEquality()
                .equals(other.instanceId, instanceId) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.totalTax, totalTax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(methodTitle),
      const DeepCollectionEquality().hash(methodId),
      const DeepCollectionEquality().hash(instanceId),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalTax));

  @JsonKey(ignore: true)
  @override
  _$ShippingLinesCopyWith<_ShippingLines> get copyWith =>
      __$ShippingLinesCopyWithImpl<_ShippingLines>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingLinesToJson(this);
  }
}

abstract class _ShippingLines implements ShippingLines {
   factory _ShippingLines(
      {int? id,
      @JsonKey(name: 'method_title') String? methodTitle,
      @JsonKey(name: 'method_id') String? methodId,
      @JsonKey(name: 'instance_id') String? instanceId,
      String? total,
      @JsonKey(name: 'total_tax') String? totalTax,
      @JsonKey(name: 'total') String? orderTotal
      }
       ) = _$_ShippingLines;

  factory _ShippingLines.fromJson(Map<String, dynamic> json) =
      _$_ShippingLines.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'method_title')
  String? get methodTitle;
  @override
  @JsonKey(name: 'method_id')
  String? get methodId;
  @override
  @JsonKey(name: 'instance_id')
  String? get instanceId;
  @override
  String? get total;
  @override
  @JsonKey(name: 'total_tax')
  String? get totalTax;
  @override
  @JsonKey(ignore: true)
  _$ShippingLinesCopyWith<_ShippingLines> get copyWith =>
      throw _privateConstructorUsedError;
}
