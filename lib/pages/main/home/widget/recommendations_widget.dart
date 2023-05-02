import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/home/widget/discount_widget.dart';

class RecommendationsWidget extends StatelessWidget {
  const RecommendationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          width: double.infinity,
          height: 287,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "Наши рекомендации",
                    style: ThemeTextStyles.text2,
                  ),
                ),
                ContainerWidget(text: "35 000 сум", image: "assets/png/ploff7.png"),
                ContainerWidget(text: "38 000 сум", image: "assets/png/ploff8.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


