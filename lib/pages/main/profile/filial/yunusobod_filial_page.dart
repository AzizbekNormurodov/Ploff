import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

class YunusobodFilialPage extends StatefulWidget {
  YunusobodFilialPage({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  State<YunusobodFilialPage> createState() => _YunusobodFilialPageState();
}

class _YunusobodFilialPageState extends State<YunusobodFilialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          height: 529,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  "assets/png/yunusobod1.png",
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 24),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              YunusobodItem(
                  icon: "assets/png/locat.png",
                  text: "Адрес",
                  text2: "Массив Юнусабад 19"),
              YunusobodItem(
                  icon: "assets/png/pointer.png",
                  text: "Ориентир",
                  text2: "Юнусабад"),
              YunusobodItem(
                  icon: "assets/png/watch.png",
                  text: "Часы работы",
                  text2: "8:00-23:00"),
              YunusobodItem(
                  icon: "assets/png/call.png",
                  text: "Номер телефона",
                  text2: "Номер телефона"),
              YunusobodItem2(
                icon: "assets/png/Link.png",
                text: "Ссылка",
                text2: "https://yandex.uz/maps/10335",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YunusobodItem extends StatelessWidget {
  YunusobodItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.text2,
  }) : super(key: key);
  String icon;
  String text;
  String text2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 12, top: 4),
        leading: Image.asset(
          icon,
          width: 24,
          height: 24,
        ),
        title: Text(
          text,
          style: const TextStyle(
            color: ThemeColors.black2,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            text2,
            style: ThemeTextStyles.order2,
          ),
        ),
      ),
    );
  }
}

class YunusobodItem2 extends StatelessWidget {
  YunusobodItem2({
    Key? key,
    required this.icon,
    required this.text,
    required this.text2,
  }) : super(key: key);
  String icon;
  String text;
  String text2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 12, top: 4),
        leading: Image.asset(
          icon,
          width: 24,
          height: 24,
        ),
        title: Text(
          text,
          style: const TextStyle(
            color: ThemeColors.black2,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            text2,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xff0E73F6),
            ),
          ),
        ),
      ),
    );
  }
}
