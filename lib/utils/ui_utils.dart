// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:get/get.dart';

class UiUtilites {
  static errorSnackbar(String title, String message) {
    AnimatedSnackBar(
      mobileSnackBarPosition: MobileSnackBarPosition.bottom,
      mobilePositionSettings: const MobilePositionSettings(
        bottomOnAppearance: 20,
      ),
      duration: Duration(milliseconds: 2000),
      builder: ((context) {
        return MaterialAnimatedSnackBar(
          titleText: title,
          messageText: message,
          type: AnimatedSnackBarType.error,
        );
      }),
    ).show(Get.context!);
  }

  static successSnackbar(String message, String title) {
    AnimatedSnackBar(
      mobileSnackBarPosition: MobileSnackBarPosition.bottom,
      mobilePositionSettings: const MobilePositionSettings(
        bottomOnAppearance: 20,
      ),
      duration: Duration(milliseconds: 2000),
      builder: ((context) {
        return MaterialAnimatedSnackBar(
          titleText: title,
          messageText: message,
          type: AnimatedSnackBarType.success,
        );
      }),
    ).show(Get.context!);
  }
}
