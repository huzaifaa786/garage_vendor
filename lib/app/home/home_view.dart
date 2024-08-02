// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/home/components/edit_button.dart';
import 'package:garage_vendor/app/home/components/home_appbar.dart';
import 'package:garage_vendor/app/home/components/main_box.dart';
import 'package:garage_vendor/app/home/components/review_box.dart';
import 'package:garage_vendor/app/home/home_controller.dart';
import 'package:garage_vendor/routes/app_routes.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 223, 223),
        appBar: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          title: HomeAppbar(
            chat: () {},
            notification: () {
              Get.toNamed(AppRoutes.notification);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Container(
                height: Get.height * 0.42,
                decoration: BoxDecoration(color: AppColors.white_color),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 29),
                          child: Image.asset(
                            'assets/images/Rectangle 201.png',
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.223,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            top: 135,
                            left: (MediaQuery.of(context).size.width - 100) / 2,
                            child: Image.asset(
                              'assets/images/Ellipse 127.png',
                              width: 100,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          title: 'Street garage',
                          size: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary_color,
                        ),
                        SvgPicture.asset('assets/images/Vector (20).svg')
                      ],
                    ),
                    Gap(8),
                    AppText(
                      title: 'All cars services and products.',
                      size: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          title: 'Garage opned',
                          size: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                        Switch(
                          thumbColor: const MaterialStatePropertyAll<Color>(
                              Colors.white),
                          value: controller.light,
                          activeColor: Colors.green,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.grey.shade400,
                          onChanged: controller.onChange,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        EditButton(
                          ontap: () {
                            Get.toNamed(AppRoutes.avaliabledate);
                          },
                          icon: 'assets/images/calendar.svg',
                          text: 'Edit unavailable dates ',
                          width: MediaQuery.of(context).size.width * 0.40,
                        ),
                        Gap(10),
                        EditButton(
                          ontap: () {
                            Get.toNamed(AppRoutes.editprofile);
                          },
                          icon: 'assets/images/edit.svg',
                          text: 'Edit profit',
                          width: MediaQuery.of(context).size.width * 0.30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(8),
              Container(
                height: Get.height * 0.55,
                decoration: BoxDecoration(color: AppColors.white_color),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MainBox(
                            icon: 'assets/images/Group 51.svg',
                            text: 'Add product\n or service',
                          ),
                          Gap(27),
                          MainBox(
                            icon: 'assets/images/Group 53.svg',
                            text: 'Edit product &\n services',
                          )
                        ],
                      ),
                      Gap(25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MainBox(
                            icon: 'assets/images/shopping-bag.svg',
                            text: 'Orders',
                          ),
                          Gap(27),
                          MainBox(
                            icon: 'assets/images/Group 500.svg',
                            text: 'Sales',
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 33, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                ReviewBox(
                                  icon: 'assets/images/quick-check 1.png',
                                  text: 'Instant Order',
                                ),
                                ReviewBox(
                                  icon: 'assets/images/star.png',
                                  text: 'My reviews',
                                ),
                                ReviewBox(
                                  icon: 'assets/images/power.png',
                                  text: 'Log Out',
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
