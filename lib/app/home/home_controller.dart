import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  bool light = true;

  void onChange(bool value) {
    light = value;
    update();
  }
 
}
