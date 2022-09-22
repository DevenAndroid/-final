import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constraints/strings.dart';
import '../../../constraints/styles.dart';
import '../../../controller/store_order_controller.dart';
import 'latest_sales_widget.dart';

class LatestSalesWithFilter extends GetView<StoreOrderController> {
  final String timeStatus;
  const LatestSalesWithFilter(this.timeStatus, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            controller.obx((state) => Expanded(
              flex: 3,
              child: Text(
                controller.itemCount == 0 ? 'Sales': 'Sales ${controller.itemCount}',
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),
              ),
            ),
                onLoading: const Text('Sales',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                  ),
                ),
                onEmpty: const Text('Sales',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                  ),
                ),
              onError: (error)=> const Text('Sales',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                items: List.generate(
                  productFilters.length,
                      (index) =>
                      DropdownMenuItem(
                        value: productFilters[index].toLowerCase(),
                        child: Text(productFilters[index]),
                      ),
                ),
                decoration: inputDecorationFilled2.copyWith(
                    hintText: 'Filters',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    isDense: true,
                    border: InputBorder.none
                ),
                onChanged: (value) {
                  controller.refreshStoreOrders(timeStatus, filterBy: value);
                  controller.update();
                },
              ),
            ),
          ],
        ),
        controller.obx((state) =>
            LatestSales(state: state),
          onLoading: const Center(
            child: CircularProgressIndicator(),
          ),
          onEmpty: const Center(
            child: Text(
              'Orders not found',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          onError: (error) =>
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 15),
                child: const Text(
                  'Something Went Wrong...Please Try Again',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
        ),
      ],
    );
  }
}