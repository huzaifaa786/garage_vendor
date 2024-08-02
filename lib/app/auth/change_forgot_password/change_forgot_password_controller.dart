import 'package:flutter/material.dart';
import 'package:garage_vendor/routes/app_routes.dart';
import 'package:garage_vendor/services/validation_services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ChangeForgotPasswordController extends GetxController {
  static ChangeForgotPasswordController instance = Get.find();
  GetStorage box = GetStorage();

  //TODO: InputFields Controllers
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //TODO: Error Variables
  String passwordError = '';
  String confirmPasswordError = '';

  //TODO: Toggle Varible
  bool obscurePassword = true;
  bool cobscurePassword = true;

  //TODO: Pasword Toggle
  void passwordToggle() {
    obscurePassword = !obscurePassword;
    update();
  }

  //TODO: Confirm Pasword Toggle
  void confirmPasswordToggle() {
    cobscurePassword = !cobscurePassword;
    update();
  }

  //TODO: INPUT VALIDATIONS
  String validateFields(String fieldName, value) {
    switch (fieldName) {
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

  //TODO: FORGOT VALIDATION
  Future<bool> validateForm() async {
    final passwordErrorString =
        validateFields('password', passwordController.text);
    final confirmPasswordErrorString =
        validateFields('confirm_password', confirmPasswordController.text);
    return passwordErrorString.isEmpty && confirmPasswordErrorString.isEmpty;
  }

  //TODO: Forgot Function
  forgot() async {
    if (await validateForm()) {
      Get.offAllNamed(AppRoutes.signin);
    }
  }
}
