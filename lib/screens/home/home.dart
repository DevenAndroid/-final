import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:dinelah_vendor/controller/drawer_controller.dart';
import 'package:dinelah_vendor/screens/home/widgets/latest_sales_with_filter.dart';
import '../../common_widget/no_data_message.dart';
import '../../controller/product/product_detail_controller.dart';
import '../../controller/store_order_controller.dart';
import '../../data/repository/product_repository.dart';
import '../drawer/drawer.dart';
import '/controller/home_controller.dart';
import '../../constraints/colors.dart';
import '../profile/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.find<HomeController>();

  final commonDrawer = Get.put(CommonDrawerController());

  final formatter = DateFormat('dd MMM, yyy');

  // lokesh flutter
   final StoreOrderController storeOrderController = Get.find<StoreOrderController>();

  @override
  Widget build(BuildContext context) {
    // lokesh flutter
    // storeOrderController.refreshStoreOrders(
    //     controller.selectedValue.value.toString(),
    //     filterBy: storeOrderController.filterBytt);
    // lokesh flutter end
    double crossAxisSpacing = 8, mainAxisSpacing = 12, aspectRatio = 1.2;
    int crossAxisCount = 2;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: controller.obx(
          (state) => getScreen(
              crossAxisCount, crossAxisSpacing, mainAxisSpacing, aspectRatio),
          onEmpty: getScreen(
              crossAxisCount, crossAxisSpacing, mainAxisSpacing, aspectRatio),
          onError: (error) {
        return NoDataMessage(
          messageText: "Sorry, Data could not loaded.",
          messageTextSize: 16,
          elevationCard: 4,
          imageHeight: 160,
          imageWidth: MediaQuery.of(context).size.width - 30,
        );
      }),
    );
  }

  Scaffold getScreen(int crossAxisCount, double crossAxisSpacing,
      double mainAxisSpacing, double aspectRatio) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      key: controller.scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi! ${controller.authCookie?.user?.displayName}',
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                formatter.format(DateTime.now()),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                PhosphorIcons.list_bold,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          // InkWell(
          //     onTap: () {
          //       controller.scaffoldKey.currentState!.openDrawer();
          //     },
          //     child: const Icon(PhosphorIcons.list_bold,color: Colors.white,)
          // ),
          actions: [
            GestureDetector(
                onTap: (() => Get.to(() => const ProfileScreen())),
                child: Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(right: 15, top: 5),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2.5),
                      image: DecorationImage(
                          image: NetworkImage(
                              '${controller.authCookie?.user?.profileImage}'),
                          fit: BoxFit.cover)),
                )),
            InkWell(
              onTap: () async {
                final controller = Get.find<ProductDetailController>();
                 await controller.getCategoryData();
                Get.put(ProductRepository());
                Get.lazyPut(() => ProductRepository());
                Get.lazyPut(() => ProductDetailController());
                 await controller.gotoCreateProduct1();
              },
              child: Container(
                padding: const EdgeInsets.only(top: 10, right: 15),
                child: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 34,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(
        child: CommonDrawer(),
      ),
      body: RefreshIndicator(
        onRefresh: controller.refreshHomepage,
        child: SingleChildScrollView(
          controller: controller.scroll,
          child: Obx(() => controller.dashBoardLoading.value
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(top: 20, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("DashBoard Filter"),
                          ),
                          Card(
                            child: Container(
                              padding: const EdgeInsets.only(left: 12, right: 10),
                              width: double.maxFinite,
                              color: Colors.white,
                              child: DropdownButton(
                                isExpanded: true,
                                value: controller.selectedValue.value,
                                iconSize: 22,
                                focusColor: Colors.white,
                                elevation: 0,
                                underline: const SizedBox(),
                                dropdownColor: Colors.white,
                                items: controller.filterValue.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black.withOpacity(.8)),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  controller.selectedValue.value = newValue as String;

                                  // lokesh flutter
                                  var filterValue = storeOrderController.filterBytt;
                                  storeOrderController.refreshStoreOrders(controller.selectedValue.value.toString(), filterBy: filterValue);

                                  // lokesh flutter end
                                  // controller.getSellerDashboards();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: crossAxisSpacing,
                            mainAxisSpacing: mainAxisSpacing,
                            childAspectRatio: aspectRatio,
                          ),
                          itemCount: controller
                              .model.value.data!.dashboardData!.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          clipBehavior: Clip.none,
                          itemBuilder: (context, index) => Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: index == 0
                                            ? blueColor
                                            : index == 1
                                                ? Colors.deepOrange
                                                : index == 2
                                                    ? Colors.green
                                                    : lightBlueColor,
                                        child: Image.asset(
                                          'assets/icons/discount.png',
                                          height: 24,
                                          width: 24,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 14),
                                  index == 2 || index == 3
                                      ? Text(
                                          controller.selectedValue.value == "All"
                                              ? controller.model.value.data!.dashboardData![index].total.toString()
                                              : controller.selectedValue.value == "This Month"
                                                  ? controller.model.value.data!.dashboardData![index].month.toString()
                                                  : controller.model.value.data!.dashboardData![index].today.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                // color: report?.color,
                                              ),
                                        )
                                      : Text(
                                          controller.selectedValue.value ==
                                                  "All"
                                              ? '\$${controller.model.value.data!.dashboardData![index].total.toString()}'
                                              : controller.selectedValue
                                                          .value ==
                                                      "This Month"
                                                  ? '\$${controller.model.value.data!.dashboardData![index].month.toString()}'
                                                  : '\$${controller.model.value.data!.dashboardData![index].today.toString()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                // color: report?.color,
                                              ),
                                        ),
                                  const SizedBox(height: 2),
                                  Text(
                                    controller.model.value.data!
                                        .dashboardData![index].title
                                        .toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(height: 20),

                    /// Latest Sales
                    Card(
                      elevation: 0,
                      margin: const EdgeInsets.all(0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 20),
                        child: Column(
                          children: [
                            LatestSalesWithFilter(controller.selectedValue.value.toString()),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(),
                )),
        ),
      ),
    );
  }
}
