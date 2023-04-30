import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/product/widget/nearest_branch_widget.dart';
import 'package:ploff/routes/app_routes.dart';

import '../product/widget/bottomsheet_widget.dart';
import 'widget/address_widget.dart';
import 'widget/courier_widget.dart';
import 'widget/delivery_time_widget.dart';
import 'widget/payment_type_widget.dart';

class CheckoutPage extends StatefulWidget {
  CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage>
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
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Оформить заказ',
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
                    child: Text("Доставка"),
                  ),
                  Tab(
                    child: Text("Самовывоз"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: AddressWidget(),
                    ),
                    const CourierWidget(),
                    const DeliveryTimeWidget(),
                    const PaymentTypeWidget(),
                    Image.asset("assets/png/chek.png"),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return const BottomSheetWidget();
                              },
                            );
                          },
                          child: const Text("Заказать")),
                    ),
                  ],
                );
              },
              itemCount: 1),
          ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: NearestBranchWidget(),
                    ),
                    const PaymentTypeWidget(),
                    Image.asset("assets/png/chek.png"),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.signup);
                          },
                          child: const Text("Заказать")),
                    ),
                  ],
                );
              },
              itemCount: 1),
        ],
      ),
    );
  }
}
