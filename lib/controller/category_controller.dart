import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/product/product_detail_controller.dart';
import '../data/local/auth_db.dart';
import '../data/models/product/category/category.dart';
import '../data/models/user/user.dart';
import '/data/repository/product_repository.dart';

class CategoryController extends GetxController
    with StateMixin<List<ProductCategory>>, ScrollMixin {
  final ProductRepository repository;
  CategoryController(this.repository);

  ProductDetailController productDetailController =
      Get.find<ProductDetailController>();

  late AuthCookie? _authCookie;
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  final _categories = <ProductCategory>[].obs;
  List<ProductCategory>? get categories => _categories;

  final int repositoriesPerPage = 100;
  int page = 1;
  bool getFirstData = false;
  bool lastPage = false;

  @override
  void onInit() {
    super.onInit();
    _authCookie = AuthDb.getAuthCookie();
    getProductCategories();
  }

  void updateProductSelection(ProductCategory? category) {
    if (category == null) return;

    int index = _categories.indexOf(category);
    var data = category.copyWith(
      isSelected: category.isSelected ?? false ? false : true,
    );
    if (index >= 0) {
      _categories.removeAt(index);
      _categories.insert(index, data);
    }
    debugPrint("${category.name} is selected");

    productDetailController.categories?.add(category);

    /// Old
    // productDetailController.categories = _categories.where((element) => element.isSelected == true).toList();
    update();
  }

  Future<void> getProductCategories() async {
    await repository
        .getProductCategories(
      "${_authCookie?.user?.id}",
      perPage: repositoriesPerPage,
      pageNo: page,
    ).then((result) {
      final bool emptyRepositories = result.categories?.isEmpty == true;

      if (!getFirstData && emptyRepositories) {
        change(null, status: RxStatus.empty());
      } else if (getFirstData && emptyRepositories) {
        lastPage = true;
      } else {
        getFirstData = true;

        List<ProductCategory> _temp = result.categories ?? [];
        for(var item in _temp){
          if(!_categories.contains(item)) {
            _categories.addAll(_temp);
          }
        }
        change(_categories, status: RxStatus.success());
      }
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  Future<void> onEndScroll() async {
    debugPrint('onEndScroll');
    if (!lastPage) {
      page += 1;
      Get.dialog(const Center(child: CircularProgressIndicator()));
      await getProductCategories();
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
