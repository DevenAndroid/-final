import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class StoreOrder with _$StoreOrder {
  const factory StoreOrder({
    int? id,
    String? status,
    @JsonKey(name: 'total') String? shippingTotal,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
    @JsonKey(name: 'date_created') OrderDate? createDate,
  }) = _StoreOrder;

  factory StoreOrder.fromJson(Map<String, dynamic> json) =>
      _$StoreOrderFromJson(json);
}

@freezed
class OrderDate with _$OrderDate {
  const factory OrderDate({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'timezone_type') int? timezoneType,
    @JsonKey(name: 'timezone') String? timezone,
  }) = _OrderDate;

  factory OrderDate.fromJson(Map<String, dynamic> json) =>
      _$OrderDateFromJson(json);
}
