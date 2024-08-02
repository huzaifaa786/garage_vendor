// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_constants/const_images.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:garage_vendor/utils/box_decorations/box_decorations.dart';
import 'package:get/get.dart';

class DropDownField extends StatelessWidget {
  DropDownField({
    super.key,
    required this.items,
    this.hint,
    this.selectedValue,
    this.onChanged,
    this.errorText,
  });
  final List<String> items;
  final String? hint;
  String? selectedValue;
  final ValueChanged<String?>? onChanged;
  final String? errorText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Get.width,
          decoration: errorText!.isNotEmpty
              ? circularErrorInputDecoration
              : circularInputDecoration,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              hint: AppText(
                title: hint!,
                size: 11,
                fontWeight: FontWeight.w400,
                // color: AppColors.black,
              ),
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: item == selectedValue
                                ? AppColors.white_color
                                : AppColors.black_color,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                if (onChanged != null) {
                  onChanged!(value);
                }
              },
              selectedItemBuilder: (BuildContext context) {
                return items.map((item) {
                  return Center(
                    child: AppText(
                      title: item,
                      size: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  );
                }).toList();
              },
              menuItemStyleData: MenuItemStyleData(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                selectedMenuItemBuilder: (context, child) =>
                    Container(color: AppColors.primary_color, child: child),
              ),
              iconStyleData: IconStyleData(
                icon: SvgPicture.asset(ImageConst.drop_down_icon),
              ),
              buttonStyleData: ButtonStyleData(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColors.input_bg_color,
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
              dropdownStyleData: DropdownStyleData(
                direction: DropdownDirection.left,
                maxHeight: Get.height * 0.4,
                width: 160,
                padding: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
        if (errorText!.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: 4, left: 16, right: 16),
            child: AppText(
              title: errorText!,
              color: AppColors.primary_color,
              size: 10,
            ),
          ),
      ],
    );
  }
}
