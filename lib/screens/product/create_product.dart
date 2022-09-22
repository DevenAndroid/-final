import 'dart:io';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:dinelah_vendor/common_widget/leading_icon.dart';
import '../../constraints/colors.dart';
import '../../constraints/styles.dart';
import '../../controller/product/product_detail_controller.dart';
import 'widgets/choose_image_sheet.dart';
import 'widgets/gallery_image_widget.dart';
import 'widgets/product_category_chip_widget.dart';

class CreateProductScreen extends GetView<ProductDetailController> {
  const CreateProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const LeadingAppIcon(),
          title: const Text('Create Product',style: TextStyle(color: Colors.white),),
          actions: [
            TextButton(
              onPressed: controller.createNewProduct,
              child: const Text('CREATE',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
        body: LoadingOverlay(
          isLoading: controller.isProductCreating,
          child: Form(
            key: controller.productFormKey,
            child: SingleChildScrollView(
              controller: controller.scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: controller.productNameController,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Name',
                              labelText: 'Name',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter product name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Regular Price',
                              labelText: 'Regular Price',
                              prefixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(width: 15),
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF2f2f2f),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    height: 25,
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                              ),
                            ),
                            controller: controller.regularPriceController,
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Regular price required")
                            ]),
                            // keyboardType: TextInputType.number,
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true,
                                signed: false),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: controller.salePriceController,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Sale Price',
                              labelText: 'Sale Price',
                              prefixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(width: 15),
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF2f2f2f),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    height: 25,
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                              ),
                            ),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Sales price required")
                            ]),
                            // keyboardType: TextInputType.number,
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true,
                                signed: false),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: controller.skuController,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'SKU',
                              labelText: 'SKU',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter product sku';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: textFieldFillColor,
                            ),
                            child: InkWell(
                              onTap: () async {
                                await showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    color: Colors.white,
                                    child: const ProductCategoryChipWidget(),
                                  ),
                                );
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 15),
                                  Text(
                                    'Categories',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Spacer(),
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ),
                          Wrap(
                            alignment: WrapAlignment.start,
                            spacing: 4,
                            children: List.generate(
                              controller.productCategories.length ?? 0,
                                  (index) => FilterChip(
                                label: Text(
                                  "${controller.productCategories[index].name}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                backgroundColor: colorPrimary,
                                selectedColor: colorPrimary,
                                showCheckmark: false,
                                onSelected: (value) {},
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Product Image',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      FocusManager.instance.primaryFocus!.unfocus();
                      final response = await showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        builder: (context) => const ChooseImageSheetWidget(),
                      );
                      if (response != null && response.runtimeType == XFile) {
                        controller.setProductImage(response.path);
                      }
                      debugPrint("Response: $response");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.withOpacity(0.2),
                        image: controller.productImage.isNotEmpty
                            ? DecorationImage(
                                image: FileImage(
                                  File(controller.productImage),
                                ),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      margin: const EdgeInsets.all(15),
                      height: 180,
                      child: controller.productImage.isNotEmpty ?
                      null :
                      Center(
                        child: Icon(
                          Icons.image_outlined,
                          size: 100,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
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
                      child: ElevatedButton(
                        onPressed: () async {
                          FocusManager.instance.primaryFocus!.unfocus();
                          final response = await showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            builder: (context) =>
                                const ChooseImageSheetWidget(),
                          );
                          if (response != null &&
                              response.runtimeType == XFile) {
                            controller.setProductImage(response.path);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          primary: colorSecondary,
                        ),
                        child: const Text('Select Image'),
                      ),
                    ),
                  ),
                  const GalleryImagesWidget(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: controller.createNewProduct,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          primary: colorSecondary,
                        ),
                        child: const Text('Create Product'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
