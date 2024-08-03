import 'package:flutter/material.dart';
import 'package:garage_vendor/app/notification/component/notification_card.dart';
import 'package:garage_vendor/app/notification/notification_controller.dart';
import 'package:garage_vendor/layout/app_layout.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(
      autoRemove: false,
      builder: (controller) => AppLayout(
          appBarTitle: 'Notification',
          hasBgColor: true,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'Today',
                      size: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
              NotificationCard(
                name: 'Ali Raza',
                ordername: 'car wash',
              ),
              NotificationCard(
                name: 'Ali Raza',
                ordername: 'car wash',
              ),
              NotificationCard(
                name: 'Ali Raza',
                ordername: 'car wash',
              ),
            ],
          )),
    );
  }
}
