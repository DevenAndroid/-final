import 'package:get/get.dart';
import 'package:dinelah_vendor/screens/notification/models/model_notification.dart';
import 'package:dinelah_vendor/screens/notification/repositories/clear_notification_repository.dart';
import 'package:dinelah_vendor/screens/notification/repositories/notification_repository.dart';

class NotificationController extends GetxController{

  Rx<ModelNotification> model = ModelNotification().obs;
  RxBool notificationLoading = false.obs;
  var notifications;
  var isLoading;


  @override
  void onInit() {
    super.onInit();
    getData();
  }

  getData(){
    notificationData().then((value) {
      notificationLoading.value = true;
      if(value.status!){
        print(value.toString());
        model.value = value;
        notifications = model.value.data!.notifications;
      }
    });
  }

}