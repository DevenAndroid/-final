import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/product/product_detail_controller.dart';
import '../../../constraints/colors.dart';
import '../../../constraints/styles.dart';

class ProductAttributeWidget extends GetView<ProductDetailController> {
  final String? name;
  final bool isExpanded;
  const ProductAttributeWidget({
    Key? key,
    this.name,
    this.isExpanded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          border: Border.all(color: colorBorder),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: colorBorder),
                    ),
                    padding: const EdgeInsets.all(14),
                    child: Text(name ?? ''),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.removeProductAttribute(this);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          size: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        controller.updateProductAttribute(this);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          isExpanded
                              ? Icons.arrow_upward
                              : Icons.arrow_downward,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Visibility(
              visible: isExpanded,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  if (name?.toLowerCase().contains("size") == true)
                    Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 4,
                      children: List.generate(
                        controller.sizeVariationAttributes.length,
                        (index) => FilterChip(
                          label: Text(
                            "${controller.sizeVariationAttributes[index].name}",
                            style: TextStyle(
                              color: controller.sizeVariationAttributes[index].isSelected ?? false
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          selected: controller
                                  .sizeVariationAttributes[index].isSelected ??
                              false,
                          backgroundColor: Colors.white,
                          // avatarBorder: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(20),
                          //   side: const BorderSide(color: Colors.black),
                          // ),
                          side: BorderSide(color: Colors.grey.withOpacity(0.4)),
                          selectedColor: colorPrimary,
                          checkmarkColor: Colors.white,
                          onSelected: (value) {
                            controller.updateSelectedSizeAttributes(
                              controller.sizeVariationAttributes[index],
                            );
                          },
                        ),
                      ),
                    ),
                  if (name?.toLowerCase().contains("color") == true)
                    Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 4,
                      children: List.generate(
                        controller.colorVariationAttributes.length,
                        (index) => FilterChip(
                          label: Text(
                            "${controller.colorVariationAttributes[index].name}",
                            style: TextStyle(
                              color: controller.colorVariationAttributes[index]
                                          .isSelected ??
                                      false
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          selected: controller
                                  .colorVariationAttributes[index].isSelected ??
                              false,
                          backgroundColor: Colors.white,
                          selectedColor: colorPrimary,
                          side: BorderSide(color: Colors.grey.withOpacity(0.4)),
                          checkmarkColor: Colors.white,
                          onSelected: (value) {
                            controller.updateSelectedColorAttributes(
                              controller.colorVariationAttributes[index],
                            );
                          },
                        ),
                      ),
                    ),
                  /// New Code
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //     physics: const NeverScrollableScrollPhysics(),
                  //     itemCount: controller.attributeModel.value.data!.length,
                  //     itemBuilder: (context, indexs){
                  //   return Visibility(
                  //     child: Wrap(
                  //       alignment: WrapAlignment.start,
                  //       spacing: 4,
                  //       children: List.generate(
                  //         controller.attributeModel.value.data![indexs].items!.length,
                  //             (index) => FilterChip(
                  //           label: Text(
                  //             "${controller.attributeModel.value.data![indexs].items![index].name}",
                  //             style: TextStyle(
                  //               color: controller.attributeModel.value.data![indexs].items![index]
                  //                   .isSelected ??
                  //                   false
                  //                   ? Colors.white
                  //                   : Colors.black,
                  //             ),
                  //           ),
                  //           selected: controller.attributeModel.value.data![indexs].items![index].isSelected ??
                  //               false,
                  //           backgroundColor: Colors.white,
                  //           selectedColor: colorPrimary,
                  //           side: BorderSide(color: Colors.grey.withOpacity(0.4)),
                  //           checkmarkColor: Colors.white,
                  //           onSelected: (value) {
                  //             controller.updateSelectedColorAttributes(
                  //               controller.colorVariationAttributes[index],
                  //             );
                  //           },
                  //         ),
                  //       ),
                  //     ),
                  //   );
                  // }),
                  const SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
