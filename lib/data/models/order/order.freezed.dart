// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreOrder _$StoreOrderFromJson(Map<String, dynamic> json) {
  return _StoreOrder.fromJson(json);
}

/// @nodoc
class _$StoreOrderTearOff {
  const _$StoreOrderTearOff();

  _StoreOrder call(
      {int? id,
      String? status,
      @JsonKey(name: 'total') String? shippingTotal,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'date_created') OrderDate? createDate}) {
    return _StoreOrder(
      id: id,
      status: status,
      shippingTotal: shippingTotal,
      currency: currency,
      currencySymbol: currencySymbol,
      createDate: createDate,
    );
  }

  StoreOrder fromJson(Map<String, Object?> json) {
    return StoreOrder.fromJson(json);
  }
}

/// @nodoc
const $StoreOrder = _$StoreOrderTearOff();

/// @nodoc
mixin _$StoreOrder {
  int? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  String? get shippingTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  OrderDate? get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreOrderCopyWith<StoreOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreOrderCopyWith<$Res> {
  factory $StoreOrderCopyWith(
          StoreOrder value, $Res Function(StoreOrder) then) =
      _$StoreOrderCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? status,
      @JsonKey(name: 'total') String? shippingTotal,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'date_created') OrderDate? createDate});

  $OrderDateCopyWith<$Res>? get createDate;
}

/// @nodoc
class _$StoreOrderCopyWithImpl<$Res> implements $StoreOrderCopyWith<$Res> {
  _$StoreOrderCopyWithImpl(this._value, this._then);

  final StoreOrder _value;
  // ignore: unused_field
  final $Res Function(StoreOrder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? shippingTotal = freezed,
    Object? currency = freezed,
    Object? currencySymbol = freezed,
    Object? createDate = freezed,
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: currencySymbol == freezed
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as OrderDate?,
    ));
  }

  @override
  $OrderDateCopyWith<$Res>? get createDate {
    if (_value.createDate == null) {
      return null;
    }

    return $OrderDateCopyWith<$Res>(_value.createDate!, (value) {
      return _then(_value.copyWith(createDate: value));
    });
  }
}

/// @nodoc
abstract class _$StoreOrderCopyWith<$Res> implements $StoreOrderCopyWith<$Res> {
  factory _$StoreOrderCopyWith(
          _StoreOrder value, $Res Function(_StoreOrder) then) =
      __$StoreOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? status,
      @JsonKey(name: 'total') String? shippingTotal,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'date_created') OrderDate? createDate});

  @override
  $OrderDateCopyWith<$Res>? get createDate;
}

/// @nodoc
class __$StoreOrderCopyWithImpl<$Res> extends _$StoreOrderCopyWithImpl<$Res>
    implements _$StoreOrderCopyWith<$Res> {
  __$StoreOrderCopyWithImpl(
      _StoreOrder _value, $Res Function(_StoreOrder) _then)
      : super(_value, (v) => _then(v as _StoreOrder));

  @override
  _StoreOrder get _value => super._value as _StoreOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? shippingTotal = freezed,
    Object? currency = freezed,
    Object? currencySymbol = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_StoreOrder(
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: currencySymbol == freezed
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as OrderDate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreOrder implements _StoreOrder {
  const _$_StoreOrder(
      {this.id,
      this.status,
      @JsonKey(name: 'total') this.shippingTotal,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'currency_symbol') this.currencySymbol,
      @JsonKey(name: 'date_created') this.createDate});

  factory _$_StoreOrder.fromJson(Map<String, dynamic> json) =>
      _$$_StoreOrderFromJson(json);

  @override
  final int? id;
  @override
  final String? status;
  @override
  @JsonKey(name: 'total')
  final String? shippingTotal;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  @JsonKey(name: 'date_created')
  final OrderDate? createDate;

  @override
  String toString() {
    return 'StoreOrder(id: $id, status: $status, shippingTotal: $shippingTotal, currency: $currency, currencySymbol: $currencySymbol, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreOrder &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.shippingTotal, shippingTotal) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.currencySymbol, currencySymbol) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(shippingTotal),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(currencySymbol),
      const DeepCollectionEquality().hash(createDate));

  @JsonKey(ignore: true)
  @override
  _$StoreOrderCopyWith<_StoreOrder> get copyWith =>
      __$StoreOrderCopyWithImpl<_StoreOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreOrderToJson(this);
  }
}

abstract class _StoreOrder implements StoreOrder {
  const factory _StoreOrder(
      {int? id,
      String? status,
      @JsonKey(name: 'total') String? shippingTotal,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'date_created') OrderDate? createDate}) = _$_StoreOrder;

  factory _StoreOrder.fromJson(Map<String, dynamic> json) =
      _$_StoreOrder.fromJson;

  @override
  int? get id;
  @override
  String? get status;
  @override
  @JsonKey(name: 'total')
  String? get shippingTotal;
  @override
  @JsonKey(name: 'currency')
  String? get currency;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol;
  @override
  @JsonKey(name: 'date_created')
  OrderDate? get createDate;
  @override
  @JsonKey(ignore: true)
  _$StoreOrderCopyWith<_StoreOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDate _$OrderDateFromJson(Map<String, dynamic> json) {
  return _OrderDate.fromJson(json);
}

/// @nodoc
class _$OrderDateTearOff {
  const _$OrderDateTearOff();

  _OrderDate call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'timezone_type') int? timezoneType,
      @JsonKey(name: 'timezone') String? timezone}) {
    return _OrderDate(
      date: date,
      timezoneType: timezoneType,
      timezone: timezone,
    );
  }

  OrderDate fromJson(Map<String, Object?> json) {
    return OrderDate.fromJson(json);
  }
}

/// @nodoc
const $OrderDate = _$OrderDateTearOff();

/// @nodoc
mixin _$OrderDate {
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_type')
  int? get timezoneType => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  String? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDateCopyWith<OrderDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDateCopyWith<$Res> {
  factory $OrderDateCopyWith(OrderDate value, $Res Function(OrderDate) then) =
      _$OrderDateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'timezone_type') int? timezoneType,
      @JsonKey(name: 'timezone') String? timezone});
}

/// @nodoc
class _$OrderDateCopyWithImpl<$Res> implements $OrderDateCopyWith<$Res> {
  _$OrderDateCopyWithImpl(this._value, this._then);

  final OrderDate _value;
  // ignore: unused_field
  final $Res Function(OrderDate) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? timezoneType = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneType: timezoneType == freezed
          ? _value.timezoneType
          : timezoneType // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrderDateCopyWith<$Res> implements $OrderDateCopyWith<$Res> {
  factory _$OrderDateCopyWith(
          _OrderDate value, $Res Function(_OrderDate) then) =
      __$OrderDateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'timezone_type') int? timezoneType,
      @JsonKey(name: 'timezone') String? timezone});
}

/// @nodoc
class __$OrderDateCopyWithImpl<$Res> extends _$OrderDateCopyWithImpl<$Res>
    implements _$OrderDateCopyWith<$Res> {
  __$OrderDateCopyWithImpl(_OrderDate _value, $Res Function(_OrderDate) _then)
      : super(_value, (v) => _then(v as _OrderDate));

  @override
  _OrderDate get _value => super._value as _OrderDate;

  @override
  $Res call({
    Object? date = freezed,
    Object? timezoneType = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_OrderDate(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timezoneType: timezoneType == freezed
          ? _value.timezoneType
          : timezoneType // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDate implements _OrderDate {
  const _$_OrderDate(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'timezone_type') this.timezoneType,
      @JsonKey(name: 'timezone') this.timezone});

  factory _$_OrderDate.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDateFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'timezone_type')
  final int? timezoneType;
  @override
  @JsonKey(name: 'timezone')
  final String? timezone;

  @override
  String toString() {
    return 'OrderDate(date: $date, timezoneType: $timezoneType, timezone: $timezone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDate &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.timezoneType, timezoneType) &&
            const DeepCollectionEquality().equals(other.timezone, timezone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(timezoneType),
      const DeepCollectionEquality().hash(timezone));

  @JsonKey(ignore: true)
  @override
  _$OrderDateCopyWith<_OrderDate> get copyWith =>
      __$OrderDateCopyWithImpl<_OrderDate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDateToJson(this);
  }
}

abstract class _OrderDate implements OrderDate {
  const factory _OrderDate(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'timezone_type') int? timezoneType,
      @JsonKey(name: 'timezone') String? timezone}) = _$_OrderDate;

  factory _OrderDate.fromJson(Map<String, dynamic> json) =
      _$_OrderDate.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'timezone_type')
  int? get timezoneType;
  @override
  @JsonKey(name: 'timezone')
  String? get timezone;
  @override
  @JsonKey(ignore: true)
  _$OrderDateCopyWith<_OrderDate> get copyWith =>
      throw _privateConstructorUsedError;
}
