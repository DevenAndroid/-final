import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/helper/Helpers.dart';

import '../model/model_common_respone.dart';

Future<ModelCommonResponse> updateProducts(
    product_type,
    wc_booking_duration_type,
    wc_booking_duration,
    wc_booking_min_duration,
    wc_booking_max_duration,
    wc_booking_duration_unit,
    wc_booking_qty,
    wc_booking_min_date,
    wc_booking_min_date_unit,
    wc_booking_max_date,
    wc_booking_max_date_unit,
    wc_booking_has_resources,
    wc_booking_min_persons_group,
    wc_booking_max_persons_group,
    BuildContext context) async {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  var map = <String, dynamic>{};
  map['product_type'] = product_type;
  map['wc_booking_duration_type'] = wc_booking_duration_type;
  map['wc_booking_duration'] = wc_booking_duration;
  map['wc_booking_min_duration'] = wc_booking_min_duration;
  map['wc_booking_max_duration'] = wc_booking_max_duration;
  map['wc_booking_duration_unit'] = wc_booking_duration_unit;
  map['wc_booking_qty'] = wc_booking_qty;
  map['wc_booking_min_date'] = wc_booking_min_date;
  map['wc_booking_min_date_unit'] = wc_booking_min_date_unit;
  map['wc_booking_max_date'] = wc_booking_max_date;
  map['wc_booking_max_date_unit'] = wc_booking_max_date_unit;
  map['wc_booking_has_resources'] = wc_booking_has_resources;
  map['wc_booking_min_persons_group'] = wc_booking_min_persons_group;
  map['wc_booking_max_persons_group'] = wc_booking_max_persons_group;
  // map['cookie'] = prefs.getString("Cookie");

  OverlayEntry loader = Helpers.overlayLoader(context);
  Overlay.of(context)!.insert(loader);

  print('REQUEST DATA :: ${jsonEncode(map)}');
  http.Response response = await http.post(
      Uri.parse(
          "https://dinelah.com/wp-json/wc/v3/wepos/update_product"),
      body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      });
  print('REQUEST DATA :: Response ' + jsonEncode(map));

  if (response.statusCode == 200) {
    Helpers.hideLoader(loader);
    print(response.body);
    return ModelCommonResponse.fromJson(json.decode(response.body));
  } else {
    Helpers.createSnackBar(context, response.statusCode.toString());
    Helpers.hideLoader(loader);
    throw Exception(response.body);
  }
}
