import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

import 'widget/button_widget.dart';

class BasketEmptyPage extends StatelessWidget {
  const BasketEmptyPage({Key? key}) : super(key: key);

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
      body: Center(child: Image.asset("assets/png/basket.png"),),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
          },
          child: const Text("Оформить заказ"),
        ),
      ),
    );
  }
}
