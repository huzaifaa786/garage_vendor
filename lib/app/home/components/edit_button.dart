import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';

class EditButton extends StatelessWidget {
  const EditButton({
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
        height: 40,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset(icon),
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
          border: Border.all(color: AppColors.primary_color),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
