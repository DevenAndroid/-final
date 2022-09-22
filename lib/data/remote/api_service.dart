import 'package:dio/dio.dart' as dio;
import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth_controller.dart';

const _baseUrl = "https://dinelah.com";

class ApiService {
  static Future<dynamic> get(
    String url,
    dio.Dio client, {
    Map<String, dynamic>? headers,
  }) async {
    try {
      debugPrint(":: Get $url::");

      final response = await client.get(
        _baseUrl + url,
        options: dio.Options(
          headers: headers,
        ),
      );
      if (response.statusCode == 200) {
        if (response.data?['status'] == 'error') {
          if (response.data?['message']?.contains("generate_auth_cookie")) {
            final AuthController controller = Get.find<AuthController>();
            controller.logout();
          }
          return response.data;
        } else {
          return response.data;
        }
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<dynamic> post(
    String url,
    dio.Dio client, {
    Map<String, dynamic>? headers,
    body,
  }) async {
    try {
      debugPrint(":: Post $url::");

      final response = await client.post(
        _baseUrl + url,
        data: body,
      );
      if (response.statusCode == 200) {
        if (response.data?['status'] == 'error') {
          if (response.data?['message']?.contains("generate_auth_cookie")) {
            final AuthController controller = Get.find<AuthController>();
            controller.logout();
          }
          return response.data;
        }
        else {
          return response.data;
        }
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
