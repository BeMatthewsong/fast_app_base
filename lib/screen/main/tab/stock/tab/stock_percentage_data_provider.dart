import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

// 추상화 클래스는 몇 가지를 가정할 수 있다.
// 필드가 있다고 가정하기 가능
abstract mixin class StockPercentageDataProvider {
  int get currentPrice;
  int get yesterdayClosePrice;

  double get todayPercentage =>
      ((currentPrice - yesterdayClosePrice) / yesterdayClosePrice * 100)
          .toPrecision(2);

  String get todayPercentageString => "${symbol}$todayPercentage%";

  bool get isPlus => currentPrice > yesterdayClosePrice;

  bool get isSame => currentPrice == yesterdayClosePrice;

  bool get isMinus => currentPrice < yesterdayClosePrice;

  String get symbol => isSame
      ? ""
      : isPlus
          ? "+"
          : "-";

  Color getPriceColor(BuildContext context) => isSame
      ? context.appColors.lessImportantColor
      : isPlus
          ? context.appColors.plus
          : context.appColors.minus;
}
