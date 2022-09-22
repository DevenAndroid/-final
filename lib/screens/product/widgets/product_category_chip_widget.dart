import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constraints/colors.dart';
import '../../../controller/category_controller.dart';
import '../../../controller/product/product_detail_controller.dart';

class ProductCategoryChipWidget extends StatefulWidget {
  const ProductCategoryChipWidget({Key? key}) : super(key: key);

  @override
  State<ProductCategoryChipWidget> createState() =>
      _ProductCategoryChipWidgetState();
}

class _ProductCategoryChipWidgetState extends State<ProductCategoryChipWidget> {
  final controller = Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Obx(() {
        return controller.categoryLoaded.value == true ?
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 4,
          children: List.generate(
            controller.categoryModel.value.categories!.length ?? 0,
                (index) =>
                FilterChip(
                  label: Text(
                    "${controller.categoryModel.value.categories![index].name}",
                    style: TextStyle(
                      color: controller.categoryModel.value.categories![index].selected.value == true ? Colors.white : Colors.black,
                    ),
                  ),
                  selected: controller.categoryModel.value.categories![index].selected.value,
                  backgroundColor: Colors.white,
                  selectedColor: Colors.red,
                  showCheckmark: false,
                  onSelected: (value) {
                    controller.categoryModel.value.categories![index].selected.value = !controller.categoryModel.value.categories![index].selected.value;
                    controller.productCategories.clear();
                    for(var item in controller.categoryModel.value.categories!){
                      if(item.selected.value == true){
                        controller.productCategories.add(item);
                      }
                    }
                  },
                ),
          ),
        ) : const Center(child: CircularProgressIndicator(color: colorSecondary,),);
      }),
    );
  }
}
