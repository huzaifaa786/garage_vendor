import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/avaliable_date/avaliabledate_controller.dart';
import 'package:garage_vendor/app/avaliable_date/components/selected_date.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:table_calendar/table_calendar.dart';

class AvaliableDateView extends StatefulWidget {
  const AvaliableDateView({super.key});

  @override
  State<AvaliableDateView> createState() => _AvaliableDateViewState();
}

class _AvaliableDateViewState extends State<AvaliableDateView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AvaliableDateController>(
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
                title: 'Edit unavailable dates',
                size: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primary_color,
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    title: '*Select date to mark as unavailable',
                    color: AppColors.primary_color,
                  )
                ],
              ),
              Gap(24),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.light_red,
                    borderRadius: BorderRadius.circular(2)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: controller.focusedDay,
                    selectedDayPredicate: (day) => controller.isSelected(day),
                    availableCalendarFormats: const {
                      CalendarFormat.month: 'Month',
                    },
                    onDaySelected: controller.onDaySelected,
                    onPageChanged: (focusedDay) {
                      controller.focusedDay = focusedDay;
                    },
                    calendarFormat: controller.format,
                    calendarStyle: CalendarStyle(
                      todayDecoration: BoxDecoration(
                          color: AppColors.primary_color.withOpacity(0.5),
                          shape: BoxShape.circle),
                      selectedDecoration: BoxDecoration(
                          color: AppColors.primary_color, shape: BoxShape.circle),
                      markerDecoration: BoxDecoration(
                        color: AppColors.primary_color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    headerStyle: HeaderStyle(
                      leftChevronIcon: Container(
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.chevron_left,
                          color: AppColors.primary_color,
                        ),
                      ),
                      rightChevronIcon: Container(
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.chevron_right,
                          color: AppColors.primary_color,
                        ),
                      ),
                      titleCentered: true,
                      titleTextStyle: TextStyle(
                          color: AppColors.primary_color,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 49),
                          child: AppText(
                            title: 'Unavailable dates',
                            color: AppColors.primary_color,
                          ),
                        ),
                      ],
                    ),
                    Gap(13),
                    SelectedDate()
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
