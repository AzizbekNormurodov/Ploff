import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

class RecommendedWidget extends StatefulWidget {
  const RecommendedWidget({Key? key}) : super(key: key);

  @override
  State<RecommendedWidget> createState() => _RecommendedWidgetState();
}

class _RecommendedWidgetState extends State<RecommendedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 294,
      width: 375,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text("Рекомендуемый", style: ThemeTextStyles.appTitle),
          ),
          Container(
            width: 460,
            height: 224,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset("assets/png/card1.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset("assets/png/card2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset("assets/png/card1.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
