import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/routes/app_routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "Профиль ",
          style: ThemeTextStyles.status,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              width: double.infinity,
              height: 87,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 16, bottom: 8),
                          child: Text(
                            "Усмонов Акбар",
                            style: ThemeTextStyles.status,
                          ),
                        ),
                        Text(
                          "+998 12 433 87 32",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: ThemeColors.black2),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.edit_profile);
                      },
                      child: Image.asset("assets/png/Edit.png"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              width: double.infinity,
              height: 259,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  ProfileItem(
                    icon: "assets/png/localation.png",
                    text: "Филиалы",
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.filial);
                    },
                  ),
                  ProfileItem(
                      icon: "assets/png/setting.png",
                      text: "Настройки",
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.settings);
                      }),
                  ProfileItem(
                      icon: "assets/png/location pin.png",
                      text: "Мои адресы",
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.my_adress);
                      }),
                  ProfileItem(
                      icon: "assets/png/about.png",
                      text: "О сервисе",
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.about_service);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  ProfileItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  String icon;
  String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: double.infinity,
      height: 64,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.only(left: 12, top: 4),
        leading: Image.asset(
          icon,
          width: 40,
          height: 40,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.chevron_right_outlined),
        ),
      ),
    );
  }
}
