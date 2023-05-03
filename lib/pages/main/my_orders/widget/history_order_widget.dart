import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/routes/app_routes.dart';

class HistoryOrderWidget extends StatelessWidget {
  const HistoryOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderWidget(
          text: "Заказ №341",
          color: const Color.fromRGBO(34, 195, 72, 0.1),
          title: "Доставлен",
          titlecolor: const Color(0xff22C348),
        ),
        OrderWidget(
          text: "Заказ №124",
          color: const Color(0xffFFE8E7),
          title: "Отменён",
          titlecolor: const Color(0xffF30404),
        ),
        OrderWidget(
          text: "Заказ №152",
          color: const Color.fromRGBO(34, 195, 72, 0.1),
          title: "Доставлен",
          titlecolor: const Color(0xff22C348),
        ),
      ],
    );
  }
}

class OrderWidget extends StatefulWidget {
  OrderWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.title,
      required this.titlecolor})
      : super(key: key);
  String text;
  Color color;
  String title;
  Color titlecolor;

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.history_order);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          width: double.infinity,
          height: 96,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: Colors.white70,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.text,
                      style: ThemeTextStyles.appTitle,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          widget.color,
                        ),
                        minimumSize: MaterialStateProperty.all(
                          const Size(101, 32),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          color: widget.titlecolor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("86 000 сум",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: ThemeColors.black2,
                        )),
                    Row(
                      children: const [
                        Icon(
                          Icons.calendar_month_rounded,
                          color: ThemeColors.black3,
                        ),
                        Text(
                          "11.05.2022",
                          style: ThemeTextStyles.adress,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
