import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../controller/product/product_detail_controller.dart';
import 'choose_image_sheet.dart';

class GalleryImagesWidget extends GetView<ProductDetailController> {
  const GalleryImagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Card(
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
              child: Text(
                'Product Gallery Image',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  6,
                  (index) => GestureDetector(
                    onTap: () async {
                      final response = await showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        builder: (_) => const ChooseImageSheetWidget(),
                      );

                      if (response != null && response.runtimeType == XFile) {
                        controller.setProductGalleryImage(
                          index,
                          response.path,
                        );
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.withOpacity(0.2),
                        image: controller.productGalleryImages.isNotEmpty &&
                                controller.productGalleryImages.length > index
                            ? DecorationImage(
                                image: FileImage(
                                  File(
                                    controller.productGalleryImages[index],
                                  ),
                                ),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      margin: const EdgeInsets.all(15),
                      height: 80,
                      width: 80,
                      child: Center(
                        child: Icon(
                          Icons.image_outlined,
                          size: 40,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
