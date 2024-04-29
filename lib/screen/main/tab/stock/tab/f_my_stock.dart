import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/stock/tab/w_interest_stock_list.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/w_long_button.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getMyAccount(context),
        height20,
        getMyStocks(context),
      ],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            '계좌'.text.size(18).make(),
            Row(
              children: [
                '443원'.text.size(24).bold.make(),
                Arrow(),
                emptyExpanded,
                RoundedContainer(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  backgroundColor: context.appColors.buttonBackground,
                  radius: 8,
                  child: '채우기'.text.size(12).make(),
                ),
              ],
            ),
            height30,
            Line(
              color: context.appColors.lessImportantColor,
            ),
            height10,
            LongButton(
              title: '주문 내역',
              onTap: () {},
            ),
            LongButton(
              title: '판매 수익',
              onTap: () {},
            ),
          ],
        ),
      );

  Widget getMyStocks(BuildContext context) => Column(
    children: [
      Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: context.appColors.roundedLayoutBackground,
            child: Column(
              children: [
                height30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    '관심주식'.text.bold.make(),
                    emptyExpanded,
                    '편집하기'.text.color(context.appColors.lessImportantColor).make(),
                  ],
                ),
                height20,
                Tap(
                  onTap: (){
                    context.showSnackbar('message');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        '기본'.text.make(),
                        Arrow(
                          direction: AxisDirection.up,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      const InterestStockList().pSymmetric(h: 20, v: 10),
    ],
  );
}
