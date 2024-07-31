import 'package:flutter/material.dart';
import 'package:garage_vendor/app/home/components/home_appbar.dart';
import 'package:garage_vendor/app/home/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      autoRemove: false,
      builder: (controller) =>  Scaffold(
             appBar: AppBar(
                  scrolledUnderElevation: 0,
                  automaticallyImplyLeading: false,
                  title: HomeAppbar(
                   
                  ),
                ),
        body: SafeArea(
          
            child: Column(
          children: [],
        )),
      ),
    );
  }
}
