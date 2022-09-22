import 'dart:convert';
import 'dart:io';
import 'package:dinelah_vendor/model/model_order_details.dart';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/model/model_has_resources.dart';

import '../data/local/auth_db.dart';
import '../data/models/user/user.dart';

Future<ModelOrderDetails> orderDetails(orderId) async {
  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();
  var map = <String, dynamic>{};
  map['cookie'] = authCookie?.cookie;
  map['order_id'] = orderId;
  print(map.toString());

  http.Response response = await http.post(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/get_order_details"),
      body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      }
  );

  if (response.statusCode == 200) {
    print("Response Data :::::  ${response.body}");
    return ModelOrderDetails.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}
