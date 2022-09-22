import 'dart:convert';
import 'dart:io';
import 'package:dinelah_vendor/model/model_common_respone.dart';
import 'package:http/http.dart' as http;
import 'package:dinelah_vendor/model/model_has_resources.dart';

import '../data/local/auth_db.dart';
import '../data/models/user/user.dart';

Future<dynamic> sendChatNotification(receiverID, title, message) async {
  late AuthCookie? authCookie;
  authCookie = AuthDb.getAuthCookie();
  var map = <String, dynamic>{};
  map['sender_id'] = authCookie?.cookie;
  map['receiver_id'] = receiverID;
  map['title'] = title;
  map['message'] = message;

  print('REQUEST DATA :: ${jsonEncode(map)}');

  http.Response response = await http.post(
      Uri.parse("https://dinelah.com/wp-json/wc/v3/wepos/chat_sendnotification"),
      body: jsonEncode(map),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
      }
  );

  if (response.statusCode == 200) {
    print("Chat response :::::  ${response.body}");
    return (response.body);
  } else {
    throw Exception(response.body);
  }
}
