import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/data/models/product/product_model.dart';
import '/data/repository/product_repository.dart';

class ProductController extends GetxController
    with StateMixin<List<ProductModel>>, ScrollMixin {
  final ProductRepository repository;
  ProductController(this.repository);

  TextEditingController searchController = TextEditingController();

  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  List<ProductModel> _products = [];

  final int repositoriesPerPage = 10;
  int page = 1;
  bool getFirstData = false;
  bool lastPage = false;

  @override
  void onInit() {
    super.onInit();
    _getProducts();
  }

  Future<void> _getProducts() async {
    await repository
        .getProducts(
      perPage: repositoriesPerPage,
      pageNo: page,
    ).then((result) {
      final bool emptyRepositories = result.isEmpty;

      if (!getFirstData && emptyRepositories) {
        change(null, status: RxStatus.empty());
      } else if (getFirstData && emptyRepositories) {
        lastPage = true;
      } else {
        getFirstData = true;
        _products = [..._products, ...result];
        change(_products, status: RxStatus.success());
      }
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  Future<void> refreshProducts() async {
    change(null, status: RxStatus.loading());
    _products = [];
    page = 1;
    getFirstData = false;
    lastPage = false;
    return await _getProducts();
  }

  @override
  Future<void> onEndScroll() async {
    debugPrint('onEndScroll');
    if (!lastPage) {
      page += 1;
      Get.dialog(const Center(child: CircularProgressIndicator()));
      await _getProducts();
      Get.back();
    } else {
      // Get.snackbar('Alert', 'All Product Loaded!');
    }
  }

  @override
  Future<void> onTopScroll() async {
    debugPrint('onTopScroll');
  }
}
