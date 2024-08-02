import 'package:garage_vendor/app/sale/sale_controller.dart';
import 'package:get/get.dart';

class SaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SaleController());
  }
}