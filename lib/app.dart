import 'package:flutter/material.dart';
import 'package:garage_vendor/app/splash/splash_binding.dart';
import 'package:garage_vendor/app/splash/splash_view.dart';
import 'package:garage_vendor/routes/app_pages.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppColors.primary_color,
        ),
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.white_color),
        scaffoldBackgroundColor: AppColors.white_color,
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: AppColors.primary_color),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: "Mobile Guarge",
      initialBinding: SplashBinding(),
      home: const SplashView(),
      getPages: AppPages.pages,
    );
  }
}
