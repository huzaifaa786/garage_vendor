// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class MainBox extends StatelessWidget {
  const MainBox({
    super.key,
    this.width,
    this.icon,
    this.text,
    this.ontap,
  });

  final width;
  final icon;
  final text;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              AppText(
                title: text,
                size: 11,
                fontWeight: FontWeight.w500,
                color: AppColors.primary_color,
              )
            ],
          ),
        ),
        height: Get.height * 0.13,
        width: Get.width * 0.33,
        decoration: BoxDecoration(
          color: AppColors.light_red,
          border: Border.all(color: AppColors.primary_color),
          borderRadius: BorderRadius.circular(17),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
