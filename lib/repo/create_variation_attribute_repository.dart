import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dinelah_vendor/model/model_common_respone.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../data/local/auth_db.dart';
import '../data/models/user/user.dart';
import '../helper/Helpers.dart';
import '../model/model_attribute_drop_down_value.dart';

Future<ModelCommonResponse> createAttributeVariation(
    productID,
    regularPrice,
    variationImage,
    variation
    ) async {

  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();

  Map map = <String , dynamic>{};

  map["cookie"] = authCookie?.cookie;
  map["product_id"] = productID;
  map["regular_price"] = regularPrice;
  map["image"] = variationImage;
  map["variation"] = variation;

  log("Create Variation >>>>>>>>>>$map");

  http.Response response = await http.post(Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/eoxys_create_variation"),
  body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      });
  if(response.statusCode == 200){
    print("Create Variation response>>>>>>>>>>"+jsonDecode(response.body).toString());
    return ModelCommonResponse.fromJson(jsonDecode(response.body));
  } else{
    throw Exception(response.body);
  }

}

Future<ModelCommonResponse> saveAttribute(
    BuildContext context,
    productID,
    variation
    ) async {

  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();

  OverlayEntry loader = Helpers.overlayLoader(context);
  Overlay.of(context)!.insert(loader);

  Map map = <String , dynamic>{};

  map["cookie"] = authCookie?.cookie;
  map["product_id"] = productID;
  map["attributes"] = variation;

  log("Create Variation >>>>>>>>>>${jsonEncode(map)}");

  http.Response response = await http.post(Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/eoxys_save_attribute"),
      body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      });
  if(response.statusCode == 200){
    Helpers.hideLoader(loader);
    print("Create attributes response>>>>>>>>>>"+jsonDecode(response.body).toString());
    return ModelCommonResponse.fromJson(jsonDecode(response.body));
  } else{
    Helpers.hideLoader(loader);
    throw Exception(response.body);
  }

}

Future<ModelGetAttributeDropDownValue> getProductAttributeTerms(
    productID,
    ) async {

  Map map = <String , dynamic>{};

  map["product_id"] = productID;

  log("Get attribute variation sending >>>>>>>>>>${jsonEncode(map)}");

  http.Response response = await http.post(Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/get_product_attribute_terms"),
      body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      });
  if(response.statusCode == 200){
    print("Get variation  response>>>>>>>>>>"+jsonDecode(response.body).toString());
    return ModelGetAttributeDropDownValue.fromJson(jsonDecode(response.body));
  } else{
    throw Exception(response.body);
  }

}

// Future<ModelGetAttributeDropDownValue> getProductAttributeTerms(productID) async {
//   Map map = <String , dynamic>{};
//
//   map["product_id"] = productID;
//
//   log("Get attribute >>>>>>>>>>${jsonEncode(map)}");
//
//   http.Response response = await http.post(Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/get_product_attribute_terms"),
//       body: jsonEncode(map));
//   if(response.statusCode == 200){
//     print("Get attribute response>>>>>>>>>>"+jsonDecode(response.body).toString());
//     return ModelGetAttributeDropDownValue.fromJson(jsonDecode(response.body));
//   } else{
//     throw Exception(response.body);
//   }
//
// }

