import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/repo/drawer_repository.dart';

import '../model/model_drawer.dart';

class CommonDrawerController extends GetxController{
  RxBool isDataLoading = false.obs;
  Rx<ModelDrawer> model = ModelDrawer().obs;

  @override
  void onInit(){
    super.onInit();
    getData();
  }

  getData(){
    getDrawerData().then((value) {
      isDataLoading.value = true;
      if(value.status!){
        model.value = value;
      }
      return null;
    });
  }



}