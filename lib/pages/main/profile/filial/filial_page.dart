import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/routes/app_routes.dart';

class ArgObject {
  String title;

  ArgObject({required this.title});
}

class FilialPage extends StatelessWidget {
  FilialPage({Key? key}) : super(key: key);
  var arg = ArgObject(title: 'Юнусабад');
  var arg1 = ArgObject(title: 'Хадра');
  var arg2 = ArgObject(title: 'Юнусабад');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Филиалы"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          width: double.infinity,
          height: 266,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Column(
            children: [
              FilialItem(
                  icon: "assets/png/yunusobod.png",
                  text: arg.title,
                  text2: "Абдуллы Кадыри, 10",
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.yunusobod_filial,
                        arguments: arg);
                  }),
              FilialItem(
                  icon: "assets/png/xadra.png",
                  text: arg1.title,
                  text2: "Yunus Rajabiy, 42B",
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.yunusobod_filial,
                        arguments: arg1);
                  }),
              FilialItem(
                  icon: "assets/png/yunusobod2.png",
                  text: arg2.title,
                  text2: "Yunis Rajabiy, 42B",
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.yunusobod_filial,
                        arguments: arg2);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class FilialItem extends StatelessWidget {
  FilialItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.text2,
    required this.onTap,
  }) : super(key: key);
  String icon;
  String text;
  String text2;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 56,
        child: ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.only(top: 4),
          leading: Image.asset(
            icon,
            width: 56,
            height: 56,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                text2,
                style: ThemeTextStyles.adress,
              ),
            ],
          ),
          trailing: const Icon(Icons.chevron_right_outlined),
        ),
      ),
    );
  }
}
