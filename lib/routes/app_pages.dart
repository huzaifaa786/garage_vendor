import 'package:garage_vendor/app/avaliable_date/avaliabledate_binding.dart';
import 'package:garage_vendor/app/avaliable_date/avaliabledate_view.dart';
import 'package:garage_vendor/app/editprofile.dart/editprofile_binding.dart';
import 'package:garage_vendor/app/editprofile.dart/editprofile_view.dart';
import 'package:garage_vendor/app/home/home_binding.dart';
import 'package:garage_vendor/app/home/home_view.dart';
import 'package:garage_vendor/app/sale/sale_binding.dart';
import 'package:garage_vendor/app/sale/sale_view.dart';
import 'package:garage_vendor/app/splash/splash_binding.dart';
import 'package:garage_vendor/app/splash/splash_view.dart';
import 'package:garage_vendor/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
      GetPage(
      name: AppRoutes.editprofile,
      page: () => const EditprofileView(),
      binding: EditprofileBinding(),
    ),
      GetPage(
      name: AppRoutes.avaliabledate,
      page: () => const AvaliableDateView(),
      binding: AvaliableDateBinding(),
    ),
      GetPage(
      name: AppRoutes.sale,
      page: () => const SaleView(),
      binding: SaleBinding(),
    ),
  ];
}
