import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';

import '../../../controller/store_settings_controller.dart';

class StoreImageWidget extends GetView<StoreSettingsController> {
  const StoreImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Row(
            children: const [
              Expanded(
                child:
                Text(
                  'Add Logo',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child:
                Text(
                  'Add Banner',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: controller.pickStoreLogo,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      image: controller.storeLogoImagePath.isNotEmpty
                          ? DecorationImage(
                              image: controller.storeLogoImagePath.contains("http")
                                  ? CachedNetworkImageProvider(
                                      '${controller.storeLogoImagePath}')
                                  : Image.file(
                                      File(
                                        "${controller.storeLogoImagePath}",
                                      ),
                                    ).image,
                              fit: BoxFit.cover,
                            )
                          : null,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    height: 116,
                    child: controller.storeLogoImagePath.isNotEmpty ? null : Icon(PhosphorIcons.upload_simple),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: InkWell(
                  onTap: controller.pickStoreBanner,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      image: controller.storeBannerImagePath.isNotEmpty
                          ? DecorationImage(
                              image:
                                  controller.storeBannerImagePath.contains("http")
                                      ? CachedNetworkImageProvider(
                                          '${controller.storeBannerImagePath}')
                                      : Image.file(
                                          File(
                                            "${controller.storeBannerImagePath}",
                                          ),
                                        ).image,
                              fit: BoxFit.cover,
                            )
                          : null,
                      color: Colors.white,
                    ),
                    height: 116,
                    alignment: Alignment.center,
                    child: controller.storeBannerImagePath.isNotEmpty ? null : const Icon(PhosphorIcons.upload_simple),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
