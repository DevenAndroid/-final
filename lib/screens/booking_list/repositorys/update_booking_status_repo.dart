import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/model/model_common_respone.dart';

import '../../../data/local/auth_db.dart';
import '../../../data/models/user/user.dart';
import '../models/model_update_booking_list.dart';

Future<ModelUpdateBookingList> updateBookingStatus(bookingId, bookingStatus) async{
  Map map = <String, dynamic>{};
  debugPrint(">>>>>>>>>>>>>>>>>Api Called");
  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();

  map["cookie"] = authCookie!.cookie;
  map["booking_id"] = bookingId;
  map["status"] = bookingStatus;


  http.Response response = await http.post(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/update_bookable_status"),
  body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      });

  if(response.statusCode == 200){
    return ModelUpdateBookingList.fromJson(jsonDecode(response.body));
  }else{
    throw Exception(response.body);
  }



}