import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/core/widget/counter_widget.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        color: Colors.white70,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 157,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/png/list_image1.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Чайханский плов",
                            style: ThemeTextStyles.appTitle,
                          ),
                          Text(
                            "Без лука",
                            style: ThemeTextStyles.list_text,
                          ),
                          Text(
                            "Без Яйцо",
                            style: ThemeTextStyles.list_text,
                          ),
                          Text(
                            "Без Салат",
                            style: ThemeTextStyles.list_text,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "47 000 сум",
                              style: ThemeTextStyles.setting,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Icon(Icons.clear),
                        CounterWidget(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/png/list_image1.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Свадебный плов",
                            style: ThemeTextStyles.appTitle,
                          ),
                          Text(
                            "0,7 порция",
                            style: ThemeTextStyles.list_text,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "47 000 сум",
                              style: ThemeTextStyles.setting,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Icon(Icons.clear),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: CounterWidget(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/png/list_image2.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Особый плов",
                            style: ThemeTextStyles.appTitle,
                          ),
                          Text(
                            "1 порция",
                            style: ThemeTextStyles.list_text,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "47 000 сум",
                              style: ThemeTextStyles.setting,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Icon(Icons.clear),
                        Padding(
                          padding: EdgeInsets.only(left: 32),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Общая сумма",
                      style: ThemeTextStyles.name,
                    ),
                    Text(
                      "58 000 сум",
                      style: ThemeTextStyles.appTitle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
