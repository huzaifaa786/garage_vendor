import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/avaliable_date/avaliabledate_controller.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';

class SelectedDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AvaliableDateController>(
      builder: (controller) {
        return Column(
          children: controller.selectedDates.map((date) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width*0.63,
                    height: 40,
                    decoration: BoxDecoration(
                        color: AppColors.light_red,
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText(
                            title: DateFormat('EEEE').format(date),
                            color: AppColors.primary_color,
                            size: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          Gap(10),
                          AppText(
                            title: DateFormat('d MMMM yyyy').format(date),
                            color: AppColors.primary_color,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(13),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: AppColors.light_red,
                        borderRadius: BorderRadius.circular(50)),
                    child: GestureDetector(
                        onTap: () {
                          controller.removeDate(date);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset('assets/images/trash-2.svg'),
                        )),
                  ),
                ],
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
