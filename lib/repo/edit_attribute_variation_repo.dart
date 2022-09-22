import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dinelah_vendor/model/model_common_respone.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../helper/Helpers.dart';

Future<ModelCommonResponse> editVariationAttribute(BuildContext context, variationID, price, stockQty, image) async {

  OverlayEntry loader = Helpers.overlayLoader(context);
  Overlay.of(context)!.insert(loader);
  Map map = <String , dynamic>{};

  map["variation_id"] = variationID;
  map["price"] = price;
  map["stock_qty"] = stockQty;
  map["image"] = image;

  log("removeVariationAttribute>>>>>>>>>>${jsonEncode(map)}");

  http.Response response = await http.post(Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/update_product_available_variations"),
      body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      });
  if(response.statusCode == 200){
    Helpers.hideLoader(loader);
    print("removeVariationAttribute  response>>>>>>>>>>${jsonDecode(response.body)}");
    return ModelCommonResponse.fromJson(jsonDecode(response.body));
  } else{
    Helpers.hideLoader(loader);
    throw Exception(response.body);
  }

}