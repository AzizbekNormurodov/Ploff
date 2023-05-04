import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/home/widget/discount_widget.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 409,
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Популярные блюда",
                  style: ThemeTextStyles.text2,
                ),
              ),
              ContainerWidget(
                  text: "35 000 сум", image: "assets/png/ploff5.png"),
              ContainerWidget(
                  text: "38 000 сум", image: "assets/png/ploff6.png"),
              ContainerWidget(
                  text: "42 000 сум", image: "assets/png/ploff7.png"),
            ],
          ),
        ),
      ),
    );
  }
}
