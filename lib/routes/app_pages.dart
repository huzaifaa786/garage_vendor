import 'package:garage_vendor/app/auth/sign_in/signin_binding.dart';
import 'package:garage_vendor/app/auth/sign_in/signin_view.dart';
import 'package:garage_vendor/app/auth/sign_up/signup_binding.dart';
import 'package:garage_vendor/app/auth/sign_up/signup_view.dart';
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
  ];
}
