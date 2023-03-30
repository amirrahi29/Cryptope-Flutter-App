import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalEquipments {
  static void MyLogs(String log) {
    print(log);
  }
  static CustomToast(String title, String message, Color textColor, Color backgroundColor){
    return Get.snackbar(title, message,backgroundColor: backgroundColor,colorText: textColor);
  }
}
