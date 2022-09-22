import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constraints/colors.dart';
import '../../../../constraints/styles.dart';
import '../../../../controller/product/product_detail_controller.dart';
import '../../../../model/model_single_product.dart';

class HasPersonBookingProduct extends StatefulWidget {
  const HasPersonBookingProduct({Key? key}) : super(key: key);

  @override
  State<HasPersonBookingProduct> createState() =>
      _HasPersonBookingProductState();
}

class _HasPersonBookingProductState extends State<HasPersonBookingProduct> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Has Persons',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.hasPerson.value = !controller.hasPerson.value;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: controller.hasPerson.value == false
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border:
                                    Border.all(width: 1, color: Colors.grey))
                            : BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    width: 3, color: Colors.redAccent)),
                      ),
                      controller.hasPerson.value == true
                          ? const Icon(Icons.check, color: Colors.redAccent)
                          : const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
            Visibility(
              visible: controller.hasPerson.value,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.minPersonsGroup,
                    keyboardType: TextInputType.number,
                    decoration: inputDecorationFilled.copyWith(
                      hintText: 'Min Persons',
                      labelText: 'Min Persons',
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
                    controller: controller.maxPersonsGroup,
                    keyboardType: TextInputType.number,
                    decoration: inputDecorationFilled.copyWith(
                      hintText: 'Max Persons',
                      labelText: 'Max Persons',
                    ),
                    validator: (value) {
                      if (value?.isEmpty == true) {
                        return 'Please enter Max Persons';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subtitle3('Multiply all costs by person count', 16,
                          Colors.black.withOpacity(.6)),
                      InkWell(
                        onTap: () {
                          setState(() {
                            controller.multiplyAllCostsByPersonCount =
                                !controller.multiplyAllCostsByPersonCount;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 22,
                              height: 22,
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: controller
                                          .multiplyAllCostsByPersonCount ==
                                      false
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          width: 1, color: Colors.grey))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          width: 3, color: Colors.redAccent)),
                            ),
                            controller.multiplyAllCostsByPersonCount == true
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.redAccent,
                                    size: 22,
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subtitle3('Count persons as bookings', 16,
                          Colors.black.withOpacity(.6)),
                      InkWell(
                        onTap: () {
                          setState(() {
                            controller.countPersonsAsBookings =
                                !controller.countPersonsAsBookings;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 22,
                              height: 22,
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: controller.countPersonsAsBookings ==
                                      false
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          width: 1, color: Colors.grey))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          width: 3, color: Colors.redAccent)),
                            ),
                            controller.countPersonsAsBookings == true
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.redAccent,
                                    size: 22,
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subtitle3('Enable person types', 16,
                          Colors.black.withOpacity(.6)),
                      InkWell(
                        onTap: () {
                          setState(() {
                            controller.enablePersonTypes =
                                !controller.enablePersonTypes;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 22,
                              height: 22,
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: controller.enablePersonTypes == false
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          width: 1, color: Colors.grey))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          width: 3, color: Colors.redAccent)),
                            ),
                            controller.enablePersonTypes == true
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.redAccent,
                                    size: 22,
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Visibility(
                      visible: controller.enablePersonTypes,
                      child: Column(
                        children: [
                          /// List view for has person types
                          ListView.builder(
                              itemCount: controller.personTypeList!.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffF6F7F9),
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 14, 0, 14),
                                  margin: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: subtitle3("Person Type:", 16,
                                                Colors.black),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                subtitle3(
                                                    controller
                                                        .personTypeList![index]
                                                        .personType
                                                        .toString(),
                                                    16,
                                                    Colors.black),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      controller.personTypeList!
                                                          .removeAt(index);
                                                    });
                                                  },
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(2),
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 14),
                                                    child:
                                                        const Icon(Icons.clear),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: subtitle3("Description:", 16,
                                                Colors.black),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: subtitle3(
                                                controller.personTypeList![index]
                                                    .description
                                                    .toString(),
                                                16,
                                                Colors.black),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: subtitle3(
                                                "Base Cost:", 16, Colors.black),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: subtitle3(
                                                controller.personTypeList![index]
                                                    .baseCost
                                                    .toString(),
                                                16,
                                                Colors.black),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: subtitle3("Block Cost:", 16,
                                                Colors.black),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: subtitle3(
                                                controller.personTypeList![index]
                                                    .blockCost
                                                    .toString(),
                                                16,
                                                Colors.black),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: subtitle3(
                                                "Min:", 16, Colors.black),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: subtitle3(
                                                controller
                                                    .personTypeList![index].min
                                                    .toString(),
                                                16,
                                                Colors.black),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: subtitle3(
                                                "Max", 16, Colors.black),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: subtitle3(
                                                controller
                                                    .personTypeList![index].max
                                                    .toString(),
                                                16,
                                                Colors.black),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }),
                          const SizedBox(height: 20),
                          controller.personTypeList!.length <= 1 ?
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
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        GlobalKey<FormState> formKey =
                                            GlobalKey<FormState>();
                                        TextEditingController personType =
                                            TextEditingController();
                                        TextEditingController description =
                                            TextEditingController();
                                        TextEditingController baseCost =
                                            TextEditingController();
                                        TextEditingController min =
                                            TextEditingController();
                                        TextEditingController max =
                                            TextEditingController();
                                        TextEditingController blockCost =
                                            TextEditingController();
                                        return AlertDialog(
                                          buttonPadding: EdgeInsets.zero,
                                          content: SingleChildScrollView(
                                            child: Form(
                                              key: formKey,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      subtitle3(
                                                          'Person types # ', 20,
                                                          Colors.black.withOpacity(.8)),
                                                      InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: const Icon(
                                                            Icons.clear,
                                                          ))
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      // subtitle3('Person types # ${widget.Index +1}', 20 ,Colors.black.withOpacity(.8)),
                                                      const SizedBox(
                                                          height: 10),
                                                      subtitle3(
                                                          'Enter person types',
                                                          14,
                                                          Colors.black
                                                              .withOpacity(
                                                                  .6)),
                                                      const SizedBox(
                                                          height: 10),
                                                      TextFormField(
                                                        controller:
                                                            personType,
                                                        decoration:
                                                            inputDecorationFilled
                                                                .copyWith(
                                                          hintText: 'Person Type #1',
                                                              labelText: 'Person Type #1',
                                                        ),
                                                        validator: (value) {
                                                          if (value
                                                                  ?.isEmpty ==
                                                              true) {
                                                            return 'Please enter persons type';
                                                          }
                                                          return null;
                                                        },
                                                      ),
                                                      const SizedBox(
                                                          height: 15),
                                                      Row(
                                                        children: [
                                                          Expanded(child: subtitle3(
                                                              "Base Cost:",
                                                              14,
                                                              Colors.black
                                                                  .withOpacity(
                                                                  .5)),),
                                                          Expanded(
                                                            child: subtitle3(
                                                              "Block Cost:",
                                                              14,
                                                              Colors.black
                                                                  .withOpacity(
                                                                  .5)),)
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 15),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              child:
                                                                  commonTextField(
                                                            baseCost,
                                                            TextInputType
                                                                .number,
                                                            "Base cost",
                                                            (value) {
                                                              if (value
                                                                      ?.isEmpty ==
                                                                  true) {
                                                                return 'Please enter base cost';
                                                              }
                                                              return null;
                                                            },
                                                          )),
                                                          const SizedBox(
                                                            width: 20,
                                                          ),
                                                          Expanded(
                                                              child:
                                                                  commonTextField(
                                                            blockCost,
                                                            TextInputType
                                                                .number,
                                                            "block cost",
                                                            (value) {
                                                              if (value
                                                                      ?.isEmpty ==
                                                                  true) {
                                                                return 'Please enter block cost';
                                                              }
                                                              return null;
                                                            },
                                                          )),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 15),
                                                      subtitle3(
                                                          'Description',
                                                          14,
                                                          Colors.black
                                                              .withOpacity(
                                                                  .6)),
                                                      const SizedBox(
                                                          height: 10),
                                                      TextFormField(
                                                        controller:
                                                            description,
                                                        decoration:
                                                            inputDecorationFilled
                                                                .copyWith(
                                                          hintText: 'Description',
                                                              labelText: 'Description',
                                                        ),
                                                        validator: (value) {
                                                          if (value
                                                                  ?.isEmpty ==
                                                              true) {
                                                            return 'Please enter description';
                                                          }
                                                          return null;
                                                        },
                                                      ),
                                                      const SizedBox(
                                                          height: 15),
                                                      Row(
                                                        children: [
                                                          Expanded(child: subtitle3(
                                                              "Min:",
                                                              14,
                                                              Colors.black
                                                                  .withOpacity(
                                                                  .5)),),
                                                          Expanded(child: subtitle3(
                                                              "Max:",
                                                              14,
                                                              Colors.black
                                                                  .withOpacity(
                                                                  .5)),)
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 15),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                              child:
                                                                  commonTextField(
                                                            min,
                                                            TextInputType
                                                                .number,
                                                            "min",
                                                            (value) {
                                                              if (value
                                                                      ?.isEmpty ==
                                                                  true) {
                                                                return 'Please enter min type';
                                                              }
                                                              return null;
                                                            },
                                                          )),
                                                          const SizedBox(
                                                            width: 20,
                                                          ),
                                                          Expanded(
                                                              child:
                                                                  commonTextField(
                                                            max,
                                                            TextInputType
                                                                .number,
                                                            "max",
                                                            (value) {
                                                              if (value
                                                                      ?.isEmpty ==
                                                                  true) {
                                                                return 'Please enter max';
                                                              }
                                                              return null;
                                                            },
                                                          )),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 15),
                                                      InkWell(
                                                        onTap: () {
                                                          if (formKey.currentState!.validate()) {
                                                            setState(() {controller.personTypeList!.add(
                                                                      PersonData(
                                                                        personType: personType.text,
                                                                description: description.text,
                                                                baseCost: baseCost.text,
                                                                blockCost: blockCost.text,
                                                                max: max.text,
                                                                min: min.text,
                                                              ));
                                                            });
                                                            Navigator.pop(
                                                                context);
                                                          }
                                                        },
                                                        child: Container(
                                                          width: double
                                                              .maxFinite,
                                                          height: 50,
                                                          alignment: Alignment
                                                              .center,
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .redAccent,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                          child: subtitle3(
                                                              'Add Person Type',
                                                              18,
                                                              Colors.white),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 0,
                                  primary: Colors.white,
                                ),
                                child: const Text(
                                  'Add Person Type',
                                  style: TextStyle(color: colorPrimary),
                                ),
                              ),
                            ),
                          ) : const SizedBox(),
                        ],
                      ))
                ],
              ),
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
          labelText: hintText,
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
