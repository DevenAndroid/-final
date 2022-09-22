import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details.freezed.dart';
part 'order_details.g.dart';

@freezed
class StoreOrderDetail with _$StoreOrderDetail {
  factory StoreOrderDetail({
    int? id,
    String? status,
    @JsonKey(name: 'shipping_total') String? shippingTotal,
    @JsonKey(name: 'total_tax') String? totalTax,
    @JsonKey(name: 'total') String? orderTotal,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
    @JsonKey(name: 'payment_method_title') String? paymentMethodTitle,
    @JsonKey(name: 'date_created') String? createDate,
    @JsonKey(name: 'line_items') List<ProductLineItem>? lineItems,
    @JsonKey(name: 'billing') BillingDetail? billing,
    @JsonKey(name: 'shipping_lines') List<ShippingLines>? shippingLines,
  }) = _StoreOrderDetail;

  factory StoreOrderDetail.fromJson(Map<String, dynamic> json) =>
      _$StoreOrderDetailFromJson(json);
}

@freezed
class ProductLineItem with _$ProductLineItem {
  factory ProductLineItem({
    int? id,
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
    @JsonKey(name: 'subtotal_tax') String? subtotalTax,
  }) = _ProductLineItem;

  factory ProductLineItem.fromJson(Map<String, dynamic> json) =>
      _$ProductLineItemFromJson(json);
}

@freezed
class BillingDetail with _$BillingDetail {
  const factory BillingDetail({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? company,
    String? email,
    String? phone,
    @JsonKey(name: 'address_1') String? address1,
    @JsonKey(name: 'address_2') String? address2,
    String? city,
    String? state,
    String? postcode,
    String? country,
  }) = _BillingDetail;

  factory BillingDetail.fromJson(Map<String, dynamic> json) =>
      _$BillingDetailFromJson(json);
}

@freezed
class ShippingLines with _$ShippingLines {
  factory ShippingLines({
    int? id,
    @JsonKey(name: 'method_title') String? methodTitle,
    @JsonKey(name: 'method_id') String? methodId,
    @JsonKey(name: 'instance_id') String? instanceId,
    String? total,
    @JsonKey(name: 'total_tax') String? totalTax,
    @JsonKey(name: 'total') String? orderTotal,
  }) = _ShippingLines;

  factory ShippingLines.fromJson(Map<String, dynamic> json) =>
      _$ShippingLinesFromJson(json);
}
