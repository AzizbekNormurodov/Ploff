import 'package:flutter/material.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  String lang = "ru";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 254,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12, top: 24),
            child: Text(
              "Язык",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Column(
            children: [
              CheckboxListTile(
                //checkbox positioned at right
                value: lang == "uz",
                onChanged: (bool? value) {
                  setState(() {
                    lang = "uz";
                  });
                },
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16, top: 12, bottom: 12),
                      child: Image.asset("assets/png/uz.png"),
                    ),
                    const Text(
                      "O’zbekcha",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              CheckboxListTile(
                //checkbox positioned at right
                value: lang == "ru",
                onChanged: (bool? value) {
                  setState(() {
                    lang = "ru";
                  });
                },
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16, top: 12, bottom: 12),
                      child: Image.asset("assets/png/ru.png"),
                    ),
                    const Text(
                      "Русский",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              CheckboxListTile(
                //checkbox positioned at right
                value: lang == "en",
                onChanged: (bool? value) {
                  setState(() {
                    lang = "en";
                  });
                },
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16, top: 12, bottom: 12),
                      child: Image.asset("assets/png/eng.png"),
                    ),
                    const Text(
                      "English",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
