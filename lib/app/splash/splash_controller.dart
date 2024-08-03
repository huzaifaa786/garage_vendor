import 'package:garage_vendor/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();
  GetStorage box = GetStorage();
  String? selectedValue;
  final List<String> items = [
    "Dubai",
    "Abu Dhabi",
    "Fujairah",
    "Ras Al Khaimah",
    "Sharjah",
    "Umm Al Quwain",
    "Ajman",
    "Western Region",
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initscreen();
  }

  void initscreen() async {
    await Future.delayed(const Duration(seconds: 3), () {
      checkFirstSeen();
    });
  }

  Future checkFirstSeen() async {
    Get.offNamed(AppRoutes.home);

    // String? apiToken = box.read('api_token');
    // bool firstRun = await IsFirstRun.isFirstRun();
    // if (firstRun == true) {
    Get.offAllNamed(AppRoutes.orders_view);
    // Get.offAllNamed(AppRoutes.signin);
    // } else {
    //   if (apiToken != null) {
    //     Get.offNamed(AppRoutes.main);
    //   } else {
    //     Get.offNamed(AppRoutes.signIn);
    //   }
    // }
  }
}
