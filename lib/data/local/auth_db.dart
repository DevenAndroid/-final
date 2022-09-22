import 'package:get_storage/get_storage.dart';
import 'package:dinelah_vendor/constraints/strings.dart';
import 'package:dinelah_vendor/data/models/user/user.dart';

import 'dart:convert' as convert;

final _box = GetStorage(dbName);

class AuthDb {
  static bool isUserLoggedIn() {
    String? intro = _box.read('user_info');
    return intro != null && convert.jsonDecode(intro)['cookie'] != null;
  }

  static void setAuthCookie(AuthCookie authCookie) {
    _box.write('user_info', convert.jsonEncode(authCookie.toJson()));
  }

  static AuthCookie? getAuthCookie() {
    String? intro = _box.read('user_info');
    if (intro == null) return null;
    return AuthCookie.fromJson(convert.jsonDecode(intro));
  }

  static void clearDb() {
    _box.erase();
  }
}
