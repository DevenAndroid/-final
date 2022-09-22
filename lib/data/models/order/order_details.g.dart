// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreOrderDetail _$$_StoreOrderDetailFromJson(Map<String, dynamic> json) =>
    _$_StoreOrderDetail(
      id: json['id'] as int?,
      status: json['status'] as String?,
      shippingTotal: json['shipping_total'] as String?,
      totalTax: json['total_tax'] as String?,
          orderTotal: json['total'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      paymentMethodTitle: json['payment_method_title'] as String?,
      createDate: json['date_created'] as String?,
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => ProductLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      billing: json['billing'] == null
          ? null
          : BillingDetail.fromJson(json['billing'] as Map<String, dynamic>),
      shippingLines: (json['shipping_lines'] as List<dynamic>?)
          ?.map((e) => ShippingLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoreOrderDetailToJson(_$_StoreOrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'shipping_total': instance.shippingTotal,
      'total_tax': instance.totalTax,
      'currency_symbol': instance.currencySymbol,
      'payment_method_title': instance.paymentMethodTitle,
      'date_created': instance.createDate,
      'line_items': instance.lineItems,
      'billing': instance.billing,
      'shipping_lines': instance.shippingLines,
    };

_$_ProductLineItem _$$_ProductLineItemFromJson(Map<String, dynamic> json) =>
    _$_ProductLineItem(
      id: json['id'] as int?,
      name: json['name'] as String?,
      productId: json['product_id'] as int?,
      variationId: json['variation_id'] as int?,
      quantity: json['quantity'] as int?,
      sku: json['sku'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      subtotal: json['subtotal'] as String?,
      subtotalTax: json['subtotal_tax'] as String?,
    );

Map<String, dynamic> _$$_ProductLineItemToJson(_$_ProductLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'quantity': instance.quantity,
      'sku': instance.sku,
      'price': instance.price,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'subtotal': instance.subtotal,
      'subtotal_tax': instance.subtotalTax,
    };

_$_BillingDetail _$$_BillingDetailFromJson(Map<String, dynamic> json) =>
    _$_BillingDetail(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_BillingDetailToJson(_$_BillingDetail instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'email': instance.email,
      'phone': instance.phone,
      'address_1': instance.address1,
      'address_2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
    };

_$_ShippingLines _$$_ShippingLinesFromJson(Map<String, dynamic> json) =>
    _$_ShippingLines(
      id: json['id'] as int?,
      methodTitle: json['method_title'] as String?,
      methodId: json['method_id'] as String?,
      instanceId: json['instance_id'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
    );

Map<String, dynamic> _$$_ShippingLinesToJson(_$_ShippingLines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method_title': instance.methodTitle,
      'method_id': instance.methodId,
      'instance_id': instance.instanceId,
      'total': instance.total,
      'total_tax': instance.totalTax,
    };
