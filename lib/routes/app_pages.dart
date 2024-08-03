import 'package:garage_vendor/app/profile/changepassword/changepassword_binding.dart';
import 'package:garage_vendor/app/profile/changepassword/changepassword_view.dart';
import 'package:garage_vendor/app/auth/change_forgot_password/change_forgot_password_binding.dart';
import 'package:garage_vendor/app/auth/change_forgot_password/change_forgot_password_view.dart';
import 'package:garage_vendor/app/auth/forgot_password/forgot_otp_verify/forgot_otp_verify.dart';
import 'package:garage_vendor/app/auth/forgot_password/forgot_password_binding.dart';
import 'package:garage_vendor/app/auth/forgot_password/forgot_password_view.dart';
import 'package:garage_vendor/app/auth/sign_in/signin_binding.dart';
import 'package:garage_vendor/app/auth/sign_in/signin_view.dart';
import 'package:garage_vendor/app/auth/sign_up/signup_binding.dart';
import 'package:garage_vendor/app/auth/sign_up/signup_view.dart';
import 'package:garage_vendor/app/avaliable_date/avaliabledate_binding.dart';
import 'package:garage_vendor/app/avaliable_date/avaliabledate_view.dart';
import 'package:garage_vendor/app/profile/editprofile.dart/editprofile_binding.dart';
import 'package:garage_vendor/app/profile/editprofile.dart/editprofile_view.dart';
import 'package:garage_vendor/app/home/home_binding.dart';
import 'package:garage_vendor/app/home/home_view.dart';
import 'package:garage_vendor/app/order/orders/orders_binding.dart';
import 'package:garage_vendor/app/order/orders/orders_view.dart';
import 'package:garage_vendor/app/notification/notification_binding.dart';
import 'package:garage_vendor/app/notification/notification_view.dart';
import 'package:garage_vendor/app/product/product_form/product_form_binding.dart';
import 'package:garage_vendor/app/product/product_form/product_form_view.dart';
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

    //* {Forgot Route}
    GetPage(
      name: AppRoutes.forgot_password,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),

    //* {Forgot Otp Verify Route}
    GetPage(
      name: AppRoutes.forgot_otp_verify,
      page: () => const ForgotOtpVerifyView(),
      binding: ForgotPasswordBinding(),
    ),

    //* {Cahnge Forgot Password Route}
    GetPage(
      name: AppRoutes.change_forgot_password,
      page: () => const ChangeForgotPasswordView(),
      binding: ChangeForgotPasswordBinding(),
    ),

    //* {Product Form View Route}
    GetPage(
      name: AppRoutes.product_form_view,
      page: () => const ProductFormView(),
      binding: ProductFormBinding(),
    ),

     //* {Order List View Route}
    GetPage(
      name: AppRoutes.orders_view,
      page: () => const OrdersView(),
      binding: OrdersBinding(),
    ),

    //
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
    GetPage(
      name: AppRoutes.changepassword,
      page: () => const ChangepasswordView(),
      binding: ChangepasswordBinding(),
    ),
    GetPage(
      name: AppRoutes.notification,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
  ];
}
