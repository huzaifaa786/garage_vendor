// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class AppPhoneInput extends StatelessWidget {
  const AppPhoneInput({
    super.key,
    required this.onChanged,
    required this.onCountryChanged,
    this.errorText,
    this.controller,
    this.initialCountryCode = 'AE',
  });

  final ValueChanged<PhoneNumber?> onChanged;
  final String? errorText;
  final TextEditingController? controller;
  final ValueChanged<Country> onCountryChanged;
  final String? initialCountryCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IntlPhoneField(
          searchText: "Select Country/Region",
          dropdownIconPosition: IconPosition.trailing,
          controller: controller,
          initialCountryCode: initialCountryCode,
          languageCode: "en",
          dropdownIcon: Icon(
            Icons.arrow_drop_down,
            size: 24,
            color: AppColors.primary_color,
          ),
          pickerDialogStyle: PickerDialogStyle(backgroundColor: Colors.white),
          flagsButtonPadding: const EdgeInsets.only(left: 10),
          onCountryChanged: onCountryChanged,
          dropdownTextStyle: GoogleFonts.inter(fontSize: 14),
          style: GoogleFonts.inter(fontSize: 14),
          decoration: InputDecoration(
            hintText: "78 9087 8827",
            hintStyle: GoogleFonts.inter(color: AppColors.hint_text_color),
            fillColor: AppColors.input_bg_color,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(45),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 0.5),
              borderRadius: BorderRadius.circular(45),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 0.5),
              borderRadius: BorderRadius.circular(45),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(45),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(45),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(45),
            ),
            errorStyle: const TextStyle(fontSize: 0),
            counterStyle: const TextStyle(fontSize: 0),
          ),
          onChanged: onChanged,
        ),
        if (errorText!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 16, right: 16),
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
