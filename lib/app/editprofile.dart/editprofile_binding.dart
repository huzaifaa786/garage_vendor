import 'package:garage_vendor/app/editprofile.dart/editprofile_controller.dart';
import 'package:get/get.dart';

class EditprofileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditprofileController());
  }
}