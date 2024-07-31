import 'package:garage_vendor/app/home/home_binding.dart';
import 'package:garage_vendor/app/home/home_view.dart';
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
  ];
}
