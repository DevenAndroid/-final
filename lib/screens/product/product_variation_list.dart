import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;
import '../../constraints/colors.dart';
import '../../constraints/styles.dart';
import '../../controller/product/product_detail_controller.dart';
import '../../repo/edit_attribute_variation_repo.dart';
import '../../repo/remove_variation_repo.dart';

class ProductVariationList extends StatefulWidget {
  const ProductVariationList({Key? key}) : super(key: key);

  @override
  State<ProductVariationList> createState() => _ProductVariationListState();
}

class _ProductVariationListState extends State<ProductVariationList> {

  final controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    setState((){});
    return Obx(() {
      return controller.attributeListLoaded.value == false ?  const LinearProgressIndicator() : Container(
        padding:  const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
            itemCount: controller.attributeList.value.data!.length,
            shrinkWrap: true,
            physics:  const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding:  const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           const Text("Product Variation", style: TextStyle(
                              color: Colors.black, fontSize: 18),),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    controller.variationImagePath.value = "";
                                    TextEditingController price = TextEditingController();
                                    TextEditingController stockQty = TextEditingController();
                                    price.text = controller.attributeList.value.data![index].displayPrice.toString();
                                    stockQty.text = controller.attributeList.value.data![index].quantity.toString();
                                    final GlobalKey<FormState> FormKey1 = GlobalKey<FormState>();
                                    showDialog(context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            insetPadding:  const EdgeInsets.symmetric(horizontal: 18),
                                            child: SingleChildScrollView(
                                              child: Form(
                                                key: FormKey1,
                                                child: Container(
                                                  color: Colors.white,
                                                  padding:  const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize
                                                        .min,
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                       const SizedBox(
                                                        height: 18,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text('Edit Variation',
                                                            style: Theme
                                                                .of(context)
                                                                .textTheme
                                                                .titleLarge
                                                                ?.copyWith(
                                                                fontWeight: FontWeight
                                                                    .bold),
                                                          ),
                                                          InkWell(
                                                            onTap: (){
                                                              Navigator.pop(context);
                                                            },
                                                            child: const Icon(
                                                              Icons.clear, color: Colors.black, size: 30,),
                                                          ),
                                                        ],
                                                      ),
                                                       const SizedBox(
                                                        height: 8,),
                                                      Text(
                                                        'Variation Price',
                                                        style: Theme
                                                            .of(context)
                                                            .textTheme
                                                            .titleLarge
                                                            ?.copyWith(
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 16),
                                                      ),
                                                       const SizedBox(
                                                        height: 10,),
                                                      TextFormField(
                                                        controller: price,
                                                        keyboardType: TextInputType.number,
                                                        decoration: inputDecorationFilled
                                                            .copyWith(
                                                          hintText: 'Variation Price',
                                                          labelText: 'Variation Price',
                                                        ),
                                                        validator: (value) {
                                                          if (value?.isEmpty ==
                                                              true) {
                                                            return 'Please enter variation price';
                                                          }
                                                          return null;
                                                        },
                                                      ),
                                                      const SizedBox(
                                                        height: 10,),
                                                      Text(
                                                        'Variation stock',
                                                        style: Theme
                                                            .of(context)
                                                            .textTheme
                                                            .titleLarge
                                                            ?.copyWith(
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 16),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,),
                                                      Visibility(
                                                        visible: controller.productType == 'bookable',
                                                        child: TextFormField(
                                                          controller: stockQty,
                                                          keyboardType: TextInputType.number,
                                                          decoration: inputDecorationFilled
                                                              .copyWith(
                                                            hintText: 'Variation Stock Quantity',
                                                            labelText: 'Variation Stock Quantity',
                                                          ),
                                                          validator: (value) {
                                                            if (value?.isEmpty ==
                                                                true) {
                                                              return 'Please enter variation stock quantity';
                                                            }
                                                            return null;
                                                          },
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,),
                                                      Obx(() {
                                                        return InkWell(
                                                          onTap: () {
                                                            controller.pickVariationImage();
                                                          },
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                              border: Border.all(
                                                                color: Colors.black
                                                                    .withOpacity(0.1),
                                                              ),
                                                              image:DecorationImage(
                                                                image: controller.variationImagePath.value == "" ?
                                                                NetworkImage('${controller.attributeList.value.data![index].image}')
                                                                    : Image.file(File("${controller.variationImagePath}",),).image,
                                                                fit: BoxFit.cover,
                                                              )
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
                                                       const SizedBox(
                                                        height: 16,),
                                                      InkWell(
                                                          onTap: () async {
                                                            if(FormKey1.currentState!.validate()){
                                                            String imageBase64;
                                                            if(controller.variationImage == null){
                                                              imageBase64 = "";
                                                            } else {
                                                            final image = await controller.variationImage?.readAsBytes();
                                                            imageBase64 = convert.base64Encode(image!);
                                                            }
                                                            editVariationAttribute(context,
                                                                controller.attributeList.value.data![index].variationId,
                                                                price.text,stockQty.text,imageBase64).then((value) {
                                                                  controller.getAttributeList();
                                                                  Navigator.pop(context);
                                                            });
                                                            }
                                                          },
                                                          child: Container(
                                                              margin:  const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal: 18),
                                                              alignment: Alignment
                                                                  .center,
                                                              width: double
                                                                  .maxFinite,
                                                              decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius
                                                                      .circular(
                                                                      8),
                                                                  color: colorSecondary
                                                              ),
                                                              height: 46,
                                                              child:  const Text(
                                                                'EDIT VARIATIONS',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight: FontWeight
                                                                        .bold),))
                                                      ),
                                                       const SizedBox(
                                                        height: 20,),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child:  const Icon(
                                    Icons.edit, color: Colors.black,
                                    size: 24,)),
                               const SizedBox(width: 6,),
                               InkWell(
                                 onTap: (){
                                   removeVariationAttribute(context,controller.attributeList.value.data![index].variationId).then((value){
                                  if(value.status == "success"){
                                    setState((){
                                      controller.attributeList.value.data!.removeAt(index);
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.message)));
                                    });
                                  }
                                   });
                                 },
                                 child: const Icon(
                                  Icons.clear, color: Colors.black, size: 30,),
                               ),
                            ],
                          )
                        ],
                      ),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Column(
                             children: [
                               const SizedBox(height: 8,),
                               Container(
                                 decoration: BoxDecoration(
                                     image: DecorationImage(
                                         image: NetworkImage(
                                             controller.attributeList.value.data![index].image.toString()),
                                         fit: BoxFit.cover
                                     )
                                 ),
                                 width: 120,
                                 height: 100,
                               ),
                               const SizedBox(height: 20,),
                             ],
                           ),
                           const SizedBox(width: 14,),
                           Expanded(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 const SizedBox(height: 12),
                                 Text(
                                   "Variations Price: ${controller.attributeList.value.data![index].displayPrice.toString()}", style: const TextStyle(color: Colors
                                     .black, fontSize: 16),),
                                 const SizedBox(height: 6,),
                                 Text(
                                   "Variations Stock: ${controller.attributeList.value.data![index].quantity.toString()}",
                                   style: const TextStyle(
                                       color: Colors
                                     .black, fontSize: 16),),
                                 const SizedBox(height: 6,),
                                 const Text(
                                   "Selected Attributes:",
                                   style: TextStyle(
                                       color: Colors
                                     .black, fontSize: 16),
                                 ),
                                 Wrap(
                                   children: List.generate(controller.attributeList.value.data![index].attributes!.length, (index1){
                                     return Card(
                                       child: Container(
                                           padding: const EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                                           child: Text(controller.attributeList.value.data![index].attributes![index1].toString().capitalizeFirst!,
                                               style: const TextStyle(
                                                   color: Colors
                                                       .black, fontSize: 16))),
                                     );
                                   }),
                                 )
                               ],
                             ),
                           )
                         ],
                       )
                    ],
                  ),
                ),
              );
            }),
      );
    });
  }
}
