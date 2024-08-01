import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:garage_vendor/app/editprofile.dart/editprofile_controller.dart';
import 'package:garage_vendor/utils/app_bar/app_bar.dart';
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
        body: SafeArea(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
