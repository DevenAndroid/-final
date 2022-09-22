import 'package:dio/dio.dart' as _dio;
import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/home_controller.dart';
import 'package:dinelah_vendor/data/models/user/user.dart';
import 'package:dinelah_vendor/data/repository/store_repository.dart';
import '../screens/profile/profile.dart';
import '../screens/settings/settings.dart';
import '/data/local/auth_db.dart';
import '/utils/snackbar.dart';
import '/constraints/api_endpoints.dart';
import '/data/remote/api_service.dart';
import 'package:image_picker/image_picker.dart';

import '../data/models/store_settings/store_settings.dart';
import 'auth_controller.dart';

class StoreSettingsController extends GetxController {
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  final GlobalKey<FormState> storeSettingsFormKey = GlobalKey<FormState>();
  final StoreRepository _repository = StoreRepository();

  final _storeSettings = const StoreProfileInfo().obs;
  StoreProfileInfo get storeSettings => _storeSettings.value;

  // controllers
  final TextEditingController storeNameController = TextEditingController();
  final TextEditingController storeAddressController = TextEditingController();
  final TextEditingController storePhoneController = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  final storeLogoImagePath = ''.obs;
  final storeBannerImagePath = ''.obs;

  XFile? _storeBanner;
  XFile? _storeLogo;

  @override
  void onInit() {
    super.onInit();
    getStoreProfileInfo();
  }

  void pickStoreLogo() async {
    _picker.pickImage(source: ImageSource.gallery).then((pickedImage) {
      if (pickedImage != null) {
        storeLogoImagePath.value = pickedImage.path;
        _storeLogo = pickedImage;
        update();
      } else {
        debugPrint("No image selected");
      }
    });
  }

  void pickStoreBanner() {
    _picker.pickImage(source: ImageSource.gallery).then((pickedImage) {
      if (pickedImage != null) {
        storeBannerImagePath.value = pickedImage.path;
        _storeBanner = pickedImage;
        update();
      } else {
        debugPrint("No image selected");
      }
    });
  }

  Future<void> getStoreProfileInfo() async {
    final response = await _repository.getStoreProfileInfo();
    _storeSettings.value = response;
    storeNameController.text =
        _storeSettings.value.storeProfile?.storeName ?? '';
    storeAddressController.text =
        _storeSettings.value.storeProfile?.location ?? '';
    storePhoneController.text = _storeSettings.value.storeProfile?.phone ?? '';
    storeLogoImagePath.value = _storeSettings.value.storeProfile?.logoUrl ?? '';
    storeBannerImagePath.value =
        _storeSettings.value.storeProfile?.bannerUrl ?? '';

    HomeController controller = Get.find<HomeController>();
    AuthController authController = Get.find<AuthController>();

    controller.updateUserProfileFromStoreSettings(response);
    authController.updateProfile();
    update();
  }

  Future<void> saveStoreSettings() async {
    if (storeSettingsFormKey.currentState?.validate() == true) {
      _isLoading.value = true;
      var client = _dio.Dio();
      try {
        final logo = await _storeLogo?.readAsBytes();
        final banner = await _storeBanner?.readAsBytes();
        final body = StoreSettings(
          cookie: "${AuthDb.getAuthCookie()?.cookie}",
          name: storeNameController.text,
          address: storeAddressController.text,
          banner: banner != null ? convert.base64Encode(banner) : null,
          logo: logo != null ? convert.base64Encode(logo) : null,
          phone: storePhoneController.text,
        ).toJson();

        debugPrint(body.toString());

        final response = await ApiService.post(
          storeSettingsApi,
          client,
          body: body,
        );

        final settings = StoreSettingsResponse.fromJson(response);
        if (settings.status == 'success') {
          AuthController authController = Get.find<AuthController>();
          snack('Success', "${settings.message}", Icons.done);
          authController.updateProfile();
          getStoreProfileInfo();
          Get.off(ProfileScreen());
          getStoreProfileInfo();
          authController.updateProfile();
        } else {
          snack('Failed', "${settings.message}", Icons.error);
        }
      } catch (e) {
        snack('Failed', e.toString().substring(0,200), Icons.error);
      } finally {
        _isLoading.value = false;
        update();
      }
    } else {
      return Future.error("All fields are required");
    }
  }
}
