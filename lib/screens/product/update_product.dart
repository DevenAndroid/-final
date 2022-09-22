import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dinelah_vendor/screens/product/product_variation_list.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:dinelah_vendor/common_widget/leading_icon.dart';
import 'package:dinelah_vendor/controller/product/product_controller.dart';
import 'package:dinelah_vendor/controller/product/resources_controller.dart';
import 'package:dinelah_vendor/screens/product/widgets/booking_products_widgets/add_resources_booking_product.dart';
import 'package:dinelah_vendor/screens/product/widgets/booking_products_widgets/availability_booking_product.dart';
import 'package:dinelah_vendor/screens/product/widgets/booking_products_widgets/booking_cost_product.dart';
import 'package:dinelah_vendor/screens/product/widgets/booking_products_widgets/general_booking_product.dart';
import 'package:dinelah_vendor/screens/product/widgets/booking_products_widgets/has_person_booking_product.dart';
import '../../constraints/strings.dart';
import '../../constraints/colors.dart';
import '../../constraints/styles.dart';
import '../../controller/product/product_detail_controller.dart';
import '../../utils/snackbar.dart';
import 'index.dart';

class UpdateProductScreen extends StatefulWidget {
  final bool? fromCreate;
  const UpdateProductScreen({Key? key, this.fromCreate}) : super(key: key);

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  @override
  void initState() {
    super.initState();
  }

  ResourcesController resourceController = Get.put(ResourcesController());

  final controller = Get.put(ProductDetailController());

  void _updateProduct() async {
    if (controller.updateProductFormKey.currentState!.validate()) {
      print(widget.fromCreate.toString());
      final response =
      await controller.updateProduct(context, widget.fromCreate!);
      if (response['status'] == 'success') {
        Get.back();
        snack('Success', response['message'], Icons.done);
        final productController = Get.find<ProductController>();
        productController.refreshProducts();
      } else {
        snack('Warning', response['message'], Icons.message);
      }
    }
  }

  String variationInfo =
      "Variable product contains the variations for product, where customer "
      "can select any variant of the product like different colors and sizes.\n"
      "For variable product you have to create variations at down blow";

  String bookingInfo = "In these types of product customer "
      "can book them for curtain occasions where customer can book the no. of "
      "persons, time duration and other features given in product.\n"
      "To crate booking product you have to add product features at down blow";

  String simpleInfo =
      "Simple products means the basic product which dose not contain any features "
      "of variation and booking products\n"
      "To create simple product you have to fill given fields";

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => LoadingOverlay(
        isLoading: controller.isProductUpdating,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: const LeadingAppIcon(),
            title: const Text('Update Product'),
            actions: [
              TextButton(
                onPressed: _updateProduct,
                child: const Text(
                  'UPDATE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          body: LoadingOverlay(
            isLoading: controller.isProductCreating,
            child: Form(
              key: controller.updateProductFormKey,
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
                            Obx(() {
                              return Visibility(
                                visible:
                                controller.productType?.toLowerCase() !=
                                    'booking',
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    TextFormField(
                                      decoration:
                                      inputDecorationFilled.copyWith(
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
                                              color:
                                              Colors.grey.withOpacity(0.5),
                                            )
                                          ],
                                        ),
                                      ),
                                      controller:
                                      controller.regularPriceController,
                                      validator: MultiValidator([
                                        RequiredValidator(
                                            errorText:
                                            "Please enter regular price")
                                      ]),
                                      keyboardType: TextInputType.number,
                                    ),
                                    const SizedBox(height: 10),
                                    controller.productType == "bookable"
                                        || controller.productType == "variable"
                                        ? const SizedBox.shrink()
                                        : TextFormField(
                                      decoration:
                                      inputDecorationFilled.copyWith(
                                        hintText: 'Stock Quantity',
                                        labelText: 'Stock Quantity',
                                      ),
                                      controller:
                                      controller.stockQuantity,
                                      validator: MultiValidator([
                                        RequiredValidator(
                                            errorText:
                                            "Please enter stock quantity")
                                      ]),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ],
                                ),
                              );
                            }),
                            const SizedBox(height: 10),
                            Container(
                              height: 55,
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

                            /// Simple variation and Booking
                            DropdownButtonFormField<String>(
                              decoration: inputDecorationFilled2.copyWith(
                                hintText: 'Select Product Type',
                                isDense: true,
                                fillColor: textFieldFillColor,
                                filled: true,
                              ),
                              validator: (value) =>
                              value == null ? 'Please select type' : null,
                              items: List.generate(
                                productTypes.length,
                                    (index) => DropdownMenuItem(
                                  value: productTypes[index].toLowerCase(),
                                  child: Text(productTypes[index]),
                                ),
                              ),
                              value: controller.productType,
                              onChanged: (value) {
                                controller.productType = value;
                                setState(() {});
                                print(
                                    "::::" + controller.productType.toString());
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        contentPadding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        title: Padding(
                                          padding:
                                          const EdgeInsets.only(bottom: 20),
                                          child: Text(
                                              'Product type: ${value.toString().toUpperCase()}'),
                                        ),
                                        content: Text(controller.productType ==
                                            "variable"
                                            ? variationInfo
                                            : controller.productType == "bookable"
                                            ? bookingInfo
                                            : simpleInfo),
                                        contentTextStyle: const TextStyle(
                                            color: Colors.black87, fontSize: 18),
                                        actions: [
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      ),
                                );
                              },
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () async {
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
                                debugPrint("Response: $response");
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.grey.withOpacity(0.2),
                                  image: controller.productImage.isNotEmpty
                                      ? DecorationImage(
                                    image: controller.productImage
                                        .contains("http")
                                        ? CachedNetworkImageProvider(
                                      controller.productImage,
                                    )
                                        : Image.file(
                                      File(controller.productImage),
                                    ).image,
                                    fit: BoxFit.cover,
                                  )
                                      : null,
                                ),
                                // margin: const EdgeInsets.all(15),
                                height: 180,
                                child: Center(
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
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TaxAndShippingWidget(),

                    /// Variation
                    Visibility(
                      visible:
                      controller.productType?.toLowerCase() == 'variable',
                      child: Column(
                        children: const [
                          SizedBox(height: 20),
                          ProductAttributesWidget(),
                          SizedBox(height: 20),
                          ProductVariationList(),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),

                    /// Bookable
                    Visibility(
                        visible:
                        controller.productType?.toLowerCase() == 'bookable',
                        child: Column(
                          children: const [
                            ///booking Cost
                            BookingCostProduct(),

                            /// General
                            GeneralBookingProduct(),
                            SizedBox(height: 20),

                            /// availability
                            AvailabilityBookingProduct(),
                            SizedBox(height: 20),

                            ///Has person
                            HasPersonBookingProduct(),
                            SizedBox(height: 20),

                            /// Add resources
                            AddResourcesBookingProduct(),
                            SizedBox(height: 20),
                          ],
                        )),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  subtitle3(String text, double fontSize, Color textColor) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontWeight: FontWeight.w500, color: textColor),
    );
  }
}
