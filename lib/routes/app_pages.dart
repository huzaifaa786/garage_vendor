import 'package:garage_vendor/app/auth/sign_in/signin_binding.dart';
import 'package:garage_vendor/app/auth/sign_in/signin_view.dart';
import 'package:garage_vendor/app/auth/sign_up/signup_binding.dart';
import 'package:garage_vendor/app/auth/sign_up/signup_view.dart';
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
    //* {Splash Route}
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),

    //* {Sign up Route}
    GetPage(
      name: AppRoutes.signup,
      page: () => const SignupView(),
      binding: SignUpBinding(),
    ),

    //* {Sign in Route}
    GetPage(
      name: AppRoutes.signin,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
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
