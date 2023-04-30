import 'package:flutter/material.dart';
import 'package:ploff/pages/main/basket/basket_page.dart';
import 'package:ploff/pages/main/%D1%81heckout/checkout_page.dart';
import 'package:ploff/pages/main/my_orders/my_orders_page.dart';

import 'home/home_page.dart';
import 'profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children:   const [
            HomePage(),
            BasketPage(),
            MyordersPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Корзина',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Мои заказы',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Мои заказы',
            ),
          ],
        )
    );
  }
}
