import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dinelah_vendor/model/model_attribute_drop_down_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import '/controller/product/product_detail_controller.dart';
import '../../../constraints/colors.dart';
import '../../../constraints/styles.dart';

class ProductAttributesWidget extends StatefulWidget {
  const ProductAttributesWidget({Key? key,}) : super(key: key);

  @override
  State<ProductAttributesWidget> createState() =>
      _ProductAttributesWidgetState();
}

class _ProductAttributesWidgetState extends State<ProductAttributesWidget> {

  final controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 20,
        ),
        child: Form(
          key: controller.attributeFormKey,
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Attributes',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField(
                  decoration: inputDecorationFilled.copyWith(
                    isDense: true,
                    hintText: 'Select Attribute',
                  ),
                  validator: (value) {
                    if (value == null) {
                      return "Please select an attribute type";
                    } else {
                      return null;
                    }
                  },
                  items:
                  List.generate(
                      controller.attributeModel.value.data!.length, (index) {
                    return DropdownMenuItem(
                      value: controller.attributeModel.value.data![index]
                          .titleSlug,
                      child: Text(
                          controller.attributeModel.value.data![index].titleSlug
                              .toString()),
                    );
                  }
                  ),
                  onChanged: (String? value) {
                    for (var item in controller.attributeModel.value.data!) {
                      if (item.titleSlug == value) {
                        item.selected = true;
                      }
                    }
                  },
                ),

                /// Add attribute button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.attributeDataList.clear();
                        setState(() {
                          for (var element in controller.attributeModel.value.data!) {
                            if (element.selected == true) {
                              controller.attributeDataList.add(element);
                              print("object>>>>>>>>>>>>>>>${controller.attributeDataList}");
                            }
                          }
                          print(
                              "attributeDataList Attribute12 >>>>> ${jsonEncode(
                                  controller.attributeDataList)}");
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        primary: colorSecondary,
                      ),
                      child: const Text('ADD ATTRIBUTES'),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                controller.attributeDataList.isEmpty
                    ? const SizedBox.shrink()
                    : Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: colorBorder),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Obx(() {
                        return Column(
                          children: [
                            ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller.attributeDataList.length,
                                itemBuilder: (context, index1) {
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: colorBorder),
                                              ),
                                              padding: const EdgeInsets.all(14),
                                              child: Text(
                                                  controller
                                                      .attributeDataList[index1]
                                                      .titleSlug
                                                      .toString()
                                                      .capitalizeFirst!),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    for (var element in controller
                                                        .attributeModel
                                                        .value.data!) {
                                                      if (element.titleSlug ==
                                                          controller
                                                              .attributeDataList[index1]
                                                              .titleSlug) {
                                                        element.selected =
                                                        false;
                                                        for (var element1 in element
                                                            .items!) {
                                                          element1.isSelected =
                                                          false;
                                                        }
                                                      }
                                                    }
                                                    controller.attributeDataList
                                                        .removeAt(index1);
                                                  });
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
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6),
                                        child: Wrap(
                                          alignment: WrapAlignment.start,
                                          spacing: 4,
                                          children: List.generate(
                                            controller.attributeDataList[index1]
                                                .items!.length,
                                                (index) =>
                                                FilterChip(
                                                  label: Text(
                                                    "${controller
                                                        .attributeDataList[index1]
                                                        .items![index].name}",
                                                    style: TextStyle(
                                                      color: controller
                                                          .attributeDataList[index1]
                                                          .items![index]
                                                          .isSelected == true ?
                                                      Colors.white :
                                                      Colors.black,
                                                    ),
                                                  ),
                                                  selected: controller
                                                      .attributeDataList[index1]
                                                      .items![index].isSelected,
                                                  backgroundColor: Colors.white,
                                                  selectedColor: colorPrimary,
                                                  side: BorderSide(
                                                      color: Colors.grey
                                                          .withOpacity(0.4)),
                                                  checkmarkColor: Colors.white,
                                                  onSelected: (value) {
                                                    setState(() {
                                                      controller
                                                          .attributeDataList[index1]
                                                          .items![index]
                                                          .isSelected =
                                                      !controller
                                                          .attributeDataList[index1]
                                                          .items![index]
                                                          .isSelected;
                                                    });
                                                  },
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  controller.selectedAttributeDataList.clear();
                                  setState(() {
                                    for (var i = 0; i <
                                        controller.attributeDataList
                                            .length; i++) {
                                      List<Items> items = [];
                                      for (var j = 0; j <
                                          controller.attributeDataList[i].items!
                                              .length; j++) {
                                        if (controller.attributeDataList[i]
                                            .items![j].isSelected == true) {
                                          items.add(
                                              controller.attributeDataList[i]
                                                  .items![j]);
                                          print(">>>>>>>>${items}");
                                        }
                                      }
                                      if (items.isNotEmpty) {
                                        controller.selectedAttributeDataList
                                            .add(
                                            ModelAttributeData(
                                                items: items,
                                                titleSlug: controller
                                                    .attributeDataList[i]
                                                    .titleSlug.toString()));
                                      }
                                      print("Addddd>>>>>>>>${controller
                                          .selectedAttributeDataList}");
                                      print(
                                          "selectedAttributeDataList Attribute123 >>>>> ${jsonEncode(
                                              controller
                                                  .selectedAttributeDataList)}");
                                    }
                                  });
                                  controller.addAttribute(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  primary: colorSecondary,
                                ),
                                child: const Text('SAVE ATTRIBUTES'),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                    const SizedBox(height: 30,),
                    InkWell(
                      onTap: () {
                        controller.variationImagePath.value = "";
                        controller.loader.value = false;
                        controller.attributePrice.text = "";
                        var selectedAttributeDataList1 = RxList<
                            ModelAttributeData>.empty(growable: true);
                        selectedAttributeDataList1 = controller
                            .selectedAttributeDataList;

                        for (var i = 0; i <
                            controller.attributeModel.value.data!.length; i++) {
                          for (var j = 0; j <
                              controller.attributeModel.value.data![i].items!
                                  .length; j++) {
                            controller.attributeModel.value.data![i].items![j]
                                .isSelected1 = false;
                          }
                        }
                        log(
                            "selectedAttributeDataList1 Attribute1234 >>>>> ${jsonEncode(
                                controller.attributeModel.value)}");
                        if (selectedAttributeDataList1.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Please Save Variations")
                              )
                          );
                        } else {
                          final GlobalKey<
                              FormState> attributeVariationFormKey = GlobalKey<
                              FormState>();
                          showDialog(context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  insetPadding: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  child: SingleChildScrollView(
                                    child: Form(
                                      key: attributeVariationFormKey,
                                      child: Container(
                                        color: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            const SizedBox(height: 18,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text('Create Variation',
                                                  style: Theme
                                                      .of(context)
                                                      .textTheme
                                                      .titleLarge
                                                      ?.copyWith(
                                                      fontWeight: FontWeight
                                                          .bold),
                                                ),

                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Icon(
                                                    Icons.clear,
                                                    color: Colors.black,
                                                    size: 30,),
                                                ),
                                              ],
                                            ),
                                            ListView.builder(
                                                itemCount: selectedAttributeDataList1
                                                    .length,
                                                physics: const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 10),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text(
                                                          'Variations',
                                                          style: Theme
                                                              .of(context)
                                                              .textTheme
                                                              .titleLarge
                                                              ?.copyWith(
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              fontSize: 16),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets
                                                              .only(top: 14),
                                                          child: DropdownButtonFormField(
                                                              decoration: inputDecoration
                                                                  .copyWith(
                                                                hintText: '${selectedAttributeDataList1[index]
                                                                    .titleSlug
                                                                    .toString()
                                                                    .capitalizeFirst}',
                                                                isDense: true,),
                                                              validator: (
                                                                  value) {
                                                                if (value ==
                                                                    null) {
                                                                  return "Please select a color";
                                                                } else {
                                                                  return null;
                                                                }
                                                              },
                                                              items: List
                                                                  .generate(
                                                                selectedAttributeDataList1[index]
                                                                    .items!
                                                                    .length, (
                                                                  index1) {
                                                                return DropdownMenuItem(
                                                                  value: selectedAttributeDataList1[index]
                                                                      .items![index1]
                                                                      .slug,
                                                                  child: Text(
                                                                    selectedAttributeDataList1[index]
                                                                        .items![index1]
                                                                        .slug
                                                                        .toString(),
                                                                  ),
                                                                );
                                                              },
                                                              ),
                                                              onChanged: (
                                                                  String? value) {
                                                                for (var element in selectedAttributeDataList1[index]
                                                                    .items!) {
                                                                  element
                                                                      .isSelected1 =
                                                                  false;
                                                                }
                                                                for (var element in selectedAttributeDataList1[index]
                                                                    .items!) {
                                                                  if (element
                                                                      .slug ==
                                                                      value) {
                                                                    element
                                                                        .isSelected1 =
                                                                    true;
                                                                    log(element
                                                                        .slug
                                                                        .toString());
                                                                    log(
                                                                        "attributeDataList Attribute12 >>>>> ${jsonEncode(
                                                                            controller
                                                                                .attributeModel
                                                                                .value)}");
                                                                  }
                                                                }
                                                              }
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }
                                            ),
                                            const SizedBox(height: 8,),
                                            Text(
                                              'Variation Price',
                                              style: Theme
                                                  .of(context)
                                                  .textTheme
                                                  .titleLarge
                                                  ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                            const SizedBox(height: 10,),
                                            TextFormField(
                                              controller: controller
                                                  .attributePrice,
                                              keyboardType: TextInputType
                                                  .number,
                                              decoration: inputDecorationFilled
                                                  .copyWith(
                                                hintText: 'Variation Price',
                                                labelText: 'Variation Price',
                                              ),
                                              validator: (value) {
                                                if (value?.isEmpty == true) {
                                                  return 'Please enter variation price';
                                                }
                                                return null;
                                              },
                                            ),
                                            const SizedBox(height: 16,),
                                            Obx(() {
                                              return InkWell(
                                                onTap: () {
                                                  controller
                                                      .pickVariationImage();
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.black
                                                          .withOpacity(0.1),
                                                    ),
                                                    image: controller
                                                        .variationImagePath
                                                        .isNotEmpty
                                                        ? DecorationImage(
                                                      image: controller
                                                          .variationImagePath
                                                          .contains("http")
                                                          ? CachedNetworkImageProvider(
                                                          '${controller
                                                              .variationImagePath}')
                                                          : Image
                                                          .file(
                                                        File(
                                                          "${controller
                                                              .variationImagePath}",
                                                        ),
                                                      )
                                                          .image,
                                                      fit: BoxFit.cover,
                                                    )
                                                        : null,
                                                    color: Colors.white,
                                                  ),
                                                  alignment: Alignment.center,
                                                  height: 116,
                                                  child: controller
                                                      .variationImagePath
                                                      .isNotEmpty
                                                      ? null
                                                      : const Icon(PhosphorIcons
                                                      .upload_simple),
                                                ),
                                              );
                                            }),
                                            const SizedBox(height: 16,),
                                            Obx(() {
                                              return InkWell(
                                                onTap: () {
                                                  if (attributeVariationFormKey
                                                      .currentState!
                                                      .validate()) {
                                                    if (controller
                                                        .variationImagePath
                                                        .value == "") {
                                                      ScaffoldMessenger.of(
                                                          context).showSnackBar(
                                                          const SnackBar(
                                                              content: Text(
                                                                  "Product Image required")));
                                                    } else {
                                                      controller
                                                          .sendingAttributeList
                                                          .clear();
                                                      for (var i = 0; i <
                                                          selectedAttributeDataList1
                                                              .length; i++) {
                                                        List<Items> data = [];
                                                        for (var j = 0; j <
                                                            selectedAttributeDataList1[i]
                                                                .items!
                                                                .length; j++) {
                                                          if (selectedAttributeDataList1[i]
                                                              .items![j]
                                                              .isSelected1 ==
                                                              true) {
                                                            data.add(
                                                                selectedAttributeDataList1[i]
                                                                    .items![j]);
                                                          }
                                                        }
                                                        controller
                                                            .sendingAttributeList
                                                            .add(
                                                            ModelAttributeData(
                                                                items: data,
                                                                titleSlug: selectedAttributeDataList1[i]
                                                                    .titleSlug
                                                                    .toString()
                                                            ));
                                                        log(
                                                            ">><>><>><${controller
                                                                .sendingAttributeList}");
                                                      }
                                                      log(
                                                          "sending list Attribute12345 >>>>> ${jsonEncode(
                                                              controller
                                                                  .sendingAttributeList)}");
                                                      controller
                                                          .createAttributeVariationProductAPI(
                                                          context);
                                                    }
                                                  }
                                                },
                                                child: controller.loader
                                                    .value == false ?
                                                Container(
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 18),
                                                    alignment: Alignment.center,
                                                    width: double.maxFinite,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .circular(8),
                                                        color: colorSecondary
                                                    ),
                                                    height: 46,
                                                    child: const Text(
                                                      'ADD VARIATIONS',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .white,
                                                          fontWeight: FontWeight
                                                              .bold),)) :
                                                const LinearProgressIndicator(
                                                  minHeight: 40,
                                                  color: colorSecondary,),
                                              );
                                            }),
                                            const SizedBox(height: 20,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 14),
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: colorSecondary
                          ),
                          height: 54,
                          child: const Text('Create Variation',
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                      ),
                    )
                  ],
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
