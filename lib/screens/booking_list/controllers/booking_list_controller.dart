import 'package:get/get.dart';
import 'package:dinelah_vendor/screens/booking_list/models/model_booking_list.dart';
import 'package:dinelah_vendor/screens/booking_list/models/model_edit_booking_list.dart';
import 'package:dinelah_vendor/screens/booking_list/repositorys/edit_booking_list_repo.dart';
import '../repositorys/booking_list_repository.dart';

class BookingListController extends GetxController{

  Rx<ModelBookingList> model = ModelBookingList().obs;
  Rx<ModelEditBookingList> editModel = ModelEditBookingList().obs;
  RxBool isLoading = false.obs;
  RxList<String> editDropDownValue = <String>[].obs;
  late String bookingStatusSelected;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  refreshDown(){
    isLoading.value = false;
    getData();
    getEditData();
  }

  getData(){
    bookingListData().then((value) {
      if(value.status!){
        model.value = value;
        if(model.value.data != null){
          getEditData();
        }
        update();
      }
      return null;
    });
  }
  getEditData(){
    editBookingListData().then((value) {
      isLoading.value = true;
      if(value.status == "success"){
        editModel.value = value;
        for(var item in value.data!) {
          editDropDownValue.add(item);
        }
      }
    });
  }
}