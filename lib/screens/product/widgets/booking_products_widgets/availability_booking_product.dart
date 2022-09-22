import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/product/product_detail_controller.dart';

import '../../../../constraints/colors.dart';
import '../../../../constraints/styles.dart';

class AvailabilityBookingProduct extends StatefulWidget {
  const AvailabilityBookingProduct({Key? key}) : super(key: key);

  @override
  State<AvailabilityBookingProduct> createState() => _AvailabilityBookingProductState();
}

class _AvailabilityBookingProductState extends State<AvailabilityBookingProduct> {

  final controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Availability',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: controller.availabilityMaxBooking,
              decoration: inputDecorationFilled.copyWith(
                hintText: 'Max Booking per block',
                labelText: 'Max Booking per block',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Please enter Max Booking per block';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            Text(
              'Minimum block bookable',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6)),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(8),
                        border: Border.all(
                            width: 1,
                            color: Colors.grey.shade300),
                        color: Colors.white,
                      ),
                      width: 60,
                      child: TextFormField(
                        onChanged: (S) {
                          setState(() {});
                        },
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                            border: InputBorder.none),
                        controller: controller.availabilityMinimumBlock,
                        keyboardType: const TextInputType
                            .numberWithOptions(
                          decimal: false,
                          signed: true,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: const Icon(
                            Icons.arrow_drop_up,
                            size: 25.0,
                          ),
                          onTap: () {
                            FocusManager.instance.primaryFocus!.unfocus();
                            if(controller.availabilityMinimumBlock.text == ""){
                              controller.availabilityMinimumBlock.text = "1";
                            }
                            else{
                              int currentValue = int.parse(controller.availabilityMinimumBlock.text);
                              setState(() {
                                currentValue++;
                                controller.availabilityMinimumBlock.text = (currentValue).toString(); // incrementing value
                              });
                            }
                          },
                        ),
                        InkWell(
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 25.0,
                          ),
                          onTap: () {
                            FocusManager
                                .instance.primaryFocus!
                                .unfocus();
                            int currentValue =
                            int.parse(controller
                                .availabilityMinimumBlock
                                .text);
                            setState(() {
                              currentValue--;
                              controller
                                  .availabilityMinimumBlock
                                  .text = (currentValue >
                                  0
                                  ? currentValue
                                  : 0)
                                  .toString(); // decrementing value
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),

                /// For time
                Expanded(
                  child: DropdownButtonFormField(
                    decoration:
                    inputDecorationFilled2.copyWith(
                      hintText: 'Type',
                      isDense: true,
                      fillColor: textFieldFillColor,
                      filled: true,
                    ),
                    validator: (value) => value == null
                        ? 'Please select type'
                        : null,
                    value: controller.wcSelectedMinimumBlockBookableUnit,
                    iconSize: 22,
                    dropdownColor: Colors.grey.shade100,
                    items: controller.wcMinimumBlockBookableUnit
                        .map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                                  .withOpacity(.8)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        controller
                            .wcSelectedMinimumBlockBookableUnit =
                        newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Maximum block bookable',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6)),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(8),
                        border: Border.all(
                            width: 1,
                            color: Colors.grey.shade300),
                        color: Colors.white,
                      ),
                      width: 60,
                      child: TextFormField(
                        onChanged: (S) {
                          setState(() {});
                        },
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                            border: InputBorder.none),
                        controller: controller.availabilityMaximumBlock,
                        keyboardType: const TextInputType
                            .numberWithOptions(
                          decimal: false,
                          signed: true,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: const Icon(
                            Icons.arrow_drop_up,
                            size: 25.0,
                          ),
                          onTap: () {
                            FocusManager
                                .instance.primaryFocus!
                                .unfocus();
                            if(controller.availabilityMaximumBlock.text == ""){
                              controller.availabilityMaximumBlock.text = "1";
                            }
                            else{
                              int currentValue = int.parse(controller.availabilityMaximumBlock.text);
                              setState(() {
                                currentValue++;
                                controller.availabilityMaximumBlock.text = (currentValue).toString(); // incrementing value
                              });
                            }
                          },
                        ),
                        InkWell(
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 25.0,
                          ),
                          onTap: () {
                            FocusManager
                                .instance.primaryFocus!
                                .unfocus();
                            int currentValue =
                            int.parse(controller
                                .availabilityMaximumBlock
                                .text);
                            setState(() {
                              currentValue--;
                              controller
                                  .availabilityMaximumBlock
                                  .text = (currentValue >
                                  0
                                  ? currentValue
                                  : 0)
                                  .toString(); // decrementing value
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),

                /// For time
                Expanded(
                  child: DropdownButtonFormField(
                    decoration:
                    inputDecorationFilled2.copyWith(
                      hintText: 'Type',
                      isDense: true,
                      fillColor: textFieldFillColor,
                      filled: true,
                    ),
                    validator: (value) => value == null
                        ? 'Please select type'
                        : null,
                    value: controller
                        .wcSelectedMaximumBlockBookableUnit,
                    iconSize: 22,
                    dropdownColor: Colors.grey.shade100,
                    items: controller
                        .wcMaximumBlockBookableUnit
                        .map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                                  .withOpacity(.8)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        controller
                            .wcSelectedMaximumBlockBookableUnit =
                        newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  commonTextField(TextEditingController controller, TextInputType textInputType,
      String hintText, FormFieldValidator<String>? validator) {
    return TextFormField(
        controller: controller,
        keyboardType: textInputType,
        decoration: inputDecorationFilled.copyWith(
          hintText: hintText,
        ),
        validator: validator);
  }

  subtitle3(String text, double fontSize, Color textColor) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontWeight: FontWeight.w500, color: textColor),
    );
  }

}
