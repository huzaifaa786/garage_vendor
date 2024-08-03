import 'package:flutter/material.dart';
import 'package:garage_vendor/services/validation_services.dart';
import 'package:get/get.dart';

class ChangepasswordController extends GetxController {
  static ChangepasswordController instance = Get.find();

  TextEditingController passwordController = TextEditingController();
  TextEditingController oldpasswordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  String passwordError = '';
  String confirmPasswordError = '';

  bool obscurePassword = true;
  bool cobscurePassword = true;
  bool obscureOldPassword = true;

  bool color = false;

  void passwordToggle() {
    obscurePassword = !obscurePassword;
    update();
  }

  void confirmPasswordToggle() {
    cobscurePassword = !cobscurePassword;
    update();
  }

  void oldPasswordToggle() {
    obscureOldPassword = !obscureOldPassword;
    update();
  }

  //TODO: INPUT VALIDATIONS
  String validateFields(String fieldName, value) {
    switch (fieldName) {
      case 'old_password':
        passwordError = Validators.passwordValidator(value) ?? '';
        update();
        return passwordError;
      case 'password':
        passwordError = Validators.passwordValidator(value) ?? '';
        update();
        return passwordError;
      case 'confirm_password':
        confirmPasswordError = Validators.confrimPasswordValidator(
                passwordController.text, value) ??
            '';
        update();
        return confirmPasswordError;
      default:
        return '';
    }
  }
}
