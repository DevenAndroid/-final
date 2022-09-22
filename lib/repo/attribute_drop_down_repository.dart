import 'dart:convert';
import 'dart:io';
import 'package:dinelah_vendor/model/model_attribute_drop_down_value.dart';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/model/model_has_resources.dart';

import '../data/local/auth_db.dart';
import '../data/models/user/user.dart';

Future<ModelGetAttributeDropDownValue> attributeDropDownValue() async {
  http.Response response = await http.get(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/get_all_attributes"),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      }
  );

  if (response.statusCode == 200) {
    print("Response Data :::::  "+response.body);
    return ModelGetAttributeDropDownValue.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}
