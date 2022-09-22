import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constraints/colors.dart';
import '../../../constraints/styles.dart';
import '../../../controller/product/product_detail_controller.dart';
import '../../../data/models/product/variation_attributes/variation_attr.dart';
import 'product_variation.dart';

class ProductVariationsWidget extends GetView<ProductDetailController> {
  const ProductVariationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 20,
          ),
          child: Form(
            key: controller.variationsFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Variations',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Visibility(
                  visible:
                      controller.availableColorVariationAttributes.isNotEmpty,
                  child: DropdownButtonFormField<VariationAttribute>(
                    decoration: inputDecoration.copyWith(
                      hintText: 'Choose Color',
                      isDense: true,
                    ),
                    // value: controller.selectedColorVariation,
                    validator: (value) {
                      if (value == null) {
                        return "Please select a color";
                      } else {
                        return null;
                      }
                    },
                    items: List.generate(
                      controller.availableColorVariationAttributes.length,
                      (index) => DropdownMenuItem(
                        value:
                            controller.availableColorVariationAttributes[index],
                        child: Text(
                          controller.availableColorVariationAttributes[index]
                                  .name ??
                              '',
                        ),
                      ),
                    ),
                    onChanged: (value) =>
                        controller.selectedColorVariation = value,
                  ),
                ),
                const SizedBox(height: 8),
                Visibility(
                  visible:
                      controller.availableSizeVariationAttributes.isNotEmpty,
                  child: DropdownButtonFormField<VariationAttribute>(
                    decoration: inputDecoration.copyWith(
                      hintText: 'Choose Size',
                      isDense: true,
                    ),
                    // value: controller.selectedSizeVariation,
                    validator: (value) {
                      if (value == null) {
                        return "Please select a size";
                      } else {
                        return null;
                      }
                    },
                    items: List.generate(
                      controller.availableSizeVariationAttributes.length,
                      (index) => DropdownMenuItem(
                        child: Text(
                          controller.availableSizeVariationAttributes[index]
                                  .name ??
                              '',
                        ),
                        value:
                            controller.availableSizeVariationAttributes[index],
                      ),
                    ),
                    onChanged: (value) =>
                        controller.selectedSizeVariation = value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Obx(
                      () => controller.creatingVariation
                          ? const LinearProgressIndicator()
                          : ElevatedButton(
                              onPressed: _createProductVariation,
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                primary: colorSecondary,
                              ),
                              child: const Text('ADD VARIATIONS'),
                            ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Obx(
                  () => Form(
                    key: controller.variationFormKey,
                    child: Visibility(
                      visible: controller.productVariationAttributes.isNotEmpty,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: colorBorder),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: List.generate(
                            controller.productVariationAttributes.length,
                            (index) =>
                                controller.productVariationAttributes[index],
                          )..add(
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: Obx(
                                  () => controller.creatingVariation
                                      ? const LinearProgressIndicator()
                                      : ElevatedButton(
                                          onPressed: _updateVariations,
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            primary: colorSecondary,
                                          ),
                                          child: const Text('SAVE'),
                                        ),
                                ),
                              ),
                            ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _createProductVariation() async {
    if (controller.variationsFormKey.currentState?.validate() == true) {
      controller.createProductVariation(
        productId: controller.createdProductId,
        color: controller.selectedColorVariation?.name,
        size: controller.selectedSizeVariation?.name,
        regularPrice: controller.regularPriceController.text,
      );
    }
  }

  void _updateVariations() async {
    if (controller.variationFormKey.currentState?.validate() == true) {
      controller.updateProductVariations(controller.createdProductId);
    }
  }
}
