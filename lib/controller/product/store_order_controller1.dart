import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/earning/earnings.dart';
import '../../data/models/order/order_details.dart';
import '../../data/repository/earnings_repository.dart';
import '/data/models/order/order.dart';
import '/data/repository/store_order_repository.dart';

class StoreOrderController1 extends GetxController
    with StateMixin<List<StoreOrder>>, ScrollMixin {
  final StoreOrderRepository _repository;
  StoreOrderController1(this._repository);

  final _isStateUpdating = false.obs;
  bool get isStateUpdating => _isStateUpdating.value;
  RxString itemCount = "".obs;

  List<StoreOrder> _storeOrders = [];

  final EarningsRepository _earningsRepository = EarningsRepository();
  final Rx<EarningModel> _earnings = Rx<EarningModel>(const EarningModel());
  EarningModel get earnings => _earnings.value;

  final int repositoriesPerPage = 20;
  int page = 1;
  bool getFirstData = false;
  bool lastPage = false;

  String? _filterBy;
  String? filterBytt;
  String? timeFilter;


  @override
  void onInit() {
    super.onInit();
    _getStoreOrders("all");
    _getStoreEarnings();
  }

  void _getStoreEarnings() {
    _earningsRepository.getStoreEarnings().then((earning) {
      _earnings.value = earning;
      update();
    });
  }

  Future<void> refreshEarnings() async => _getStoreEarnings();

  Future<void> refreshStoreOrders(timeStatus,{String? filterBy}) async {
    _filterBy = filterBy;
    filterBytt = filterBy;
    page = 1;
    getFirstData = false;
    lastPage = false;
    timeFilter = timeStatus;

    _storeOrders = [];
    change(_storeOrders, status: RxStatus.loading());
    return await _getStoreOrders(timeStatus,filterBy: filterBy);
  }

  Future<void> _getStoreOrders(timeStatus,{String? filterBy}) async {
    debugPrint(" Filter Value   >>>>>>>>>>>>>>>>$filterBy>>>$timeStatus");
    await _repository.getStoreOrders(page, repositoriesPerPage, timeStatus , filterBy: filterBy).then((result) {
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
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  Future<StoreOrderDetail> getOrderDetailsById(int? id) async =>
      await _repository.getOrderDetailsById(id);

  Future<dynamic> getOrderStateTypes() async {
    return await _repository.getOrderStateTypes();
  }

  Future<dynamic> updateOrderStateById(int orderId, String status) async {
    try {
      _isStateUpdating.value = true;
      update();
      refreshStoreOrders(timeFilter,filterBy: _filterBy);
      return await _repository.updateOrderStateById(orderId, status);
    } catch (e) {
      return e;
    } finally {
      _isStateUpdating.value = false;
      update();
    }
  }

  @override
  Future<void> onEndScroll() async {
    debugPrint('onEndScroll');
    if (!lastPage) {
      page += 1;
      // snack('Loading', 'Loading more data. Please wait...', Icons.menu);
      Get.dialog(const Center(child: CircularProgressIndicator()));
      await _getStoreOrders("All",filterBy: _filterBy).then((value) {
        Get.back();
      });
    } else {
      // Get.snackbar('Alert', 'All Orders Loaded!');
    }
  }

  @override
  Future<void> onTopScroll() async {
    debugPrint('onTopScroll');
  }
}
