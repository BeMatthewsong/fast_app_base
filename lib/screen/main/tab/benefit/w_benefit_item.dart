import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo_benefit.dart';
import 'package:flutter/material.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  static const imageWidth = 50.0;

  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Image.asset(
            benefit.imagePath,
            width: imageWidth,
          ),
          width20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              benefit.title.text.size(13).make(),
              height5,
              benefit.subtitle.text.size(13).color(AppColors.blue).make(),
            ],
          )
        ],
      ),
    );
  }
}
