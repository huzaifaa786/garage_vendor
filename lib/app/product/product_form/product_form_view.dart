import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/product/product_form/components/product_images_picker.dart';
import 'package:garage_vendor/app/product/product_form/components/service_type_card.dart';
import 'package:garage_vendor/app/product/product_form/components/service_type_fields.dart';
import 'package:garage_vendor/app/product/product_form/product_form_controller.dart';
import 'package:garage_vendor/layout/app_layout.dart';
import 'package:garage_vendor/utils/app_button/app_button.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_dropdown/app_dropdown.dart';
import 'package:garage_vendor/utils/app_inputfields/app_inputfield.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:garage_vendor/utils/rich_text/product_rich_text.dart';
import 'package:get/get.dart';

class ProductFormView extends StatelessWidget {
  const ProductFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductFormController>(
      autoRemove: false,
      builder: (controller) => AppLayout(
        appBarTitle: 'Add Product or Service',
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: ProductImagesPicker(),
              ),
              Divider(color: AppColors.divider_color, thickness: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppText(
                      title: 'Fill Info',
                      size: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    Gap(12),
                    AppInputField(
                      errorText: controller.serviceNameError,
                      hint: 'Service Name',
                      controller: controller.serviceNameController,
                      onchange: (val) {
                        controller.validateFields("Service Name", val);
                      },
                    ),
                    Gap(12),
                    DropDownField(
                      items: controller.items,
                      hint: 'Category',
                      selectedValue: controller.selectedValue,
                      onChanged: (value) {
                        controller.selectedValue = value;
                        controller.update();
                        controller.validateFields("Category", value);
                      },
                      errorText: controller.categoryError,
                    ),
                    Gap(12),
                    AppInputField(
                      errorText: controller.priceError,
                      hint: 'Price',
                      type: TextInputType.number,
                      controller: controller.priceController,
                      onchange: (val) {
                        controller.validateFields("Price", val);
                      },
                      hasSuffix: true,
                      suffixWidget: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: AppText(
                          title: 'AED',
                          size: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary_color,
                        ),
                      ),
                    ),
                    Gap(12),
                    AppInputField(
                      errorText: controller.descriptionError,
                      hint: 'Description',
                      controller: controller.descriptionController,
                      onchange: (val) {
                        controller.validateFields("Description", val);
                      },
                    ),
                    Gap(12),
                    AppInputField(
                      errorText: controller.timeError,
                      hint: 'Time needed for service',
                      type: TextInputType.number,
                      controller: controller.timeController,
                      onchange: (val) {
                        controller.validateFields(
                            "Time needed for service", val);
                      },
                      hasSuffix: true,
                      suffixWidget: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: AppText(
                          title: 'Min',
                          size: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary_color,
                        ),
                      ),
                    ),
                    Gap(12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: ProductRichText(
                        title: 'Service type',
                        buttonText: '(Optional)',
                      ),
                    ),
                    Gap(12),
                    ServiceTypeFields(
                      visible: true,
                      nameLabel: 'Name'.tr,
                      priceLabel: 'Price'.tr,
                      priceInputType: TextInputType.number,
                      nameController: controller.serviceTypeName,
                      priceController: controller.serviceTypePrice,
                      nameError: controller.serviceTypeError,
                      priceError: controller.serviceTypePriceError,
                      onchange1: (val) {
                        controller.validateFields("Service Type", val);
                      },
                      onchange2: (val) {
                        controller.validateFields("Service Type Price", val);
                      },
                      ontap: controller.addExtras,
                    ),
                    Gap(12),
                    ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.serviceTypeList.length,
                      itemBuilder: (context, index) {
                        final item = controller.serviceTypeList[index];
                        return ServiceTypeCard(
                          name: item['service_type_name'],
                          price: item['service_type_price'].toString(),
                          onRemoveTap: () {
                            controller.removeExtra(index);
                          },
                        );
                      },
                    ),
                    Gap(30),
                    AppButton(
                      title: 'Add product',
                      buttonColor: AppColors.primary_color,
                      ontap: (){},
                    ),
                    Gap(20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
