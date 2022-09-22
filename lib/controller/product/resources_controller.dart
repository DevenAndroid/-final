import 'package:get/get.dart';
import 'package:dinelah_vendor/repo/has_resources_repo.dart';

import '../../model/model_has_resources.dart';

class ResourcesController extends GetxController{

  Rx<ModelResources> model = ModelResources().obs;

  RxList<String> resourcesList = <String>[].obs;
  RxBool isLoading = false.obs;

 String hasResourceSelected = "Select Resources";



  @override
  void onInit() {
    super.onInit();
    getData();
    resourcesList.add('Select Resources');
  }

  getData(){
hasResourcesData().then((value) {
  isLoading.value = true;
  if(value.status!){
    model.value = value;
    for (var item in value.data!){
      resourcesList.add("${item.id.toString()}${item.name.toString()}");
      update();
    }
  }
  return null;
});
  }
}