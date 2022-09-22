import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dinelah_vendor/data/models/user/user.dart';
import 'package:dinelah_vendor/model/model_common_respone.dart';
import '../../../data/local/auth_db.dart';
import '../../../helper/Helpers.dart';
import 'package:http/http.dart' as http;

Future<ModelCommonResponse> changePassword(String old_password, String new_password, BuildContext context) async {
  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();
  var map = <String, dynamic>{};
  map['old_password'] = old_password;
  map['new_password'] = new_password;
  map['cookie'] = authCookie!.cookie;

  print('REQUEST DATA :: ' + jsonEncode(map));
  http.Response response = await http.post(Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/update_password"),
      body: jsonEncode(map),  headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      });
  print('REQUEST DATA :: Response ' + jsonEncode(map));

  if (response.statusCode == 200) {
    return ModelCommonResponse.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}
