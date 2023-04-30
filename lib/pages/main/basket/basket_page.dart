import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/basket/widget/basket_widget.dart';
import 'package:ploff/pages/main/basket/widget/button_widget.dart';
import 'package:ploff/routes/app_routes.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Корзина",
          style: ThemeTextStyles.status,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          ButtonWidget(),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.asset("assets/png/card.png"),
            ),
          ),
          SliverToBoxAdapter(
            child: Image.asset("assets/png/card_ploff.png"),
          ),
          SliverToBoxAdapter(
            child: Image.asset("assets/png/card_ploff2.png"),
          ),
          SliverToBoxAdapter(
            child: Image.asset("assets/png/Frame.png"),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: 375,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16,),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Комментарий", style: ThemeTextStyles.order2),
                      SizedBox(height: 10),
                      SizedBox( height: 48,
                        child: TextField( textAlign: TextAlign.start,
                          decoration: InputDecoration(counterStyle: TextStyle(color: Colors.green),
                            hintText: 'Напишите комментарий к заказу',
                            hintStyle: ThemeTextStyles.adress,
                            fillColor: Color(0xffF5F5F5),
                            enabledBorder: OutlineInputBorder( borderSide: BorderSide(width:0.0),
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
          BasketWidget(),
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
