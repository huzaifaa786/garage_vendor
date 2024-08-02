import 'package:flutter/material.dart';
import 'package:garage_vendor/app/notification/component/notification_card.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [NotificationCard()],
      )),
    );
  }
}
