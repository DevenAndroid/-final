// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreOrder _$$_StoreOrderFromJson(Map<String, dynamic> json) =>
    _$_StoreOrder(
      id: json['id'] as int?,
      status: json['status'] as String?,
      shippingTotal: json['total'] as String?,
      currency: json['currency'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      createDate: json['date_created'] == null
          ? null
          : OrderDate.fromJson(json['date_created'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoreOrderToJson(_$_StoreOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'total': instance.shippingTotal,
      'currency': instance.currency,
      'currency_symbol': instance.currencySymbol,
      'date_created': instance.createDate,
    };

_$_OrderDate _$$_OrderDateFromJson(Map<String, dynamic> json) => _$_OrderDate(
      date: json['date'] as String?,
      timezoneType: json['timezone_type'] as int?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$_OrderDateToJson(_$_OrderDate instance) =>
    <String, dynamic>{
      'date': instance.date,
      'timezone_type': instance.timezoneType,
      'timezone': instance.timezone,
    };
