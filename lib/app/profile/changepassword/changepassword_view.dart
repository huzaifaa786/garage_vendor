import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/profile/changepassword/changepassword_controller.dart';
import 'package:garage_vendor/utils/app_button/app_button.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_constants/const_images.dart';
import 'package:garage_vendor/utils/app_inputfields/app_inputfield.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class ChangepasswordView extends StatefulWidget {
  const ChangepasswordView({super.key});

  @override
  State<ChangepasswordView> createState() => _ChangepasswordViewState();
}

class _ChangepasswordViewState extends State<ChangepasswordView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangepasswordController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: AppBar(
                centerTitle: true,
                title: AppText(
                  title: 'Change Password',
                  size: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary_color,
                ),
                elevation: 0,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(35.0),
            child: SafeArea(
                child: Column(
              children: [
                AppInputField(
                  errorText: controller.confirmPasswordError,
                  hint: 'Old Password',
                  obscure: controller.obscureOldPassword,
                  controller: controller.oldpasswordController,
                  onchange: (val) {
                    controller.validateFields("old_password", val);
                  },
                  hasSuffix: true,
                  suffixWidget: InkWell(
                    onTap: controller.oldPasswordToggle,
                    child: controller.obscureOldPassword
                        ? SvgPicture.asset(
                            ImageConst.eye_off_ic,
                            fit: BoxFit.scaleDown,
                          )
                        : SvgPicture.asset(
                            ImageConst.eye_ic,
                            fit: BoxFit.scaleDown,
                          ),
                  ),
                ),
                Gap(20),
                AppInputField(
                  errorText: controller.passwordError,
                  hint: 'Password',
                  obscure: controller.obscurePassword,
                  controller: controller.passwordController,
                  onchange: (val) {
                    controller.validateFields("password", val);
                  },
                  hasSuffix: true,
                  suffixWidget: InkWell(
                    onTap: controller.passwordToggle,
                    child: controller.obscurePassword
                        ? SvgPicture.asset(
                            ImageConst.eye_off_ic,
                            fit: BoxFit.scaleDown,
                          )
                        : SvgPicture.asset(
                            ImageConst.eye_ic,
                            fit: BoxFit.scaleDown,
                          ),
                  ),
                ),
                const Gap(20),
                AppInputField(
                  errorText: controller.confirmPasswordError,
                  hint: 'Confirm Password',
                  obscure: controller.cobscurePassword,
                  controller: controller.confirmPasswordController,
                  onchange: (val) {
                    controller.validateFields("confirm_password", val);
                  },
                  hasSuffix: true,
                  suffixWidget: InkWell(
                    onTap: controller.confirmPasswordToggle,
                    child: controller.cobscurePassword
                        ? SvgPicture.asset(
                            ImageConst.eye_off_ic,
                            fit: BoxFit.scaleDown,
                          )
                        : SvgPicture.asset(
                            ImageConst.eye_ic,
                            fit: BoxFit.scaleDown,
                          ),
                  ),
                ),
                Gap(25),
                AppButton(
                  title: 'Confirm',
                  buttonColor: AppColors.primary_color,
                  ontap: () {},
                ),
              ],
            )),
          )),
    );
  }
}
