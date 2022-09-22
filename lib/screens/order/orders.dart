import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../constraints/strings.dart';
import '../../controller/product/store_order_controller1.dart';
import '../../utils/number_formatter.dart';
import '/constraints/colors.dart';
import '/constraints/styles.dart';
import '/screens/home/widgets/latest_sales_widget.dart';

class OrderScreen extends GetView<StoreOrderController1> {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          controller.refreshEarnings();
          controller.refreshStoreOrders("All");
        },
        child: SingleChildScrollView(
          controller: controller.scroll,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: colorPrimary,
                ),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    'assets/images/back-icon.png',
                                    scale: 1.2,
                                  )
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            const SizedBox(width: 14,),
                            Text(
                              'Your Orders',
                              style:
                                  Theme.of(context).textTheme.headline5?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Obx(
                            () => Text(
                              numberFormatTwoDecimal
                                  .format(controller.earnings.earnings ?? 0),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Your Overall Earnings',
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14)
                          ),
                          padding: const EdgeInsets.all(6.0),
                          child: DropdownButtonFormField<String>(
                            items: List.generate(
                              productFilters.length,
                                  (index) => DropdownMenuItem(
                                value: productFilters[index].toLowerCase(),
                                child: Text(productFilters[index]),
                              ),
                            ),
                            decoration: inputDecorationFilled2.copyWith(
                              hintText: 'Filter',
                              labelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              isDense: true,
                              border: InputBorder.none
                            ),
                            onChanged: (value) {
                              controller.refreshStoreOrders("All",filterBy: value);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                    Positioned(
                      right: -35,
                      top: -100,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorBlue.withOpacity(.2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white
                ),
                margin: const EdgeInsets.only(top: 344),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Latest Sales',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 20),
                    controller.obx(
                      (state) => LatestSales(state: state),
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
                      onError: (error) => const Center(
                        child: Text(
                          'Error: Something Went Wrong...',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
