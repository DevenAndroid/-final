import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/product/product_detail_controller.dart';

import '../../../../constraints/colors.dart';
import '../../../../constraints/styles.dart';

class GeneralBookingProduct extends StatefulWidget {
  const GeneralBookingProduct({Key? key}) : super(key: key);

  @override
  State<GeneralBookingProduct> createState() => _GeneralBookingProductState();
}

class _GeneralBookingProductState extends State<GeneralBookingProduct> {

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
            Text(
              'General',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              'Booking Duration Type',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6)),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField(
              decoration: inputDecorationFilled2.copyWith(
                hintText: 'Type',
                isDense: true,
                fillColor: textFieldFillColor,
                filled: true,
              ),
              validator: (value) => value == null
                  ? 'Please select type'
                  : null,
              value: controller
                  .wcSelectedBookingDurationType,
              iconSize: 22,
              dropdownColor: Colors.grey.shade100,
              items: controller.wcBookingDurationType
                  .map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: TextStyle(
                        fontSize: 14,
                        color:
                        Colors.black.withOpacity(.8)),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  controller.wcSelectedBookingDurationType =
                  newValue!;
                });
              },
            ),
            const SizedBox(height: 12),
            Text(
              'Booking Duration',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6)),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Row(
                  children: <Widget>[
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
                        controller: controller.generalCustomerDuration,
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
                      children: <Widget>[
                        InkWell(
                          child: const Icon(
                            Icons.arrow_drop_up,
                            size: 25.0,
                          ),
                          onTap: () {
                            FocusManager.instance.primaryFocus!.unfocus();
                            if(controller.generalCustomerDuration.text == ""){
                              controller.generalCustomerDuration.text = "1";
                            } 
                            else{
                              int currentValue = int.parse(controller.generalCustomerDuration.text);
                              setState(() {
                                currentValue++;
                                controller.generalCustomerDuration.text = (currentValue).toString(); // incrementing value
                              });
                            }
                          },
                        ),
                        InkWell(
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 25.0,
                          ),
                          onTap: () {FocusManager.instance.primaryFocus!.unfocus();
                            int currentValue =
                            int.parse(controller.generalCustomerDuration.text);
                            setState(() {
                              currentValue--;
                              controller.generalCustomerDuration.text =
                                  (currentValue > 0 ? currentValue : 0).toString(); // decrementing value
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),

                /// For wc booking duration unit
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
                    value: controller.wcSelectedBookingDurationUnit,
                    iconSize: 22,
                    dropdownColor: Colors.grey.shade100,
                    items: controller.wcBookingDurationUnit.map((String items) {
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
                        controller.wcSelectedBookingDurationUnit =
                        newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Visibility(
              visible: controller.wcSelectedBookingDurationType ==
                  "customer",
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      subtitle3("Minimum duration", 16,
                          Colors.black.withOpacity(.5)),
                      const SizedBox(
                        width: 80,
                      ),
                      subtitle3("Maximum duration", 16,
                          Colors.black.withOpacity(.5)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: (S) {
                              setState(() {});
                            },
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              enabled: true,
                              enabledBorder:
                              OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius
                                      .circular(6),
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.grey
                                          .withOpacity(
                                          .6))),
                              focusedBorder:
                              OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius
                                      .circular(6),
                                  borderSide: const BorderSide(
                                      width: 2,
                                      color: Colors
                                          .redAccent)),
                            ),
                            controller: controller.generalMinimumDuration,
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
                          children: <Widget>[
                            InkWell(
                              child: const Icon(
                                Icons.arrow_drop_up,
                                size: 25.0,
                              ),
                              onTap: () {
                                FocusManager.instance.primaryFocus!.unfocus();
                                if(controller.generalMinimumDuration.text == ""){
                                  controller.generalMinimumDuration.text = "1";
                                }
                                else{
                                  int currentValue = int.parse(controller.generalMinimumDuration.text);
                                  setState(() {
                                    currentValue++;
                                    controller.generalMinimumDuration.text = (currentValue).toString(); // incrementing value
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
                                    .generalMinimumDuration
                                    .text);
                                setState(() {
                                  currentValue--;
                                  controller
                                      .generalMinimumDuration
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
                        const SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (S) {
                              setState(() {});
                            },
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              enabled: true,
                              enabledBorder:
                              OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius
                                      .circular(6),
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.grey
                                          .withOpacity(
                                          .6))),
                              focusedBorder:
                              OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius
                                      .circular(6),
                                  borderSide: const BorderSide(
                                      width: 2,
                                      color: Colors
                                          .redAccent)),
                            ),
                            controller: controller
                                .generalMaximumDuration,
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
                          children: <Widget>[
                            InkWell(
                              child: const Icon(
                                Icons.arrow_drop_up,
                                size: 25.0,
                              ),
                              onTap: () {
                                FocusManager.instance.primaryFocus!.unfocus();
                                if(controller.generalMaximumDuration.text == ""){
                                  controller.generalMaximumDuration.text = "1";
                                }
                                else{
                                  int currentValue = int.parse(controller.generalMaximumDuration.text);
                                  setState(() {
                                    currentValue++;
                                    controller.generalMaximumDuration.text = (currentValue).toString(); // incrementing value
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
                                int currentValue1 =
                                int.parse(controller.generalMaximumDuration
                                    .text);
                                setState(() {
                                  currentValue1--;
                                  controller
                                      .generalMaximumDuration
                                      .text = (currentValue1 >
                                      0
                                      ? currentValue1
                                      : 0)
                                      .toString(); // decrementing value
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            subtitle3("Can be cancelled", 16,
                Colors.black.withOpacity(.5)),
            const SizedBox(height: 12),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.canBeCancelled =
                      !controller.canBeCancelled;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        margin:
                        const EdgeInsets.only(bottom: 10),
                        decoration: controller
                            .canBeCancelled ==
                            false
                            ? BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                4),
                            border: Border.all(
                                width: 1,
                                color: Colors.grey))
                            : BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                4),
                            border: Border.all(
                                width: 3,
                                color: Colors
                                    .redAccent)),
                      ),
                      controller.canBeCancelled == true
                          ? const Icon(Icons.check,
                          color: Colors.redAccent)
                          : const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: subtitle3(
                      "Check this box if the booking can be cancelled by the customer after it has been purchased. A refund will not be sent automatically.",
                      14,
                      Colors.black.withOpacity(.5)),
                )
              ],
            )
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
