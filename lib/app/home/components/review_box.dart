import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class ReviewBox extends StatelessWidget {
  const ReviewBox({
    super.key,
    this.icon,
    this.text,
    this.ontap,
  });
  final icon;
  final text;
  final ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 40,
          width: Get.width * 0.5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(icon),
                AppText(
                  title: '  ' + text,
                  size: 10,
                  color: AppColors.primary_color,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: AppColors.light_red,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
