import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/screens/profile/widgets/change_password_profile.dart';
import '../settings/settings.dart';
import '/constraints/colors.dart';
import '/controller/store_settings_controller.dart';
import '../../constraints/styles.dart';
import 'widgets/profile_image.dart';

class ProfileScreen extends GetView<StoreSettingsController> {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.getStoreProfileInfo();
    return Obx(
      () => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileImage(),
              Text(
                '${controller.storeSettings.storeProfile?.storeName}',
                style: Theme.of(context).textTheme.headline5,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [                   
                    const SizedBox(height: 20),
                    TextFormField(
                      enabled: false,
                      decoration: inputDecorationFilled2.copyWith(
                        hintText: '${controller.storeSettings.storeProfile?.location}',
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 15),
                            const Icon(Icons.location_pin),
                            const SizedBox(width: 10),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      enabled: false,
                      decoration: inputDecorationFilled2.copyWith(
                        hintText:
                            '${controller.storeSettings.storeProfile?.phone}',
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 15),
                            const Icon(Icons.phone),
                            const SizedBox(width: 10),
                            Container(
                              height: 25,
                              width: 1,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.off(() => const SettingScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          primary: colorSecondary,
                        ),
                        child: const Text('Edit Profile'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(
                              const ChangePassword()
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          primary: colorSecondary,
                        ),
                        child: const Text('Change Password'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


/// logOut code
/*
  onPressed: () {
        final AuthController _controller = Get.find<AuthController>();
        _controller.usernameController.text = "";
        _controller.passwordController.text = "";
        _controller.logout();
      },
* */
