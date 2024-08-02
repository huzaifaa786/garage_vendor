// ignore_for_file: avoid_unnecessary_containers

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:garage_vendor/app/notification/notification_controller.dart';
import 'package:garage_vendor/utils/app_colors/app_colors.dart';
import 'package:garage_vendor/utils/app_text/app_text.dart';
import 'package:get/get.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    this.img = 'https://dummyimage.com/50x47/000/fff',
  });
  final img;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(
      builder: (controller) => Container(
        child: Column(
          children: [
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
                Row(
                  children: [
                    Container(
                      height: 47,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
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
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: 'fsdfdfgfdg',
                            fontWeight: FontWeight.w600,
                            size: 12,
                          ),
                          Gap(10),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: controller.ratings,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                glow: false,
                                itemSize: 14,
                                unratedColor: AppColors.black_color,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(Icons.star,
                                    color: AppColors.primary_color),
                                onRatingUpdate: (rating) {
                                  controller.updateRating(rating);
                                },
                              ),
                              Gap(10),
                              AppText(
                                title: controller.ratings.toString(),
                                size: 8.0,
                                fontWeight: FontWeight.w500,
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
                AppText(
                  title: '              ' + 'dfsdfsd',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
