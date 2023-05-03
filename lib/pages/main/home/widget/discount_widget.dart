import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/routes/app_routes.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: Container(
          width: double.infinity,
          height: 529,
          decoration: const BoxDecoration(
            color: Colors.white,
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
                    "Со скидкой",
                    style: ThemeTextStyles.text2,
                  ),
                ),
                ContainerWidget(
                    text: "35 000 сум", image: "assets/png/ploff1.png"),
                ContainerWidget(
                    text: "47 000 сум", image: "assets/png/ploff2.png"),
                ContainerWidget(
                    text: "41 000 сум", image: "assets/png/ploff3.png"),
                ContainerWidget(
                    text: "52 000 сум", image: "assets/png/ploff4.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  ContainerWidget({Key? key, required this.text, required this.image})
      : super(key: key);
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.product);
      },
      child: SizedBox(
        width: double.infinity,
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Чайханский плов",
                      style: ThemeTextStyles.order2,
                    ),
                    const Text(
                      "Своим именем чайханский плов обязан \nстарой ташкентской традиции «ош»...",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: ThemeColors.black3,
                      ),
                    ),
                    Text(
                      text,
                      style: ThemeTextStyles.order2,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    image,
                    width: 56,
                    height: 86,
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/png/Rectangle.png",
            ),
          ],
        ),
      ),
    );
  }
}
