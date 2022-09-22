import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:loading_overlay/loading_overlay.dart';
import '../../constraints/colors.dart';
import '../../constraints/styles.dart';
import '../../controller/product/product_detail_controller.dart';
import 'widgets/choose_image_sheet.dart';
import 'widgets/gallery_image_widget.dart';
import 'widgets/product_category_chip_widget.dart';

class AddBookableProduct extends StatefulWidget {
  @override
  State<AddBookableProduct> createState() => _AddBookableProductState();
}

class _AddBookableProductState extends State<AddBookableProduct> {
  ProductDetailController controller = Get.put(ProductDetailController());

  TextEditingController timeInput1 = TextEditingController();
  TextEditingController timeInput2 = TextEditingController();
  TextEditingController maxBookingPerBlock = TextEditingController();
  TextEditingController minimumBlockBookable = TextEditingController();
  TextEditingController maximumBlockBookable = TextEditingController();
  TextEditingController selectDate = TextEditingController();
  TextEditingController minPersons = TextEditingController();
  TextEditingController maxPersons = TextEditingController();
  TextEditingController personName1 = TextEditingController();
  TextEditingController personName2 = TextEditingController();
  TextEditingController label = TextEditingController();
  //text editing controller for text field
  @override
  void initState() {
    super.initState();
    timeInput1.text = ""; //set the initial value of text field
    timeInput2.text = ""; //set the initial value of text field
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Add Bookable Product',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            TextButton(
              onPressed: controller.createNewProduct,
              child: const Text('CREATE'),
            ),
          ],
        ),
        body: LoadingOverlay(
          isLoading: controller.isProductCreating,
          child: Form(
            key: controller.productFormKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                        builder: (context) => const ChooseImageSheetWidget(),
                      );
                      if (_response != null && _response.runtimeType == XFile) {
                        controller.setProductImage(_response.path);
                      }
                      debugPrint("Response: $_response");
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
                      child: Center(
                        child: Icon(
                          Icons.image_outlined,
                          size: 100,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
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
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter product name';
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
                                    color: Theme.of(context).backgroundColor,
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
                              controller.categories?.length ?? 0,
                                  (index) => FilterChip(
                                label: Text(
                                  "${controller.categories?[index].name}",
                                  style: TextStyle(
                                    color: controller.categories?[index]
                                        .isSelected ??
                                        false
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                selected:
                                controller.categories?[index].isSelected ??
                                    false,
                                backgroundColor: Colors.white,
                                selectedColor: colorPrimary,
                                checkmarkColor: Colors.white,
                                onSelected: (value) {
                                  // todo: do on selected
                                },
                              ),
                            ),
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
                                    color: Theme.of(context).backgroundColor,
                                    child: const ProductCategoryChipWidget(),
                                  ),
                                );
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 15),
                                  Text(
                                    'tags',
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
                              controller.categories?.length ?? 0,
                              (index) => FilterChip(
                                label: Text(
                                  "${controller.categories?[index].name}",
                                  style: TextStyle(
                                    color: controller.categories?[index]
                                                .isSelected ??
                                            false
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                selected:
                                    controller.categories?[index].isSelected ??
                                        false,
                                backgroundColor: Colors.white,
                                selectedColor: colorPrimary,
                                checkmarkColor: Colors.white,
                                onSelected: (value) {
                                  // todo: do on selected
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  const GalleryImagesWidget(),
                  const SizedBox(height: 20),
                  ///Availability
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Availability',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: maxBookingPerBlock,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Max Booking per block',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter Max Booking per block';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: minimumBlockBookable,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Minimum Block Bookable',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter Minimum Block Bookable';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: maximumBlockBookable,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Maximum Block Bookable',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter Maximum Block Bookable';
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
                                FocusManager.instance.primaryFocus!.unfocus();
                                await showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    color: Theme.of(context).backgroundColor,
                                    child: const ProductCategoryChipWidget(),
                                  ),
                                );
                              },
                              child: Row(
                                children: const [
                                  SizedBox(width: 15),
                                  Text(
                                    'Select Days',
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
                              controller.categories?.length ?? 0,
                                  (index) => FilterChip(
                                label: Text(
                                  "${controller.categories?[index].name}",
                                  style: TextStyle(
                                    color: controller.categories?[index]
                                        .isSelected ??
                                        false
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                selected:
                                controller.categories?[index].isSelected ??
                                    false,
                                backgroundColor: Colors.white,
                                selectedColor: colorPrimary,
                                checkmarkColor: Colors.white,
                                onSelected: (value) {
                                  // todo: do on selected
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: timeInput1,
                                  decoration: inputDecorationFilled.copyWith(
                                      hintText: 'Start time',
                                      suffixIcon: Icon(
                                        Icons.timer_outlined,
                                        color: colorPrimary,
                                      )),
                                  readOnly: true,
                                  onTap: () async {
                                    TimeOfDay? pickedTime =
                                        await showTimePicker(
                                      initialTime: TimeOfDay.now(),
                                      context: context,
                                    );

                                    if (pickedTime != null) {
                                      print(pickedTime
                                          .format(context)); //output 10:51 PM
                                      DateTime parsedTime = DateFormat.jm()
                                          .parse(pickedTime
                                              .format(context)
                                              .toString());
                                      //converting to DateTime so that we can further format on different pattern.
                                      print(
                                          parsedTime); //output 1970-01-01 22:53:00.000
                                      String formattedTime =
                                          DateFormat('HH:mm:ss')
                                              .format(parsedTime);
                                      print(formattedTime); //output 14:59:00
                                      //DateFormat() is from intl package, you can format the time on any pattern you need.

                                      setState(() {
                                        timeInput1.text =
                                            formattedTime; //set the value of text field.
                                      });
                                    } else {
                                      print("Time is not selected");
                                    }
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: timeInput2,
                                  decoration: inputDecorationFilled.copyWith(
                                      hintText: 'End time',
                                      suffixIcon: Icon(
                                        Icons.timer_outlined,
                                        color: colorPrimary,
                                      )),
                                  readOnly: true,
                                  onTap: () async {
                                    TimeOfDay? pickedTime =
                                        await showTimePicker(
                                      initialTime: TimeOfDay.now(),
                                      context: context,
                                    );
                                    if (pickedTime != null) {
                                      print(pickedTime
                                          .format(context)); //output 10:51 PM
                                      DateTime parsedTime = DateFormat.jm()
                                          .parse(pickedTime
                                              .format(context)
                                              .toString());
                                      //converting to DateTime so that we can further format on different pattern.
                                      print(
                                          parsedTime); //output 1970-01-01 22:53:00.000
                                      String formattedTime =
                                          DateFormat('HH:mm:ss')
                                              .format(parsedTime);
                                      print(formattedTime); //output 14:59:00
                                      //DateFormat() is from intl package, you can format the time on any pattern you need.
                                      setState(() {
                                        timeInput2.text =
                                            formattedTime; //set the value of text field.
                                      });
                                    } else {
                                      print("Time is not selected");
                                    }
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Has Persons',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: minPersons,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Min Persons',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter Min Persons';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: maxPersons,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Max Persons',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter Max Persons';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: personName1,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: '#12345 - Person Name',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter Person Name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: personName2,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: '#12345 - Person Name',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter Person Name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: colorPrimary),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                /*controller.createNewProduct*/
                                child: const Text(
                                  'Add Person',
                                  style: TextStyle(color: colorPrimary),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 0,
                                  primary: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Resources',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: label,
                            decoration: inputDecorationFilled.copyWith(
                              hintText: 'Label',
                            ),
                            validator: (value) {
                              if (value?.isEmpty == true) {
                                return 'Please enter Label name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: colorPrimary),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                /*controller.createNewProduct*/
                                child: const Text(
                                  'Add Resources',
                                  style: TextStyle(color: colorPrimary),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 0,
                                  primary: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: controller.createNewProduct,
                        child: const Text('Save Product'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          primary: colorSecondary,
                        ),
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
