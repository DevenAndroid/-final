import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dinelah_vendor/model/model_get_attribute_list.dart';
import 'package:dinelah_vendor/repo/create_variation_attribute_repository.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dinelah_vendor/repo/single_product_repository.dart';
import '../../data/models/product/product_model.dart';
import '../../data/models/product/shipping_class/shipping.dart';
import '../../helper/Helpers.dart';
import '../../model/model_attribute_drop_down_value.dart';
import '../../model/model_product_category.dart';
import '../../model/model_single_product.dart';
import '../../repo/attribute_drop_down_repository.dart';
import '../../repo/product_category_repo.dart';
import '../../repo/variations_repo.dart';
import '../../screens/product/create_product.dart';
import '../category_controller.dart';
import '/controller/product/product_attribute_controller.dart';
import '/controller/product/product_tax_controller.dart';
import '/controller/product/product_variant_controller.dart';
import '/screens/product/update_product.dart';
import '/utils/snackbar.dart';
import '../../data/models/product/create/create_product.dart';
import '/data/local/auth_db.dart';
import '/data/models/user/user.dart';
import '/data/repository/product_repository.dart';
import '../../data/models/product/category/category.dart';
import 'product_controller.dart';

class ProductDetailController extends GetxController
    with
        ProductAttributeController,
        ProductVariantController,
        ProductTaxController {
  late AuthCookie? _authCookie;
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  final _isProductCreating = false.obs;
  bool get isProductCreating => _isProductCreating.value;
  
  ScrollController scrollController = ScrollController();

  final _isProductUpdating = false.obs;
  bool get isProductUpdating => _isProductUpdating.value;

  final _productType = "".obs;
  String? get productType =>
      _productType.value.isEmpty ? null : _productType.value;
  set productType(String? type) => _productType.value = type ?? "";

  final ProductRepository _repository = ProductRepository();
  final _categories = <ProductCategory>[].obs;
  List<ProductCategory>? get categories => _categories;
  set categories(List<ProductCategory>? value) =>
      _categories.value = value ?? [];

  // form keys
  final GlobalKey<FormState> productFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> updateProductFormKey = GlobalKey<FormState>();

  // controllers
  final TextEditingController productNameController = TextEditingController();
  FocusNode productNameControllerNode = FocusNode();
  final TextEditingController regularPriceController = TextEditingController();
  FocusNode regularPriceControllerNode = FocusNode();
  final TextEditingController stockQuantity = TextEditingController();
  FocusNode stockQuantityNode = FocusNode();
  final TextEditingController salePriceController = TextEditingController();
  FocusNode salePriceControllerNode = FocusNode();
  final TextEditingController skuController = TextEditingController();
  FocusNode skuControllerNode = FocusNode();

  final ImagePicker _picker = ImagePicker();

  final _productImage = ''.obs;

  String get productImage => _productImage.value;

  set productImage(String image) => _productImage.value = image;

  final _productGalleryImages = <String>[].obs;

  List<String> get productGalleryImages => _productGalleryImages;

  final _createdProductId = "".obs;

  String get createdProductId => _createdProductId.value;

  set createdProductId(String id) => _createdProductId.value = id;

  Rx<ModelSingleProduct> model = ModelSingleProduct().obs;

  var productIdKey;

  RxBool categoryLoaded = false.obs;


  @override
  void onInit() {
    super.onInit();
    _authCookie = AuthDb.getAuthCookie();
    getShippingClasses();
    getCategoryData();
  }

  getCategoryData(){
    productCategoryRepo().then((value) {
      categoryModel.value = value;
      productCategories.clear();
      categoryLoaded.value = true;
    });
  }

  void setProductImage(String path) {
    _productImage.value = path;
    update();
  }

  void setProductGalleryImage(int index, String path) {
    if (_productGalleryImages.length - 1 >= index) {
      _productGalleryImages[index] = path;
    } else {
      _productGalleryImages.add(path);
    }
    update();
  }

  Future<XFile?> pickImage({ImageSource? source}) async {
    try {
      final image = await _picker.pickImage(
        source: source ?? ImageSource.gallery,
      );
      return Future.value(image);
    } catch (e) {
      snack('Failed to pick image!', 'Something Went Wrong...', Icons.error);
      return null;
    }
  }

  void pickProductGalleryImage(ImageSource source, int index) {
    _picker.pickImage(source: source).then((file) {
      if (file != null) {
        _productGalleryImages.add(file.path);
        update();
      }
    });
  }
  
  

  void createNewProduct() async {
    Get.closeAllSnackbars();
    if (productFormKey.currentState?.validate() == false){
      scrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.ease);
    } else if (productFormKey.currentState?.validate() == true) {
      if (productImage.isEmpty) {
        snack('Please select product image!', 'Product Image is required', Icons.error);
        return;
      }
      if (productGalleryImages.isEmpty) {
        snack('Please select product gallery images!', '', Icons.error);
        return;
      }

      final _categories = productCategories.map((e) => e.id).toList().join(",");

      if (_categories.isEmpty == true) {
        snack(
          'Category Required!',
          'Please select product category!',
          Icons.error,
        );
        return;
      }

      _isProductCreating.value = true;
      update();
      try {
        log("Categories: $_categories");
        _authCookie = AuthDb.getAuthCookie();

        final body = CreateProductModel(
          cookie: _authCookie?.cookie,
          productName: productNameController.text,
          productPrice: salePriceController.text,
          productType: 'Simple',
          productDescription: "",
          categories: _categories,
          sku: skuController.text,
          productImage: convert.base64Encode(
            File(productImage).readAsBytesSync(),
          ),
          productGallery: _productGalleryImages
              .map((element) => ProductGallery(
            base64Img: convert.base64Encode(
              File(element).readAsBytesSync(),
            ),
          )).toList(),
        );

        debugPrint("Post request Parameters$body");

        final response = await _repository.createNewProduct(body);

        if (response['status'] == 'success') {
          _createdProductId.value = response['response']['id'].toString();
          clearSingleProductData();
          Get.off(() => const UpdateProductScreen(
            fromCreate: true,
          ));
          getAttributeList();
          attributeDataList.clear();
          getAttributeDropDownValue(true);
        }
        snack('Message', response['message'], Icons.message);
      } catch (e) {
        debugPrint("$e");
      } finally {
        _isProductCreating.value = false;
        update();

        final productController = Get.find<ProductController>();
        productController.refreshProducts();
      }
    }
  }

  String wcSelectedBookingDurationType = "fixed";
  var wcBookingDurationType = [
    "fixed",
    "customer",
  ];
  String selectedResources = "customer";
  var hasResourcesType = [
    "customer",
    "automatic",
  ];
  TextEditingController generalCustomerDuration = TextEditingController();
  var wcBookingDurationUnit = [
    "month",
    "day",
    "hour",
    "minute",
  ];
  String wcSelectedBookingDurationUnit = "month";
  TextEditingController generalMinimumDuration = TextEditingController();
  TextEditingController generalMaximumDuration = TextEditingController();
  bool canBeCancelled = false;
  TextEditingController availabilityMaxBooking = TextEditingController();
  String wcSelectedMinimumBlockBookableUnit = "month";
  String wcSelectedMaximumBlockBookableUnit = "month";
  var wcMinimumBlockBookableUnit = [
    "month",
    "day",
    "hour",
    "minute",
  ];
  var wcMaximumBlockBookableUnit = [
    "month",
    "day",
    "hour",
    "minute",
  ];
  TextEditingController availabilityMinimumBlock = TextEditingController();
  TextEditingController availabilityMaximumBlock = TextEditingController();
  RxBool hasPerson = false.obs;
  RxBool hasResources = false.obs;
  TextEditingController minPersonsGroup = TextEditingController();
  TextEditingController maxPersonsGroup = TextEditingController();
  TextEditingController bookingBaseRate = TextEditingController();
  TextEditingController bookingBlockRate = TextEditingController();
  TextEditingController displayCost = TextEditingController();
  TextEditingController resourcesLabel = TextEditingController();
  TextEditingController resource = TextEditingController();
  bool multiplyAllCostsByPersonCount = false;
  bool countPersonsAsBookings = false;
  bool enablePersonTypes = false;
  List<PersonData>? personTypeList = [];
  List<ResourceData> hasResourceData = [];
  final isSingleProductLoaded = false.obs;

  Rx<ModelGetAttributeDropDownValue> attributeModel = ModelGetAttributeDropDownValue().obs;
  var attributeDataList = RxList<ModelAttributeData>.empty(growable: true);
  var selectedAttributeDataList = RxList<ModelAttributeData>.empty(growable: true);
  var sendingAttributeList = RxList<ModelAttributeData>.empty(growable: true);
  bool listVisibility = false;
  RxBool attributeListLoaded = false.obs;
  final ImagePicker ppicker = ImagePicker();
  TextEditingController attributePrice = TextEditingController();
  XFile? variationImage;
  RxString variationImagePath = ''.obs;
  RxBool loader = false.obs;
  Rx<ModelGetAttributeList> attributeList = ModelGetAttributeList().obs;
  pickVariationImage() {
    ppicker.pickImage(source: ImageSource.gallery).then((pickedImage) {
      if (pickedImage != null) {
        variationImagePath.value = pickedImage.path;
        variationImage = pickedImage;
        update();
      } else {
        debugPrint("No image selected");
      }
    });
  }

  createAttributeVariationProductAPI(BuildContext context) async {
    loader.value = true;
    final image = await variationImage?.readAsBytes();
    var imageBase64 = convert.base64Encode(image!);
    createAttributeVariation(createdProductId.toString(), attributePrice.text, imageBase64, sendingAttributeList).then((value) {
      getAttributeList();
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.message)));
      loader.value = false;
    });
  }
  addAttribute(BuildContext context) {
    saveAttribute(context,createdProductId.toString(), attributeDataList).then((value) {
      if(value.status == "success"){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.message.toString())));
      }
    });
  }

  getAttributeList() {
    attributeListLoaded.value = false;
    print("variation list API called");
    getAttributeVariationLists(createdProductId.toString()).then((value) {
      if(value.status == "success"){
        attributeListLoaded.value = true;
        attributeList.value = value;
      }
    });
  }
  getAttributeDropDownValue(bool from){
    attributeDropDownValue().then((value) {
      log("New   $value");
      attributeModel.value = value;

      if(from == false){
        debugPrint("Previous attributes api called");
        getProductAttributeTerms(createdProductId.toString()).then((value) {
          log("Previous   ${jsonEncode(value)}");
          if(value.data != []) {
            for (var item in value.data!) {
              debugPrint("Get variation  response>>>>>>>>>>11${jsonEncode(attributeDataList)}");
              attributeDataList.add(item);
            }
            for (var i = 0; i < attributeModel.value.data!.length; i++) {
              for (var item in attributeDataList) {
                if (item.titleSlug == attributeModel.value.data![i].titleSlug) {
                  attributeModel.value.data![i].selected = true;
                  log("Checking  ${jsonEncode(item.items)}");
                  attributeModel.value.data![i].items = item.items;
                  log("Checking12  ${jsonEncode(attributeModel.value.data![i].items)}");
                }
              }
            }
          }
          Get.off(() =>  UpdateProductScreen(fromCreate: from));
        });
      } else{
        debugPrint("Previous attributes api not called");
        Get.off(() =>  UpdateProductScreen(fromCreate: from));
      }
    });
  }


  final ProductRepository _repository1 = Get.find<ProductRepository>();

  final RxList<ShippingClass> _shippingClasses = <ShippingClass>[].obs;
  List<ShippingClass> get shippingClasses => _shippingClasses;

  void getShippingClasses() async {
    ShippingClasses response = await _repository1.getShippingClasses();
    _shippingClasses.value = response.shippingClass ?? [];
    update();
  }

  clearSingleProductData() {
        /// Cost
        bookingBaseRate.text = "0";
        bookingBlockRate.text = "0";
        displayCost.text = "0";

        /// General
        wcSelectedBookingDurationType = "fixed";
        generalCustomerDuration.text = "0";
        wcSelectedBookingDurationUnit = "month";
        generalMinimumDuration.text = "0";
        generalMaximumDuration.text = "";
        canBeCancelled = false;

        /// Availability
        availabilityMaxBooking.text = "";
        availabilityMaximumBlock.text = "";
        availabilityMinimumBlock.text = "";
        wcSelectedMinimumBlockBookableUnit = "month";
        wcSelectedMaximumBlockBookableUnit = "month";

        /// Has Person
        hasPerson.value = false;
        minPersonsGroup.text = "";
        maxPersonsGroup.text = "";
        multiplyAllCostsByPersonCount = false;
        countPersonsAsBookings = false;
        enablePersonTypes = false;
        personTypeList!.clear();

        /// Has Resource
        hasResources.value = false;
        resourcesLabel.text = "";
        selectedResources = "customer";
        hasResourceData.clear();
        update();
  }

  Future<dynamic> updateProduct(BuildContext context, bool show) async {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    Get.closeAllSnackbars();
    OverlayEntry loader = Helpers.overlayLoader(context);
    if(updateProductFormKey.currentState?.validate() == false){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Some fields are empty")));
    }
    else if (updateProductFormKey.currentState?.validate() == true) {
      if(show == true){
        Overlay.of(context)!.insert(loader);
      }
      final _categories = productCategories.map((e) => e.id).toList().join(",");

      print("Product Category >>>>>>>  $_categories");
      if (_categories.isEmpty == true) {
        Helpers.hideLoader(loader);
        snack(
          'Category Required!',
          'Please select product category!',
          Icons.error,
        );
        return false;
      }
      if (productImage.isEmpty) {
        Helpers.hideLoader(loader);
        snack('Please select product image!', '', Icons.error);
        return;
      }
      _isProductUpdating.value = isSingleProductLoaded.value;
      update();
      try {
        final body = {
          "product_id": createdProductId,
          "product_name": productNameController.text,
          "product_type": productType == "bookable"? "booking": productType?.toLowerCase(),
          "product_price": regularPriceController.text,
          "product_stock_quantity": stockQuantity.text,
          // "product_price": regularPriceController.text,
          "product_description": "",
          "categories": _categories,
          "shipping_class_id": selectedShippingClass.termId,
          "tax_status": selectedTaxStatus,
          "tax_class": selectedTaxClass,
          "wc_booking_duration_type": wcSelectedBookingDurationType,
          "wc_booking_duration": generalCustomerDuration.text,
          "wc_booking_duration_unit": wcSelectedBookingDurationUnit,
          "wc_booking_min_duration": generalMinimumDuration.text,
          "wc_booking_max_duration": generalMaximumDuration.text,
          "wc_booking_user_can_cancel": canBeCancelled.toString(),
          "wc_booking_qty": availabilityMaxBooking.text,
          "wc_booking_min_date": availabilityMinimumBlock.text,
          "wc_booking_min_date_unit": wcSelectedMinimumBlockBookableUnit,
          "wc_booking_max_date": availabilityMaximumBlock.text,
          "wc_booking_max_date_unit":
              wcSelectedMaximumBlockBookableUnit.toString(),
          "wc_booking_has_persons": hasPerson.toString(),
          "wc_booking_min_persons_group": minPersonsGroup.text,
          "wc_booking_max_persons_group": maxPersonsGroup.text,
          "wc_booking_person_cost_multiplier":
              multiplyAllCostsByPersonCount.toString(),
          "wc_booking_person_qty_multiplier": countPersonsAsBookings.toString(),
          "wc_booking_has_person_types": enablePersonTypes.toString(),
          "person_data": (personTypeList),
          "resource_data": (hasResourceData),
          "wc_booking_cost": bookingBaseRate.text,
          "wc_booking_block_cost": bookingBlockRate.text,
          "wc_display_cost": displayCost.text,
          "wc_booking_resource_label": resourcesLabel.text,
          "wc_booking_resources_assignment": selectedResources,
          "wc_booking_has_resources": hasResources.toString()
        };

        if (!productImage.contains("http")) {
          body['image'] = convert.base64Encode(
            File(productImage).readAsBytesSync(),
          );
        }

        log("55555555555555 ==> $body");

        final response = await _repository.updateProductInfo(body);
        Helpers.hideLoader(loader);
        return response;
      } catch (e) {
        Helpers.hideLoader(loader);
        snack('Error', 'Something Went Wrong...', Icons.error);
        return Future.error(e);
      } finally {
        Helpers.hideLoader(loader);
        _isProductUpdating.value = false;
        update();
      }
    }
  }

  // gotoCreateProduct() async {
  //   productNameController.text = "";
  //   regularPriceController.text = "";
  //   salePriceController.text = "";
  //   skuController.text = "";
  //   _productImage.value = "";
  //   stockQuantity.text = "";
  //   _productGalleryImages.clear();
  //   _categories.value = [];
  //   getCategoryData();
  //   for(var item in categoryModel.value.categories!){
  //     item.selected.value = false;
  //   }
  //   productCategories.clear();
  //   Get.to(() => const CreateProductScreen());
  // }

  gotoCreateProduct1() async {
    productNameController.text = "";
    regularPriceController.text = "";
    salePriceController.text = "";
    skuController.text = "";
    _productImage.value = "";
    stockQuantity.text = "";
    _productGalleryImages.clear();
    _categories.value = [];
    if(categoryLoaded.value == true){
      for(var item1 in categoryModel.value.categories!){
        item1.selected.value = false;
      }
    }
    productCategories.clear();
    Get.to(() => const CreateProductScreen());
  }

  RxList<Categories1> productCategories = <Categories1>[].obs;

  Rx<ModelProductCategories> categoryModel = ModelProductCategories().obs;

  getSingleProductData() {
    stockQuantity.text = "";
    debugPrint(
        "Product KEy >>>>>>>>>>>>>>>>>>>>>>> ${createdProductId.toString()} ");
    singleProductData(createdProductId.toString()).then((value) {
      // productCategories.add(item)
      debugPrint("Server Response >>>>>>>>>>>>>>>>>>>>>>> ${jsonEncode(value)}");
      isSingleProductLoaded.value = true;
      if (value.status == "Success") {
        model.value = value;
        ProductData singleProduct = model.value.productData!;

        stockQuantity.text = singleProduct.stock_quantity.toString();
        regularPriceController.text = singleProduct.price.toString();
        /// Cost
        bookingBaseRate.text =
            model.value.productData!.sWcBookingCost.toString();
        bookingBlockRate.text = singleProduct.sWcBookingBlockCost.toString();
        displayCost.text = singleProduct.sWcDisplayCost.toString();

        /// General
        wcSelectedBookingDurationType =
            singleProduct.sWcBookingDurationType.toString();
        generalCustomerDuration.text =
            singleProduct.sWcBookingDuration.toString();
        wcSelectedBookingDurationUnit =
            singleProduct.sWcBookingDurationUnit.toString();
        generalMinimumDuration.text =
            singleProduct.sWcBookingMinDuration.toString();
        generalMaximumDuration.text =
            singleProduct.sWcBookingMaxDuration.toString();
        canBeCancelled = singleProduct.bWcBookingUserCanCancel;

        /// Availability
        availabilityMaxBooking.text = singleProduct.sWcBookingQty.toString();
        availabilityMaximumBlock.text =
            singleProduct.sWcBookingMaxDate.toString();
        availabilityMinimumBlock.text =
            singleProduct.sWcBookingMinDate.toString();
        wcSelectedMinimumBlockBookableUnit =
            singleProduct.sWcBookingMinDateUnit.toString();
        wcSelectedMaximumBlockBookableUnit =
            singleProduct.sWcBookingMaxDateUnit.toString();

        /// Has Person
        hasPerson.value = singleProduct.bWcBookingHasPersons;
        minPersonsGroup.text =
            singleProduct.sWcBookingMinPersonsGroup.toString();
        maxPersonsGroup.text =
            singleProduct.sWcBookingMaxPersonsGroup.toString();
        multiplyAllCostsByPersonCount =
            singleProduct.bWcBookingPersonCostMultiplier;
        countPersonsAsBookings = singleProduct.bWcBookingPersonQtyMultiplier;
        enablePersonTypes = singleProduct.bWcBookingHasPersonTypes;
        personTypeList!.clear();
        personTypeList!.addAll(singleProduct.personData!);

        /// Has Resource
        hasResources.value = singleProduct.bWcBookingHasResources;
        resourcesLabel.text = singleProduct.wcBookingResourceLabel.toString();
        selectedResources =
            singleProduct.sWcBookingResourcesAssignment.toString();
        hasResourceData.clear();
        hasResourceData.addAll(singleProduct.resourceData!);
      }
      update();
      return null;
    });
  }

  void gotoUpdateProductScreen(ProductModel? product) async {
    Get.dialog(const Center(
      child: CircularProgressIndicator(),
    ));

    _createdProductId.value = "${product?.id}";
    productIdKey = "${product?.id}";
    productNameController.text = "${product?.title}";
    _productType.value = (product?.type == null ? 'simple' :  product?.type == "booking" ? "bookable"  : product?.type)!;
    productImage = product?.imageUrl ?? "";

    clearSingleProductData();
    clearProductAttribute();
    clearProductVariationAttributes();

    /// For booking products

    if(categoryLoaded.value == true){
      productCategories.clear();
      for(var item1 in categoryModel.value.categories!){
        item1.selected.value = false;
      }
      for(var item in product!.categories!){
        for(var item1 in categoryModel.value.categories!){
          if(item.id == item1.id){
            item1.selected.value = true;
            productCategories.add(item1);
          }
        }
      }
    } else {
    await productCategoryRepo().then((value) {
      categoryModel.value = value;
      productCategories.clear();
      categoryLoaded.value = true;
    productCategories.clear();
      for(var item1 in categoryModel.value.categories!){
          item1.selected.value = false;
      }
      for(var item in product!.categories!){
        for(var item1 in categoryModel.value.categories!){
          if(item.id == item1.id){
            item1.selected.value = true;
            productCategories.add(item1);
          }
        }
      }
    });
    }
    await getSingleProductData();

    // categories = product?.categories?.map((e) => e.copyWith(isSelected: true)).toList();

    for (var element in shippingClasses) {
      if (element.name?.contains(product!.shippingClass ?? '', 0) == true) {
        selectedShippingClass = element;
      }
    }

    for (var element in taxStatus) {
      if (element.contains("${product!.taxStatus}", 0)) {
        selectedTaxStatus = element;
      }
    }

    for (var element in taxClass) {
      if (element.contains("${product!.taxClass}", 0)) {
        selectedTaxClass = element;
      }
    }
    getAttributeDropDownValue(false);
  }

  Future<dynamic> removeProduct(int? productId) async {
    try {
      Get.dialog(const Center(
        child: CircularProgressIndicator(),
      ));
      final response = await _repository.removeProduct(productId);
      // debugPrint(_response.toString());
      Get.back(); //// close loading dialog
      Get.closeAllSnackbars();
      snack('Message', "${response['message']}.", Icons.message);
      final productController = Get.find<ProductController>();
      productController.refreshProducts();
    } catch (e) {
      Get.back(); // close loading dialog
    }
  }
}
