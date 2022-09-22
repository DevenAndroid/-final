import 'package:flutter/foundation.dart';

import '/data/local/auth_db.dart';
import '/data/models/store_settings/store_settings.dart';
import '/data/remote/api_service.dart';

import '../../constraints/api_endpoints.dart';
import 'package:dio/dio.dart' as dio;

class StoreRepository {
  final _dio = dio.Dio();

  Future<StoreProfileInfo> getStoreProfileInfo() async {
    final _response = await ApiService.post(
      vendorAccountSettingsApi,
      _dio,
      body: {
        "cookie": AuthDb.getAuthCookie()?.cookie,
      },
    );
    final _result = StoreProfileInfo.fromJson(_response);
    debugPrint(_response.toString());
    return _result;
  }
}
