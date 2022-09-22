import 'package:cached_network_image/cached_network_image.dart';
import 'package:dinelah_vendor/common_widget/no_data_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/product/resources_controller.dart';
import 'package:dinelah_vendor/screens/product/search_products.dart';
import '../../common_widget/leading_icon.dart';
import '../../controller/product/product_detail_controller.dart';
import '../../data/models/product/product_model.dart';
import '/constraints/colors.dart';
import '/constraints/styles.dart';
import '../../controller/product/product_controller.dart';

class ProductsScreen extends GetView<ProductController> {
   ProductsScreen({Key? key}) : super(key: key);
  final resourceController = Get.put(ResourcesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products',style: TextStyle(color: Colors.white),),
        leading: const LeadingAppIcon(),
        actions: [
          InkWell(
            onTap: () {
              final controller = Get.find<ProductDetailController>();
              controller.clearSingleProductData();
              controller.gotoCreateProduct1();
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10,right: 15),
              child: const Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 34,
              ),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: controller.refreshProducts,
        child: ListView(
          controller: controller.scroll,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: controller.searchController,
                decoration: inputDecoration.copyWith(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: IconButton(
                    icon: Container(
                      height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: colorPrimary
                        ),
                        child: const Icon(Icons.search,color: Colors.white,size: 22,)),
                    onPressed: () {
                      if(controller.searchController.text.isEmpty){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Enter some search text")));
                      } if (controller.searchController.text.isNotEmpty) {
                        Get.to(
                          () => SearchProductScreen(
                            search: controller.searchController.text,
                          ),
                        );
                      }
                    },
                    color: Colors.black.withOpacity(0.6),
                  ),
                  prefixIcon: const Icon(Icons.search,size: 24,)
                ),
                onFieldSubmitted: (value) {
                      Get.to(() => SearchProductScreen(search: value));
                },
                onSaved: (value) {
                    Get.to(() => SearchProductScreen(search: value));
                },
              ),
            ),
            controller.obx(
              (data) => Column(
                children: List.generate(
                  data?.length ?? 0,
                  (index) => data!.isEmpty ? NoDataMessage(
                    messageText: "You don't have any Product List",
                    messageTextSize: 16,
                    elevationCard: 4,
                    imageHeight: 160,
                    imageWidth: MediaQuery.of(context).size.width - 30,
                  ) : ProductItemWidget(product: data[index],),
                ),
              ),
              onLoading: const Center(
                  child: CircularProgressIndicator()
              ),
              onEmpty: NoDataMessage(
                messageText: "You don't have any Product List",
                messageTextSize: 16,
                elevationCard: 4,
                imageHeight: 160,
                imageWidth: MediaQuery.of(context).size.width - 30,
              ),
              onError: (error) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Error: Cannot get products Data',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: controller.refreshProducts,
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductItemWidget extends GetView<ProductDetailController> {
  final ProductModel? product;
  const ProductItemWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1,color: Colors.grey.shade300)
          ),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: product?.imageUrl != false ? DecorationImage(
                          image: CachedNetworkImageProvider(
                            "${product?.imageUrl}",
                            errorListener: () {
                              debugPrint('Failed to load ${product?.imageUrl}. Product Id: ${product?.id}.',);
                            },
                          ),
                        )
                      : null,
                  borderRadius: BorderRadius.circular(8),
                  shape: BoxShape.rectangle,
                  color: Colors.grey.withOpacity(0.1),
                ),
                margin: const EdgeInsets.all(8.0),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    RichText(
                      text: TextSpan(
                        text: "${product?.title} ",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                            text: product?.type!.toLowerCase() == "booking" ? "Bookable": '${product?.type}'.toUpperCase(),
                            style: TextStyle(
                              color: const Color(0xFF17b955),
                              background: Paint()
                                ..strokeWidth = 18.0
                                ..color = const Color(0xFFd2fae2)
                                ..style = PaintingStyle.fill
                                ..strokeJoin = StrokeJoin.round,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${product?.priceHtml.toString()}",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: colorPrimary.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Stock: ${product?.quantity ?? 'n/a'}',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () async {
                                try {
                                  await controller.removeProduct(product?.id);
                                } catch (e) {
                                  debugPrint(e.toString());
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorSecondary,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const Icon(
                                  PhosphorIcons.trash,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                controller.attributeDataList.clear();
                                controller.gotoUpdateProductScreen(product);
                                /// to get previous attributes
                                /// for previous variations
                                controller.getAttributeList();
                                  },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorPrimary,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const Icon(
                                  PhosphorIcons.pencil,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
