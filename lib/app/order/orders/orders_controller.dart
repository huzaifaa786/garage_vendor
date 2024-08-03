import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OrdersController extends GetxController {
  static OrdersController instance = Get.find();
  GetStorage box = GetStorage();
  int selectedIndex = 0; 
  List<Map<String , dynamic>> filterList = [
    {
      'Name': 'New orders',
    },
     {
      'Name': 'On the way',
    },
     {
      'Name': 'Delivered',
    },
     {
      'Name': 'Rejected',
    }
  ];
}
