import 'package:get/get.dart';

class ModelAttributeSendingData {
  bool? status;
  String? message;
  List<ModelAttributeDataForSending>? data;

  ModelAttributeSendingData({this.status, this.message, this.data});

  ModelAttributeSendingData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ModelAttributeDataForSending>[];
      json['data'].forEach((v) {
        data!.add(ModelAttributeDataForSending.fromJson(v));
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

class ModelAttributeDataForSending {
  String? productID;
  String? variationPrice;
  String? variationImage;
  bool? selected = false;
  List<Variations>? variationItem;

  ModelAttributeDataForSending({this.productID, this.variationPrice, this.variationImage, this.variationItem,this.selected});

  ModelAttributeDataForSending.fromJson(Map<String, dynamic> json) {
    productID = json['productID'];
    variationPrice = json['variationPrice'];
    variationImage = json['variationImage'];
    if (json['variationItem'] != null) {
      variationItem = <Variations>[];
      json['variationItem'].forEach((v) {
        variationItem!.add(Variations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productID'] = productID;
    data['variationPrice'] = variationPrice;
    data['variationImage'] = variationImage;
    if (variationItem != null) {
      data['variationItem'] = variationItem!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Variations {
  int? variationType;


  Variations(
      {this.variationType});

  Variations.fromJson(Map<String, dynamic> json) {
    variationType = json['variationType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['variationType'] = variationType;
    return data;
  }
}
