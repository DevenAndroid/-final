import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../../common_widget/leading_icon.dart';
import '../../constraints/colors.dart';
import '../../constraints/styles.dart';
import '../../controller/store_settings_controller.dart';
import 'widget/store_image_widget.dart';

class SettingScreen extends GetView<StoreSettingsController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingOverlay(
        isLoading: controller.isLoading,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Edit Your Profile',style: TextStyle(color: Colors.white),),
            leading: const LeadingAppIcon(),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: controller.storeSettingsFormKey,
              child: Column(
                children: [
                  const StoreImageWidget(),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: controller.storeNameController,
                    decoration: inputDecorationFilled2.copyWith(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade500,
                          width: 1,
                        ),
                      ),
                      hintText: 'Name',
                      labelText: 'Name',
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 15),
                          const Icon(Icons.person),
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
                    validator: (value) {
                      if (value?.isEmpty == true) {
                        return 'Please enter name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.storeAddressController,
                    decoration: inputDecorationFilled2.copyWith(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade500,
                          width: 1,
                        ),
                      ),
                      hintText: 'Address',
                      labelText: 'Address',
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 15),
                          const Icon(Icons.maps_home_work),
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
                    validator: (value) {
                      if (value?.isEmpty == true) {
                        return 'Please enter address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.storePhoneController,
                    decoration: inputDecorationFilled2.copyWith(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade500,
                          width: 1,
                        ),
                      ),
                      hintText: 'Phone',
                      labelText: 'Phone',
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(width: 15),
                          const Icon(Icons.call),
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
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value?.isEmpty == true) {
                        return 'Please enter phone';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: controller.saveStoreSettings,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        primary: colorSecondary,
                      ),
                      child: const Text('Update',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
