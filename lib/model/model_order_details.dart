class ModelOrderDetails {
  String? status;
  String? message;
  Response? response;

  ModelOrderDetails({this.status, this.message, this.response});

  ModelOrderDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    response = json['response'] != null
        ? Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (response != null) {
      data['response'] = response!.toJson();
    }
    return data;
  }
}

class Response {
  int? id;
  int? parentId;
  String? status;
  String? update_status_type;
  String? currency;
  String? version;
  DeliveryDetail? customerDetails;
  DeliveryDetail? deliveryDetail;

  Response(
      {this.id,
        this.parentId,
        this.status,
        this.update_status_type,
        this.currency,
        this.version,
        this.customerDetails,
        this.deliveryDetail});

  Response.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    status = json['status'];
    update_status_type = json['update_status_type'];
    currency = json['currency'];
    version = json['version'];
    customerDetails = json['customer_details'] != null
        ? DeliveryDetail.fromJson(json['customer_details'])
        : null;
    deliveryDetail = json['delivery_detail'] != null
        ? DeliveryDetail.fromJson(json['delivery_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['parent_id'] = parentId;
    data['status'] = status;
    data['update_status_type'] = update_status_type;
    data['currency'] = currency;
    data['version'] = version;
    if (customerDetails != null) {
      data['customer_details'] = customerDetails!.toJson();
    }
    if (deliveryDetail != null) {
      data['delivery_detail'] = deliveryDetail!.toJson();
    }
    return data;
  }
}

class DeliveryDetail {
  dynamic id;
  dynamic name;
  dynamic image;
  dynamic phone;
  dynamic address;

  DeliveryDetail({this.id, this.name, this.image, this.phone, this.address});

  DeliveryDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    phone = json['phone'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['phone'] = phone;
    data['address'] = address;
    return data;
  }
}
