import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/constraints/colors.dart';

snack(String title, String desc, IconData icon) => Get.snackbar(
      title,
      desc,
      icon: Icon(icon,color: Colors.red,),
      snackPosition: SnackPosition.BOTTOM,
  backgroundColor: Colors.white,
  colorText: colorSecondary
    );




