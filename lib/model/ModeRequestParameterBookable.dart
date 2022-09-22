import 'package:dinelah_vendor/model/model_single_product.dart';

class ModeRequestParameterBookable {
  String? productId;
  String? productName;
  String? productType;
  String? productPrice;
  String? productDescription;
  String? categories;
  int? shippingClassId;
  String? taxStatus;
  String? taxClass;
  String? wcBookingDurationType;
  String? wcBookingDuration;
  String? wcBookingMinDuration;
  String? wcBookingMaxDuration;
  String? wcBookingDurationUnit;
  String? wcBookingQty;
  String? wcBookingMinDate;
  String? wcBookingMinDateUnit;
  String? wcBookingMaxDate;
  String? wcBookingMaxDateUnit;
  String? wcBookingHasResources;
  String? wcBookingMinPersonsGroup;
  String? wcBookingMaxPersonsGroup;
  List<PersonData>? personData;
  String? image;

  ModeRequestParameterBookable(
      {this.productId,
        this.productName,
        this.productType,
        this.productPrice,
        this.productDescription,
        this.categories,
        this.shippingClassId,
        this.taxStatus,
        this.taxClass,
        this.wcBookingDurationType,
        this.wcBookingDuration,
        this.wcBookingMinDuration,
        this.wcBookingMaxDuration,
        this.wcBookingDurationUnit,
        this.wcBookingQty,
        this.wcBookingMinDate,
        this.wcBookingMinDateUnit,
        this.wcBookingMaxDate,
        this.wcBookingMaxDateUnit,
        this.wcBookingHasResources,
        this.wcBookingMinPersonsGroup,
        this.wcBookingMaxPersonsGroup,
        this.personData,
        this.image});

  ModeRequestParameterBookable.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productName = json['product_name'];
    productType = json['product_type'];
    productPrice = json['product_price'];
    productDescription = json['product_description'];
    categories = json['categories'];
    shippingClassId = json['shipping_class_id'];
    taxStatus = json['tax_status'];
    taxClass = json['tax_class'];
    wcBookingDurationType = json['wc_booking_duration_type'];
    wcBookingDuration = json['wc_booking_duration'];
    wcBookingMinDuration = json['wc_booking_min_duration'];
    wcBookingMaxDuration = json['wc_booking_max_duration'];
    wcBookingDurationUnit = json['wc_booking_duration_unit'];
    wcBookingQty = json['wc_booking_qty'];
    wcBookingMinDate = json['wc_booking_min_date'];
    wcBookingMinDateUnit = json['wc_booking_min_date_unit'];
    wcBookingMaxDate = json['wc_booking_max_date'];
    wcBookingMaxDateUnit = json['wc_booking_max_date_unit'];
    wcBookingHasResources = json['wc_booking_has_resources'];
    wcBookingMinPersonsGroup = json['wc_booking_min_persons_group'];
    wcBookingMaxPersonsGroup = json['wc_booking_max_persons_group'];
    if (json['person_data'] != null) {
      personData = <PersonData>[];
      json['person_data'].forEach((v) {
        personData!.add(new PersonData.fromJson(v));
      });
    }
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['product_type'] = this.productType;
    data['product_price'] = this.productPrice;
    data['product_description'] = this.productDescription;
    data['categories'] = this.categories;
    data['shipping_class_id'] = this.shippingClassId;
    data['tax_status'] = this.taxStatus;
    data['tax_class'] = this.taxClass;
    data['wc_booking_duration_type'] = this.wcBookingDurationType;
    data['wc_booking_duration'] = this.wcBookingDuration;
    data['wc_booking_min_duration'] = this.wcBookingMinDuration;
    data['wc_booking_max_duration'] = this.wcBookingMaxDuration;
    data['wc_booking_duration_unit'] = this.wcBookingDurationUnit;
    data['wc_booking_qty'] = this.wcBookingQty;
    data['wc_booking_min_date'] = this.wcBookingMinDate;
    data['wc_booking_min_date_unit'] = this.wcBookingMinDateUnit;
    data['wc_booking_max_date'] = this.wcBookingMaxDate;
    data['wc_booking_max_date_unit'] = this.wcBookingMaxDateUnit;
    data['wc_booking_has_resources'] = this.wcBookingHasResources;
    data['wc_booking_min_persons_group'] = this.wcBookingMinPersonsGroup;
    data['wc_booking_max_persons_group'] = this.wcBookingMaxPersonsGroup;
    if (this.personData != null) {
      data['person_data'] = this.personData!.map((v) => v.toJson()).toList();
    }
    data['image'] = this.image;
    return data;
  }
}
//
// class PersonDatas {
//   String? personType;
//   String? description;
//   String? baseCost;
//   String? blockCost;
//   String? min;
//   String? max;
//
//   PersonDatas(
//       {this.personType,
//         this.description,
//         this.baseCost,
//         this.blockCost,
//         this.min,
//         this.max});
//
//   PersonDatas.fromJson(Map<String, dynamic> json) {
//     personType = json['person_type'];
//     description = json['description'];
//     baseCost = json['base_cost'];
//     blockCost = json['block_cost'];
//     min = json['min'];
//     max = json['max'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['person_type'] = this.personType;
//     data['description'] = this.description;
//     data['base_cost'] = this.baseCost;
//     data['block_cost'] = this.blockCost;
//     data['min'] = this.min;
//     data['max'] = this.max;
//     return data;
//   }
// }
