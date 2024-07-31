// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class AppColors {

  //* APP COLORS
  static Color primary_color = const Color(0xFF990002);
  static Color primary_bg_color = const Color(0xFFF7F9FC);
  static Color white_color = const Color(0xffFFFFFF);

  //* APP GRADIENTS
  static Gradient LOGINSCREEN_GRADIENT = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xff2412A9),
      Color(0XFFFFFFFF),
    ],
  );
}
