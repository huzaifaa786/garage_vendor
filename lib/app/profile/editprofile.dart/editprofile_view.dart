// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/profile/editprofile.dart/component/button.dart';
import 'package:garage_vendor/app/profile/editprofile.dart/component/profile_cover_picker.dart';
import 'package:garage_vendor/app/profile/editprofile.dart/editprofile_controller.dart';
import 'package:garage_vendor/app/home/components/review_box.dart';
import 'package:garage_vendor/routes/app_routes.dart';
import 'package:garage_vendor/utils/app_button/app_button.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class EditprofileView extends StatefulWidget {
  const EditprofileView({super.key});

  @override
  State<EditprofileView> createState() => _EditprofileViewState();
}

class _EditprofileViewState extends State<EditprofileView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditprofileController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 223, 223),
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
                  title: 'Edit Profile',
                  size: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary_color,
                ),
                elevation: 0,
                backgroundColor: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.4,
                  decoration: BoxDecoration(color: AppColors.white_color),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Gap(13),
                        ProfileAndCoverPickerr(),
                        Gap(13),
                        AppButton(
                          title: 'Save Changes',
                          buttonColor: AppColors.primary_color,
                        )
                      ],
                    ),
                  ),
                ),
                Gap(13),
                Container(
                  height: Get.height * 0.5,
                  decoration: BoxDecoration(color: AppColors.white_color),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Row(
                            children: [
                              Icon(Icons.settings),
                              AppText(
                                title: ' Setting',
                                size: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                        ChangePassword(
                          ontap: () {
                            Get.toNamed(AppRoutes.changepassword);
                          },
                          icon: 'assets/images/lock.svg',
                          text: 'Change password',
                        ),
                        ChangePassword(
                          icon: 'assets/images/globe.svg',
                          text: 'Change language',
                          langtext: 'English',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ReviewBox(
                                icon: 'assets/images/power.png',
                                text: 'Log Out',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
