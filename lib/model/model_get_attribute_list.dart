class ModelGetAttributeList {
  String? status;
  String? message;
  List<Data>? data;

  ModelGetAttributeList({this.status, this.message, this.data});

  ModelGetAttributeList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  List<String>? attributes;
  String? displayPrice;
  String? displayRegularPrice;
  String? image;
  bool? isInStock;
  int? minQty;
  String? sku;
  int? variationId;
  int? quantity;

  Data(
      {this.attributes,
        this.displayPrice,
        this.displayRegularPrice,
        this.image,
        this.isInStock,
        this.minQty,
        this.sku,
        this.variationId,
        this.quantity});

  Data.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'].cast<String>();
    displayPrice = json['display_price'];
    displayRegularPrice = json['display_regular_price'];
    image = json['image'];
    isInStock = json['is_in_stock'];
    minQty = json['min_qty'];
    sku = json['sku'];
    variationId = json['variation_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['attributes'] = attributes;
    data['display_price'] = displayPrice;
    data['display_regular_price'] = displayRegularPrice;
    data['image'] = image;
    data['is_in_stock'] = isInStock;
    data['min_qty'] = minQty;
    data['sku'] = sku;
    data['variation_id'] = variationId;
    data['quantity'] = quantity;
    return data;
  }
}
