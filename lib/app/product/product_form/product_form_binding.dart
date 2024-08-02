import 'package:garage_vendor/app/product/product_form/product_form_controller.dart';
import 'package:get/get.dart';

class ProductFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductFormController());
  }
}
