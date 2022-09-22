import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../constraints/styles.dart';
import '../../../controller/product/product_detail_controller.dart';
import '../../../data/models/product/shipping_class/shipping.dart';

class TaxAndShippingWidget extends GetView<ProductDetailController> {
  const TaxAndShippingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tax',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Text('Tax Status'),
                ),
                Expanded(
                  flex: 5,
                  child: DropdownButtonFormField<String>(
                    decoration: inputDecorationFilled.copyWith(
                      isDense: true,
                      hintText: 'Choose Tax Status',
                    ),
                    items: List.generate(
                      controller.taxStatus.length,
                      (index) => DropdownMenuItem(
                        value: controller.taxStatus[index],
                        child: Text(controller.taxStatus[index]),
                      ),
                    ),
                    onChanged: (value) {
                      controller.selectedTaxStatus = value;
                    },
                    value: controller.selectedTaxStatus,
                    validator: (value) {
                      if (value == null ||
                          controller.selectedTaxStatus.isEmpty) {
                        return 'Please select tax status';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Text('Tax Class'),
                ),
                Expanded(
                  flex: 5,
                  child: DropdownButtonFormField<String>(
                    decoration: inputDecorationFilled.copyWith(
                      isDense: true,
                      hintText: 'Choose Tax Class',
                    ),
                    items: List.generate(
                      controller.taxClass.length,
                      (index) => DropdownMenuItem(
                        value: controller.taxClass[index],
                        child: Text(controller.taxClass[index]),
                      ),
                    ),
                    onChanged: (value) {
                      controller.selectedTaxClass = value;
                    },
                    value: controller.selectedTaxClass,
                    validator: (value) {
                      if (value == null ||
                          controller.selectedTaxClass.isEmpty) {
                        return 'Please select tax class';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Shipping',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Text('Shipping Class'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 4,
                  child: DropdownButtonFormField<ShippingClass>(
                    decoration: inputDecorationFilled.copyWith(
                      isDense: true,
                      hintText: 'Choose Shipping Class',
                    ),
                    value: controller.shippingClasses.contains(controller.selectedShippingClass)
                        ? controller.selectedShippingClass
                        : null,
                    items: List.generate(
                      controller.shippingClasses.length,
                      (index) => DropdownMenuItem(
                        value: controller.shippingClasses[index],
                        child: Text("${controller.shippingClasses[index].name}"),
                      ),
                    ),
                    onChanged: (value) {
                      if (value != null) {
                        debugPrint(value.toString());
                        controller.selectedShippingClass = value;
                      }
                    },
                    onTap: () {},
                    // validator: (value) {
                    //   if (value == null ||
                    //       controller.selectedShippingClass.termId == null) {
                    //     print("::::::::::::::::::${controller.shippingClasses.length}");
                    //     return 'Please select shipping class';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
