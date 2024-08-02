import 'package:flutter/material.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class BackIConButton extends StatelessWidget {
  const BackIConButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 70,
          color: AppColors.white_color,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Row(
              children: [
                Icon(Icons.arrow_back, color: AppColors.primary_color),
                AppText(
                  title: 'Back',
                  color: AppColors.primary_color,
                ),
              ],
            ),
          ),
        );
  }
}