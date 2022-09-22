import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/screens/notification/models/model_notification.dart';
import '../../../../data/local/auth_db.dart';
import '../../../../data/models/user/user.dart';

Future<ModelNotification> notificationData() async {
  debugPrint(">>>>>>>>>>>>>>>>>Api Called");
  late AuthCookie? authCookie;
  var map = <String, dynamic>{};
  authCookie = AuthDb.getAuthCookie();
  map['cookie'] = authCookie?.cookie;
  print("Data sending>>>>>>>>>>>>>>>$map");

  http.Response response = await http.post(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/notifications"),
      body: json.encode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      }
      );

  if (response.statusCode == 200) {
    debugPrint( "Response >>>>>>>>>>${json.decode(response.body)}");
    return ModelNotification.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}
