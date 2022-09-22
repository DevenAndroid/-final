import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/product/product_detail_controller.dart';

import '../../../../constraints/styles.dart';

class BookingCostProduct extends StatefulWidget {
  const BookingCostProduct({Key? key}) : super(key: key);

  @override
  State<BookingCostProduct> createState() => _BookingCostProductState();
}

class _BookingCostProductState extends State<BookingCostProduct> {

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
              'Cost',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            Text(
              'Standard base rate',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6)),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: controller.bookingBaseRate,
              decoration: inputDecorationFilled.copyWith(
                hintText: 'Standard base rate',
                labelText: 'Standard base rate',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Please enter booking base rate';
                }
                return null;
              },
            ),
            const SizedBox(height: 14),
            Text(
              'Standard block rate',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6)),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: controller.bookingBlockRate,
              decoration: inputDecorationFilled.copyWith(
                hintText: 'Standard block rate',
                labelText: 'Standard block rate',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Please enter block rate';
                }
                return null;
              },
            ),
            const SizedBox(height: 14),
            Text(
              'Display cost',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.6)
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: controller.displayCost,
              decoration: inputDecorationFilled.copyWith(
                hintText: 'Display cost',
                labelText: 'Display cost',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Please enter display cost';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
