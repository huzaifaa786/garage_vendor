// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/utils/app_button/app_button.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_constants/const_images.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class UiUtilites {
  static errorSnackbar(String title, String message) {
    AnimatedSnackBar(
      mobileSnackBarPosition: MobileSnackBarPosition.bottom,
      mobilePositionSettings: const MobilePositionSettings(
        bottomOnAppearance: 20,
      ),
      duration: Duration(milliseconds: 2000),
      builder: ((context) {
        return MaterialAnimatedSnackBar(
          titleText: title,
          messageText: message,
          type: AnimatedSnackBarType.error,
        );
      }),
    ).show(Get.context!);
  }

  static successSnackbar(String message, String title) {
    AnimatedSnackBar(
      mobileSnackBarPosition: MobileSnackBarPosition.bottom,
      mobilePositionSettings: const MobilePositionSettings(
        bottomOnAppearance: 20,
      ),
      duration: Duration(milliseconds: 2000),
      builder: ((context) {
        return MaterialAnimatedSnackBar(
          titleText: title,
          messageText: message,
          type: AnimatedSnackBarType.success,
        );
      }),
    ).show(Get.context!);
  }

  static confirmAlertDialog(
      {required context,
      required onCancelTap,
      required onConfirmTap,
      required title,
      required cancelText,
      required confirmText}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: EdgeInsets.only(top: 10.0),
            backgroundColor: AppColors.white_color,
            surfaceTintColor: AppColors.white_color,
            content: Wrap(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: SvgPicture.asset(
                              ImageConst.cancel_ic,
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: AppText(
                        title: title,
                        size: 14,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                        fontFamily: 'ibarraRealNova',
                      ),
                    ),
                    Gap(10),
                    Divider(
                      thickness: 1,
                      height: 0,
                      color: AppColors.input_bg_color,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: InkWell(
                            onTap: onCancelTap,
                            child: Container(
                              height: 35,
                              width: Get.width * 0.4,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: AppColors.input_bg_color))),
                              child: Center(
                                child: AppText(
                                  title: cancelText,
                                  size: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'ibarraRealNova',
                                  color:
                                      AppColors.black_color.withOpacity(0.51),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: InkWell(
                            onTap: onConfirmTap,
                            child: SizedBox(
                              height: 35,
                              width: Get.width * 0.4,
                              child: Center(
                                child: AppText(
                                  title: confirmText,
                                  size: 13,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primary_color,
                                  fontFamily: 'ibarraRealNova',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(10),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static successAlertDialog({required context, required onTap, required title, required description}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
            backgroundColor: AppColors.white_color,
            surfaceTintColor: AppColors.white_color,
            content: Wrap(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(ImageConst.success_ic),
                      AppText(
                        title: '$title',
                        size: 14,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                        color: AppColors.appbar_title_color,
                      ),
                      Gap(10),
                      AppText(
                        title: '$description',
                        size: 12,
                        textAlign: TextAlign.center,
                        color: AppColors.hint_text_color,
                      ),
                      Gap(20),
                      AppButton(
                        height: 45,
                        title: 'Back to dashboard',
                        buttonColor: AppColors.primary_color.withOpacity(0.1),
                        titleColor: AppColors.primary_color,
                        ontap: onTap,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
