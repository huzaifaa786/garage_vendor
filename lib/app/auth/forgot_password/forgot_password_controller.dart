import 'package:flutter/material.dart';
import 'package:garage_vendor/routes/app_routes.dart';
import 'package:garage_vendor/services/validation_services.dart';
import 'package:garage_vendor/utils/ui_utils.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ForgotPasswordController extends GetxController {
  static ForgotPasswordController instance = Get.find();
  GetStorage box = GetStorage();
  TextEditingController emailController = TextEditingController();
  String emailError = '';

  //TODO: OTP VERIFY VARIABLE'S
  TextEditingController otpController = TextEditingController();
  String? otpCode;
  bool isOtpValid = false;

  //TODO: ON OTP COMPLETE
  onComplete(String verificationCode) {
    isOtpValid = true;
    otpCode = verificationCode;
    update();
  }

  //TODO: ON OTP CHANGE
  onChange(value) {
    if (value.length < 6) {
      isOtpValid = false;
    }
    update();
  }

  //TODO: INPUT VALIDATIONS
  String validateFields(String fieldName, value) {
    switch (fieldName) {
      case 'Email':
        emailError = Validators.emailValidator(value) ?? '';
        update();
        return emailError;
      default:
        return '';
    }
  }

  //TODO: FORGOT VALIDATION
  Future<bool> validateForm() async {
    final emailErrorString = validateFields('Email', emailController.text);
    return emailErrorString.isEmpty;
  }

  //TODO: Forgot Function
  forgot() async {
    if (await validateForm()) {
      Get.toNamed(AppRoutes.forgot_otp_verify);
    }
  }

  //TODO: VERIFY OTP
  verifyOtp() async {
    if (otpController.text.length < 6) {
      UiUtilites.errorSnackbar('Error'.tr, 'Fill out complete otp.'.tr);
      return;
    }
    Get.toNamed(AppRoutes.change_forgot_password);
  }
}
