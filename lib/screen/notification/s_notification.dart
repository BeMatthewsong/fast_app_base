import 'package:fast_app_base/screen/notification/d_notification.dart';
import 'package:fast_app_base/screen/notification/notification_dummy.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';

import '../../common/constant/app_colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkGrey,
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          title: Text("알림"),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (content, index) => NotificationItemWidget(
            notification: notificaitonDummies[index],
            onTap: () {
              NotificationDialog(
                  [notificaitonDummies[0], notificaitonDummies[1]]).show();
            },
          ),
          childCount: notificaitonDummies.length,
        ))
      ]),
    );
  }
}
