import 'package:garage_vendor/app/auth/change_forgot_password/change_forgot_password_controller.dart';
import 'package:get/get.dart';

class ChangeForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeForgotPasswordController());
  }
}
