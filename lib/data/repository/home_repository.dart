
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/screens/notification/models/model_notification.dart';

import '../../../../data/local/auth_db.dart';
import '../../../../data/models/user/user.dart';
import '../models/seller_dashboard/seller_dashboard_model.dart';

Future<SellerDashboard> getSellerDashboard() async {
  late AuthCookie? authCookie;
  var map = <String, dynamic>{};
  authCookie = AuthDb.getAuthCookie();
  map['cookie'] = authCookie?.cookie;

  http.Response response = await http.post(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/seller_dashboard"),
      body: json.encode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      });

  if (response.statusCode == 200) {
    debugPrint( "Response seller dashborad  >>>>>>>>>>${json.decode(response.body)}");
    return SellerDashboard.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}

// import 'package:dinelah_vendor/data/local/auth_db.dart';
// import 'package:dinelah_vendor/data/models/seller_dashboard/seller_dashboard_model.dart';
// import 'package:dinelah_vendor/data/remote/api_service.dart';
//
// import '../../constraints/api_endpoints.dart';
// import 'package:dio/dio.dart' as dio;
//
// class HomeRepository {
//   final _dio = dio.Dio();
//
//   Future<SellerDashboard> getSellerDashboard() async {
//     final _response = await ApiService.post(sellerDashboard, _dio, body: {
//       "cookie": AuthDb.getAuthCookie()?.cookie,
//     });
//     final _result = SellerDashboard.fromJson(_response);
//     // debugPrint(_result.toString());
//     return _result;
//   }
// }
