import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class PointButton extends StatelessWidget {
  final int point;

  const PointButton({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    String formattedPoint = NumberFormat('#,###').format(point);

    return Row(
      children: [
        "내 포인트".text.color(context.appColors.lessImportantColor).make(),
        emptyExpanded,
        "$formattedPoint 원".text.bold.make(),
        width10,
        Arrow(
          color: context.appColors.lessImportantColor,
        ),
      ],
    );
  }
}
