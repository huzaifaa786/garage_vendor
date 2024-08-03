import 'package:flutter/material.dart';
import 'package:garage_vendor/app/order/orders/components/filter_view.dart';
import 'package:garage_vendor/app/order/orders/orders_controller.dart';
import 'package:garage_vendor/layout/app_layout.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersController>(
      autoRemove: false,
      builder: (controller) => AppLayout(
        appBarTitle: 'Orders',
        child: SingleChildScrollView(
          child: Column(
            children: [
              FilterView(),
              Divider(color: AppColors.divider_color, thickness: 10),
            ],
          ),
        ),
      ),
    );
  }
}
