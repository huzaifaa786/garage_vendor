import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/order/orders/components/filter_view.dart';
import 'package:garage_vendor/app/order/orders/components/sub_filter.dart';
import 'package:garage_vendor/app/order/orders/orders_controller.dart';
import 'package:garage_vendor/layout/app_layout.dart';
import 'package:get/get.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersController>(
      autoRemove: false,
      builder: (controller) => AppLayout(
        appBarTitle: 'Orders',
        hasBgColor: true,
        hasShadow: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              FilterView(),
              if(controller.selectedIndex == 0)...[
                Gap(12),
                SubFilterView()
              ]
            ],
          ),
        ),
      ),
    );
  }
}
