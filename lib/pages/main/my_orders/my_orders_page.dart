import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/my_orders/widget/Active_order_widget.dart';
import 'package:ploff/pages/main/my_orders/widget/history_order_widget.dart';

class MyordersPage extends StatefulWidget {
  const MyordersPage({Key? key}) : super(key: key);

  @override
  State<MyordersPage> createState() => _MyordersPageState();
}

class _MyordersPageState extends State<MyordersPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;

  int current = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Мои заказы',
            style: ThemeTextStyles.appTitle,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Container(
            width: double.infinity,
            height: 38,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      surfaceVariant: Colors.transparent,
                    ),
              ),
              child: TabBar(
                labelColor: Colors.black,
                padding: const EdgeInsets.all(2),
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                tabs: const [
                  Tab(
                    child: Text("Активные заказы"),
                  ),
                  Tab(
                    child: Text("История заказов"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
           ActiveOrderWidget(),
          HistoryOrderWidget(),

        ],
      ),
    );
  }
}
