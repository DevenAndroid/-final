import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';
import '../../../controller/product/product_detail_controller.dart';

import '../../../constraints/colors.dart';

class ChooseImageSheetWidget extends GetView<ProductDetailController> {
  const ChooseImageSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              child: const Text('Take Picture'),
              onPressed: () async {
                final image = await controller.pickImage(
                  source: ImageSource.camera,
                );
                Navigator.pop(context, image);
              },
            ),
          ),
          const Divider(),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              child: const Text('Choose From Gallery'),
              onPressed: () async {
                final _image = await controller.pickImage(
                  source: ImageSource.gallery,
                );
                Navigator.pop(context, _image);
              },
            ),
          ),
          const Divider(),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              child: const Text('Choose From Server'),
              onPressed: () async {
                final _image = await controller.pickImage(
                  source: ImageSource.gallery,
                );
                Navigator.pop(context, _image);
              },
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: colorSecondary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
