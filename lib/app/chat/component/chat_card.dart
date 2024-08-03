// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/chat/chat_controller.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    this.name,
    this.img = 'https://dummyimage.com/50x47/000/fff',
    this.time,
    this.title,
  });
  final name;
  final img;
  final time;
  final title;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Container(
          height: 80,
          decoration: BoxDecoration(color: AppColors.white_color),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(6),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 47,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(38),
                              child: CachedNetworkImage(
                                imageUrl: controller.image?.isEmpty ?? true
                                    ? img
                                    : controller.image.toString(),
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Gap(8),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(6),
                                AppText(
                                  title: name,
                                  fontWeight: FontWeight.w600,
                                  size: 14,
                                ),
                                Gap(10),
                                Row(
                                  children: [
                                    Container(
                                      width: Get.width * 0.5,
                                      child: Flexible(
                                        child: AppText(
                                          maxLines: 1,
                                          overFlow: TextOverflow.ellipsis,
                                          title:
                                              'or reject xczxzzxcxzzxdsdzxcvzxcvzxcvzxcvxcvxcvxcorder',
                                          size: 11,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.lightblue,
                        ),
                      ),
                      Gap(5),
                      AppText(
                        title: '3 days ago',
                        size: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
