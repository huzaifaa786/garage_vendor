import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/product/product_form/product_form_controller.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_constants/const_images.dart';
import 'package:garage_vendor/utils/app_constants/text_strings.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class ProductImagesPicker extends StatelessWidget {
  const ProductImagesPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductFormController>(
      builder: (controller) => InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        onTap: () {
          // controller.pickImageFromGallery('cover');
        },
        child: DottedBorder(
          borderType: BorderType.RRect,
          strokeWidth: 1.0,
          color: AppColors.primary_color,
          dashPattern: const <double>[4, 2],
          padding: const EdgeInsets.all(0),
          radius: const Radius.circular(5),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child:
                  //  controller.cover == null ||
                  //         controller.cover!.path.isEmpty
                  //     ?
                  Container(
                height: 160,
                width: Get.width,
                color: AppColors.primary_color.withOpacity(0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImageConst.image_ic),
                        const Gap(4),
                        AppText(
                          title: ConstantStrings.upload_services_photos,
                          size: 10,
                          color: AppColors.primary_color,
                        )
                      ],
                    ),
                    const Gap(6),
                    AppText(
                      title: ConstantStrings.recomended_image_size,
                      size: 8,
                      color: AppColors.hint_text_color,
                    )
                  ],
                ),
              )
              // : Image.file(
              //     controller.cover!,
              //     height: 160,
              //     width: Get.width,
              //   ),
              ),
        ),
      ),
    );
  }
}
