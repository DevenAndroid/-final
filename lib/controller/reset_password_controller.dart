import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as _dio;
import 'package:get/get.dart';
import '/data/remote/api_service.dart';
import '/utils/snackbar.dart';

import '../constraints/api_endpoints.dart';
import '../data/models/rest_password/reset_password.dart';

class ResetPasswordController extends GetxController {
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // form keys
  final GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();

  // controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController resetPasswordEmailController =
      TextEditingController();

  final TextEditingController code1 = TextEditingController();
  final TextEditingController code2 = TextEditingController();
  final TextEditingController code3 = TextEditingController();
  final TextEditingController code4 = TextEditingController();

  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // focus nodes
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
  final FocusNode newPassword = FocusNode();
  final FocusNode confirmPassword = FocusNode();

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  Future<ResetPassword?> sendResetPasswordEmail() async {
    _isLoading.value = true;
    update();
    final client = _dio.Dio();
    try {
      final response = await ApiService.post(
        sendResetPasswordEmailApi,
        client,
        body: {"email": resetPasswordEmailController.text},
      );

      debugPrint(
          "Request Body:${{"email": resetPasswordEmailController.text}}");

      return ResetPassword.fromJson(response);
    } catch (e) {
      snack('Failed!', e.toString().substring(0,100), Icons.error);
      return null;
    } finally {
      _isLoading.value = false;
      update();
    }
  }

  Future<ResetPassword?> resetPassword() async {
    _isLoading.value = true;
    update();
    final client = _dio.Dio();
    try {
      final response = await ApiService.post(
        changePasswordApi,
        client,
        body: {
          "email": resetPasswordEmailController.text,
          "otp": code1.text + code2.text + code3.text + code4.text,
          "new_password": passwordController.text,
        },
      );

      return ResetPassword.fromJson(response);
    } catch (e) {
      snack('Failed!', e.toString().substring(0,100), Icons.error);
      return null;
    } finally {
      _isLoading.value = false;
      update();
    }
  }
}
