import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

import 'active_order_page.dart';

class HistoryOrderPage extends StatelessWidget {
  const HistoryOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Заказ №789"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Container(
              width: double.infinity,
              height: 210,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Заказ №341",
                          style: ThemeTextStyles.appTitle,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(34, 195, 72, 0.1),),
                            minimumSize: MaterialStateProperty.all(
                              const Size(101, 32),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Доставлен",
                            style: TextStyle(color: Color(0xff22C348)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTileWidget(
                      icon: Icons.location_on_outlined,
                      title: "Адрес",
                      text: "Массив Бешягач 19"),
                  ListTileWidget(
                      icon: Icons.watch_later_outlined,
                      title: "Время",
                      text: "20:56"),
                  ListTileWidget(
                      icon: Icons.calendar_today,
                      title: "Дата",
                      text: "11.05.2022"),
                  ListTileWidget(
                      icon: Icons.credit_card,
                      title: "Способ оплаты",
                      text: "Наличные"),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 73,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/png/account.png"),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 4),
                        child: Text(
                          "Курьер",
                          style: ThemeTextStyles.appTitle,
                        ),
                      ),
                      Text(
                        "Abdullajanov Murod",
                        style: ThemeTextStyles.adress,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Image.asset("assets/png/chek.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: ElevatedButton(onPressed: (){}, child: const Text("Повторить заказ")),
          ),
        ],
      ),
    );
  }
}
