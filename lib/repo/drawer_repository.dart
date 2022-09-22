import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import '../data/local/auth_db.dart';
import '../data/models/user/user.dart';
import '../model/model_drawer.dart';

Future<ModelDrawer> getDrawerData() async {
  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();
  var map = <String, dynamic>{};
  map['cookie'] = authCookie?.cookie;

  print('REQUEST DATA :: ' + jsonEncode(map));

  http.Response response = await http.post(Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/store_menus_list"),
      body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      });
  if(response.statusCode == 200){
    return ModelDrawer.fromJson(jsonDecode(response.body));
  } else{
    throw Exception(response.body);
  }

}