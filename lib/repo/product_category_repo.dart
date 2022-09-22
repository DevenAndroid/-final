
import 'dart:convert';
import 'dart:io';
import 'package:dinelah_vendor/model/model_order_details.dart';
import 'package:http/http.dart' as http;

import '../data/local/auth_db.dart';
import '../data/models/user/user.dart';
import '../model/model_product_category.dart';

Future<ModelProductCategories> productCategoryRepo() async {
  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();
  var map = <String, dynamic>{};
  map['vendor_id'] = authCookie?.user!.id.toString();
  print(map.toString());

  http.Response response = await http.post(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/store_product_categories_ewt"),
      body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      }
  );

  if (response.statusCode == 200) {
    print("Response Data :::::  ${response.body}");
    return ModelProductCategories.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}
