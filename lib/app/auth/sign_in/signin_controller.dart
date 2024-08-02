import 'package:flutter/material.dart';
import 'package:garage_vendor/services/validation_services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignInController extends GetxController {
  static SignInController instance = Get.find();
  GetStorage box = GetStorage();

  //TODO: Toggle Varible
  bool obscurePassword = true;

  //TODO: InputFields Controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //TODO: Error Variables
  String emailError = '';
  String passwordError = '';

  //TODO: Pasword Toggle
  void passwordToggle() {
    obscurePassword = !obscurePassword;
    update();
  }

  //TODO: INPUT VALIDATIONS
  String validateFields(String fieldName, value) {
    switch (fieldName) {
      case 'Email':
        emailError = Validators.emailValidator(value) ?? '';
        update();
        return emailError;
      case 'password':
        passwordError = Validators.passwordValidator(value) ?? '';
        update();
        return passwordError;
      default:
        return '';
    }
  }

  //TODO: BUTTON VALIDATION
  Future<bool> validateForm() async {
    final emailErrorString = validateFields('Email', emailController.text);
    final passwordErrorString =
        validateFields('password', passwordController.text);
    return emailErrorString.isEmpty && passwordErrorString.isEmpty;
  }

  //TODO: Register Function
  login() async {
    if (await validateForm()) {}
  }
}
