import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/basket/widget/basket_widget.dart';
import 'package:ploff/pages/main/basket/widget/button_widget.dart';
import 'package:ploff/pages/main/basket/widget/list_widget.dart';
import 'package:ploff/routes/app_routes.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Корзина",
          style: ThemeTextStyles.status,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          const ButtonWidget(),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
            child: ListWidget(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: 375,
                height: 110,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16,),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Комментарий", style: ThemeTextStyles.order2),
                      const SizedBox(height: 10),
                      SizedBox( height: 48,
                        child: TextField( textAlign: TextAlign.start,
                          decoration: InputDecoration(counterStyle: const TextStyle(color: Colors.green),
                            hintText: 'Напишите комментарий к заказу',
                            hintStyle: ThemeTextStyles.adress,
                            fillColor: const Color(0xffF5F5F5),
                            enabledBorder: OutlineInputBorder( borderSide: const BorderSide(width:0.0),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const BasketWidget(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.checkout);
            },
          child: const Text("Оформить заказ"),
        ),
      ),
    );
  }
}
