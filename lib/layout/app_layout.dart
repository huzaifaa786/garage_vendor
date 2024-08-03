import 'package:flutter/material.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    super.key,
    required this.child,
    this.appBarTitle,
    this.hasIcon = true,
    this.hasBgColor = false,
  });
  final Widget child;
  final String? appBarTitle;
  final bool hasIcon;
  final bool hasBgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          hasBgColor ? AppColors.divider_color : AppColors.white_color,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.black_color.withOpacity(0.2),
                blurRadius: 4,
              ),
            ],
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: hasIcon == true
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                if (hasIcon == true)
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.appbar_title_color,
                      ),
                    ),
                  ),
                AppText(
                  title: '$appBarTitle',
                  size: 15,
                  fontWeight: FontWeight.w600,
                  color: AppColors.appbar_title_color,
                ),
                if (hasIcon == true)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.transparent,
                    ),
                  ),
              ],
            ),
            elevation: 0,
            backgroundColor: AppColors.white_color,
            surfaceTintColor: AppColors.white_color,
          ),
        ),
      ),
      body: SafeArea(
        child: child,
      ),
    );
  }
}
