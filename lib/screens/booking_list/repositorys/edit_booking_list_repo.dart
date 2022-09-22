import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/screens/booking_list/models/model_booking_list.dart';
import 'package:dinelah_vendor/screens/booking_list/models/model_edit_booking_list.dart';

import '../../../data/local/auth_db.dart';
import '../../../data/models/user/user.dart';

Future<ModelEditBookingList> editBookingListData() async {
  debugPrint(">>>>>>>>>>>>>>>>>>>>>  Edit booking list API Called");

  http.Response response = await http.get(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/booking_statuses"));

  if (response.statusCode == 200) {
    debugPrint( "Response >>>>>>>>>>${json.decode(response.body)}");
    return ModelEditBookingList.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.body);
  }
}
