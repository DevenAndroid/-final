import 'package:dinelah_vendor/controller/store_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/data/models/store_settings/store_settings.dart';
import '../data/models/seller_dashboard/seller_dashboard_model.dart';
import '/data/local/auth_db.dart';
import '/data/models/user/user.dart';
import '/data/repository/home_repository.dart';
import '../data/models/order/order.dart';
import '../data/models/report/monthly_report.dart';
import '../data/repository/store_order_repository.dart';
import '../data/repository/store_repository.dart';

class HomeController extends GetxController
    with StateMixin<List<StoreOrder>>, ScrollMixin {
  final StoreOrderRepository _orderRepository;

  HomeController(this._orderRepository);

  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  AuthCookie? authCookie;

  final RxList<MonthlyReport> _monthlyReportList = <MonthlyReport>[].obs;
  List<MonthlyReport> get monthlyReportList => _monthlyReportList;

  List<StoreOrder> _storeOrders = [];

  final int repositoriesPerPage = 20;
  int page = 1;
  bool getFirstData = false;
  bool lastPage = false;

  Rx<SellerDashboard> model = SellerDashboard().obs;
  RxBool dashBoardLoading = false.obs;

  RxString selectedValue = "All".obs;
  var filterValue = [
    "All",
    "Today",
    "This Month",
  ];

  @override
  void onInit() {
    super.onInit();
    authCookie = AuthDb.getAuthCookie();
    getSellerDashboards();
    _getStoreOrders();
  }

  Future<void> refreshHomepage() async {
    page = 1;
    getFirstData = false;
    lastPage = false;
    getSellerDashboard();
    final StoreOrderController storeOrderController =
    Get.find<StoreOrderController>();

    await storeOrderController.refreshEarnings();
    await storeOrderController.refreshStoreOrders("All");

    final StoreRepository storeRepository = StoreRepository();
    final storeSettings = await storeRepository.getStoreProfileInfo();
    updateUserProfileFromStoreSettings(storeSettings);
    await _getStoreOrders();
  }

  void updateUserProfileFromStoreSettings(StoreProfileInfo profile) {
    authCookie = authCookie?.copyWith(
      user: authCookie?.user?.copyWith(
        displayName: profile.storeProfile?.storeName,
        profileImage: profile.storeProfile?.logoUrl,
      ),
    );

    if (authCookie != null) {
      AuthDb.setAuthCookie(authCookie!);
    }
    update();
  }

  Future<void> refreshHomepageStoreOrders() async {
    page = 1;
    getFirstData = false;
    lastPage = false;
    change(null, status: RxStatus.loading());
    _storeOrders = [];
    await _getStoreOrders();
  }

   getSellerDashboards() {
    debugPrint("Api seller dashbord called>>>>>>>>>>>>>>>>>>>");
    getSellerDashboard().then((value) {
      dashBoardLoading.value = true;
        model.value = value;
      });
  }

  Future<void> _getStoreOrders() async {
    debugPrint("Api store orders called>>>>>>>>>>>>>>>>>>>");
    await _orderRepository.getStoreOrders(page, repositoriesPerPage,"All").then(
        (result) {
      final bool emptyRepositories = result.isEmpty;

      if (!getFirstData && emptyRepositories) {
        change(null, status: RxStatus.empty());
      } else if (getFirstData && emptyRepositories) {
        lastPage = true;
      } else {
        getFirstData = true;
        _storeOrders = [..._storeOrders, ...result];
        change(_storeOrders, status: RxStatus.success());
      }
    },
    );
  }

  @override
  Future<void> onEndScroll() async {
    debugPrint('onEndScroll');
    if (!lastPage) {
      page += 1;
      // snack('Loading', 'Loading more data. Please wait...', Icons.menu);
      Get.dialog(const Center(child: CircularProgressIndicator()));

      await _getStoreOrders();
      Get.back();
    }
  }

  @override
  Future<void> onTopScroll() async {
    debugPrint('onTopScroll');
  }
}
