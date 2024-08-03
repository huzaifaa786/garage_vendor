import 'package:flutter/material.dart';
import 'package:garage_vendor/app/order/orders/orders_controller.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersController>(
      builder: (controller) => Container(
        height: 40,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.white_color,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Center(
          child: ListView.builder(
            itemCount: controller.filterList.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            primary: false,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  controller.selectedIndex = index;
                  controller.update();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: controller.selectedIndex == index
                            ? AppColors.primary_color
                            : AppColors.hint_text_color.withOpacity(0.15),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        AppText(
                          title: controller.filterList[index]['Name'],
                          size: 11,
                          fontWeight: FontWeight.w600,
                          color: controller.selectedIndex == index
                              ? AppColors.primary_color
                              : AppColors.hint_text_color,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
