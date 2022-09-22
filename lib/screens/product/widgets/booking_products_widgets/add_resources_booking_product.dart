import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/product/product_detail_controller.dart';

import '../../../../constraints/colors.dart';
import '../../../../constraints/styles.dart';
import '../../../../controller/product/resources_controller.dart';
import '../../../../model/model_single_product.dart';

class AddResourcesBookingProduct extends StatefulWidget {
  const AddResourcesBookingProduct({Key? key}) : super(key: key);

  @override
  State<AddResourcesBookingProduct> createState() => _AddResourcesBookingProductState();
}

class _AddResourcesBookingProductState extends State<AddResourcesBookingProduct> {

  final controller = Get.put(ProductDetailController());
  ResourcesController resourceController = Get.put(ResourcesController());

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
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Has Resources',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.hasResources.value =
                      !controller.hasResources.value;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        margin:
                        const EdgeInsets.only(bottom: 10),
                        decoration: controller.hasResources.value == false
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
                      controller.hasResources.value == true
                          ? const Icon(Icons.check,
                          color: Colors.redAccent)
                          : const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
            Visibility(
              visible: controller.hasResources.value,
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  TextFormField(
                    controller:
                    controller.resourcesLabel,
                    decoration:
                    inputDecorationFilled.copyWith(
                      hintText: 'Resource Label',
                      labelText: 'Resource Label',
                    ),
                    validator: (value) {
                      if (value?.isEmpty == true) {
                        return 'Please enter Min Persons';
                      }
                      return null;
                    },
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
                    value: controller.selectedResources,
                    iconSize: 22,
                    dropdownColor: Colors.grey.shade100,
                    items: controller.hasResourcesType
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
                        controller.selectedResources =
                        newValue!;
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  ListView.builder(
                      itemCount: controller.hasResourceData.length,
                      shrinkWrap: true,
                      physics:
                      const NeverScrollableScrollPhysics(),
                      itemBuilder:
                          (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF6F7F9),
                          ),
                          padding: const EdgeInsets.fromLTRB(14, 14, 0, 14),
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: subtitle3("Resource:", 16, Colors.black),),
                                  Expanded(
                                    flex: 4,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        subtitle3(controller.hasResourceData[index].id!.replaceAll(RegExp('[0-9]'), ""), 16, Colors.black),
                                        InkWell(
                                          onTap: (){
                                            setState((){
                                              // resourceController.resourcesList.add(controller.hasResourceData[index].id!);
                                              controller.hasResourceData.removeAt(index);
                                              // resourceController.getData();
                                            });
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            padding: const EdgeInsets.all(2),
                                            margin: const EdgeInsets.only(right: 14),
                                            child: const Icon(Icons.clear),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: subtitle3("Base Cost:", 16, Colors.black),),
                                  Expanded(
                                    flex: 4,
                                    child: subtitle3(controller.hasResourceData[index].baseCosts.toString(), 16, Colors.black),)
                                ],
                              ),
                              const SizedBox(height: 4,),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: subtitle3("Block Cost:", 16, Colors.black),),
                                  Expanded(
                                    flex: 4,
                                    child: subtitle3(controller.hasResourceData[index].blockCosts.toString(), 16, Colors.black),)
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: DropdownButtonFormField(
                          decoration: inputDecorationFilled2.copyWith(
                            hintText: 'Type',
                            isDense: true,
                            fillColor: textFieldFillColor,
                            filled: true,
                          ),
                          validator: (value) => value == null
                              ? 'Please select type'
                              : null,
                          value: resourceController.hasResourceSelected,
                          iconSize: 22,
                          dropdownColor: Colors.grey.shade100,
                          items: resourceController.resourcesList.map((items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items.toString(),
                                style: TextStyle(
                                    fontSize: 14,
                                    color:
                                    Colors.black.withOpacity(.8)),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              resourceController.hasResourceSelected = newValue.toString();
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 3,
                        child: InkWell(
                          onTap: () {
                            if(resourceController.hasResourceSelected == "Select Resources") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("First select any resource")));
                            }
                            if(resourceController.hasResourceSelected != "Select Resources"){
                              showDialog(context: context, builder: (BuildContext context) {
                                GlobalKey<FormState>formKey = GlobalKey<FormState>();
                                TextEditingController baseCost = TextEditingController();
                                TextEditingController blockCost = TextEditingController();
                                return AlertDialog(
                                  buttonPadding:
                                  EdgeInsets
                                      .zero,
                                  content:
                                  Expanded(
                                    child:
                                    SingleChildScrollView(
                                      child: Form(
                                        key: formKey,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                subtitle3('Add Resources', 20, Colors.black.withOpacity(.8)),
                                                InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Icon(
                                                      Icons.clear,
                                                    ))
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 10),
                                                subtitle3("resourcerName", 18, Colors.black.withOpacity(.6)),
                                                const SizedBox(height: 15),
                                                TextFormField(
                                                  enabled: false,
                                                  readOnly: true,
                                                  keyboardType: TextInputType.number,
                                                  decoration: inputDecorationFilled.copyWith(
                                                    hintText: resourceController.hasResourceSelected.replaceAll(RegExp('[0-9]'), ""),
                                                  ),
                                                ),
                                                const SizedBox(height: 15),
                                                Row(
                                                  children: [
                                                    Expanded(child: subtitle3("Base Cost:", 14, Colors.black.withOpacity(.5)),),
                                                    Expanded(child: subtitle3("Block Cost:", 14, Colors.black.withOpacity(.5)),)
                                                  ],
                                                ),
                                                const SizedBox(height: 15),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: commonTextField(
                                                          baseCost,
                                                          TextInputType.number,
                                                          "Base cost",
                                                              (value) {
                                                            if (value?.isEmpty == true) {
                                                              return 'Please enter base cost';
                                                            }
                                                            return null;
                                                          },
                                                        )),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    Expanded(
                                                        child: commonTextField(
                                                          blockCost,
                                                          TextInputType.number,
                                                          "block cost",
                                                              (value) {
                                                            if (value?.isEmpty == true) {
                                                              return 'Please enter block cost';
                                                            }
                                                            return null;
                                                          },
                                                        )),
                                                  ],
                                                ),
                                                const SizedBox(height: 15),
                                                InkWell(
                                                  onTap: () {
                                                    if (formKey.currentState!.validate()) {
                                                      setState(() {
                                                        controller.hasResourceData.add(ResourceData(
                                                            baseCosts: baseCost.text,
                                                            blockCosts: blockCost.text,
                                                            id: resourceController.hasResourceSelected
                                                        ));
                                                        // resourceController.resourcesList.remove(resourceController.hasResourceSelected);
                                                        // resourceController.hasResourceSelected = "Select Resources";
                                                      });
                                                      Navigator.pop(context);
                                                    }
                                                  },
                                                  child: Container(
                                                    width: double.maxFinite,
                                                    height: 50,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(8)),
                                                    child: subtitle3('Add Resource', 18, Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
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
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            alignment: Alignment.center,
                            child: const Text(
                              'Add Resource',
                              style: TextStyle(
                                  color:Colors.white,fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
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
