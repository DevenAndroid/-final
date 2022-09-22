import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../constraints/colors.dart';
import '../../../constraints/styles.dart';
import '../../../controller/product/product_detail_controller.dart';
import '../../../data/models/product/variation/variation.dart';
import 'choose_image_sheet.dart';

class ProductVariationWidget extends GetView<ProductDetailController> {
  final ProductVariationResponse? response;
  final bool isExpanded;

  const ProductVariationWidget({
    Key? key,
    this.response,
    this.isExpanded = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _price = TextEditingController(
      text: '${response?.data?.variations?.regularPrice ?? ''}',
    );
    var _sku = TextEditingController(
      text: '${response?.data?.variations?.sku ?? ''}',
    );
    var _stock = TextEditingController(
      text: '${response?.data?.variations?.stockQty ?? ''}',
    );

    controller.addProductVariationController(
      "${response?.data?.variations?.attributes?.color}&${response?.data?.variations?.attributes?.size}",
      _price,
      _sku,
      _stock,
    );

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: colorBorder),
          ),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Visibility(
                    visible: response?.data?.variations?.attributes?.color != null,
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: colorBorder),
                        ),
                        padding: const EdgeInsets.all(14),
                        child: Text("${response?.data?.variations?.attributes?.color}",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Visibility(
                    visible:
                        response?.data?.variations?.attributes?.size != null,
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: colorBorder),
                        ),
                        padding: const EdgeInsets.all(14),
                        child: Text(
                          "${response?.data?.variations?.attributes?.size}",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.removeProductVariationController(
                            "${response?.data?.variations?.attributes?.color}&${response?.data?.variations?.attributes?.size}",
                            _price,
                            _sku,
                            _stock,
                          );
                          controller.removeProductVariationAttribute(this);
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
                          controller.updateProductVariationExpanded(
                            this,
                            "${response?.data?.variations?.attributes?.color}&${response?.data?.variations?.attributes?.size}",
                          );
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () async {
                        final _response = await showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          builder: (_) => const ChooseImageSheetWidget(),
                        );

                        if (_response != null &&
                            _response.runtimeType == XFile) {
                          controller.uploadProductVariationImage(
                            this,
                            _response.path,
                          );
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withOpacity(0.2),
                          image: response?.data?.variations?.image != null
                              ? DecorationImage(
                                  image: response?.data?.variations?.image
                                          .contains("http")
                                      ? CachedNetworkImageProvider(
                                          response?.data?.variations?.image,
                                        )
                                      : Image.file(
                                          File(
                                            response?.data?.variations?.image,
                                          ),
                                        ).image,
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                        // margin: const EdgeInsets.all(15),
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
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Regular Price',
                      ),
                      controller: _price,
                      validator: (value) {
                        if (value?.isEmpty == true) {
                          return 'Please enter product regular price';
                        }
                        return null;
                      },                      
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _sku,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'SKU',
                      ),
                      validator: (value) {
                        if (value?.isEmpty == true) {
                          return 'Please enter product sku';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _stock,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Stock Quantity',
                      ),
                      validator: (value) {
                        if (value?.isEmpty == true) {
                          return 'Please enter product stock quantity';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
