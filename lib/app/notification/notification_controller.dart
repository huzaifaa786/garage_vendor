import 'package:get/get.dart';

class NotificationController extends GetxController {
  static NotificationController instance = Get.find();
  String? image;
    double ratings = 0.0;
void updateRating(double rating) {
    ratings = rating;
    update();
  }

}