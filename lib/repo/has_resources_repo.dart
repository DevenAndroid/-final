import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/model/model_has_resources.dart';

import '../data/local/auth_db.dart';
import '../data/models/user/user.dart';

Future<ModelResources> hasResourcesData() async {
  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();
  var map = <String, dynamic>{};
  map['cookie'] = authCookie?.cookie;

  print('REQUEST DATA :: ' + jsonEncode(map));

  http.Response response = await http.post(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/store_booking_resources"),
      body: jsonEncode(map),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    }
  );

  if (response.statusCode == 200) {
    print("Response Data :::::  "+response.body);
    return ModelResources.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}
