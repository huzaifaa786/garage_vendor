import 'package:garage_vendor/app/avaliable_date/avaliabledate_controller.dart';
import 'package:get/get.dart';

class AvaliableDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AvaliableDateController());
  }
}