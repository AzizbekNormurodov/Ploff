import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/routes/app_routes.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only( top: 110, right: 210, bottom: 48,),
              child: Image.asset("assets/png/status.png", width: 148, height: 132,),
            ),
            const Text("Выберите язык:", style: ThemeTextStyles.order,),
            LanguageWidget(image: "assets/png/uz.png", text: "O`zbekcha"),
            LanguageWidget(image: "assets/png/ru.png", text: "Русский"),
            LanguageWidget(image: "assets/png/en.png", text: "English"),


          ],
        ),
      ),
    );
  }
}
class LanguageWidget extends StatelessWidget {
   LanguageWidget({Key? key, required this.image, required this.text}) : super(key: key);
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListTile( tileColor: const Color(0xffF2F2F2), shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
        leading: Image.asset(image),
        title: Text(text),
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.main);
        },
      ),
    );
  }
}

