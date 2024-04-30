import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/constants.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_image_button.dart';
import 'tab/f_my_stock.dart';
import 'tab/f_today_discovery.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int currentIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this); // this 가 유효하게 만들기 위해
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: context.appColors.roundedLayoutBackground,
          pinned: true,
          actions: [
            ImageButton(
              width: 26,
              height: 26,
              padding: const EdgeInsets.all(10),
              imagePath: '$basePath/icon/stock_search.png',
              onTap: () {
                Nav.push(SearchStockScreen());
              },
            ),
            ImageButton(
              width: 26,
              height: 26,
              padding: const EdgeInsets.all(10),
              imagePath: '$basePath/icon/stock_calendar.png',
              onTap: () {},
            ),
            ImageButton(
              width: 26,
              height: 26,
              padding: const EdgeInsets.all(10),
              imagePath: '$basePath/icon/stock_settings.png',
              onTap: () {},
            ),
          ],
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            title,
            tabBar,
            if(currentIndex == 0)
              MyStockFragment()
            else
              TodayDiscoveryFragment(),
            myAccount,
            height20,
            myStocks,
          ],
        ))
      ],
    );
  }

  Widget get title => Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'.text.size(24).bold.make(),
            width20,
            'S&P 500'
                .text
                .size(13)
                .bold
                .color(context.appColors.lessImportantColor)
                .make(),
            width10,
            3919.29
                .toComma()
                .text
                .size(13)
                .bold
                .color(context.appColors.plus)
                .make(),
          ],
        ).pOnly(left: 20),
  );

  Widget get tabBar => Container(
    color: context.appColors.roundedLayoutBackground,
    child: Column(
          children: [
            TabBar(
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                labelPadding: const EdgeInsets.symmetric(vertical: 20),
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                controller: tabController,
                tabs: [
                  '내 주식'.text.make(),
                  '오늘의 발견'.text.make(),
                ]),
            const Line(),
          ],
        ),
  );

  Widget get myAccount => Placeholder();

  Widget get myStocks => Placeholder();
}
