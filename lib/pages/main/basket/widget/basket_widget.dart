import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

class BasketWidget extends StatelessWidget {
  const BasketWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 258,
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
            SizedBox(
              width: 375,
              height: 182,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BasketItem(
                        image: "assets/png/Sous1.png",
                        text: "Соус",
                        cost: "5 000 сум"),
                    BasketItem(
                        image: "assets/png/achchiq1.png",
                        text: "Ачик чучук",
                        cost: "8 000 сум"),
                    BasketItem(
                        image: "assets/png/bread.png",
                        text: "Хлеб",
                        cost: "6 000 сум"),
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

class BasketItem extends StatelessWidget {
  BasketItem(
      {Key? key, required this.image, required this.text, required this.cost})
      : super(key: key);
  String image;
  String text;
  String cost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
      ),
      child: Container(
        width: 120,
        height: 182,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          color: Color(0xffF8F8F8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 120,
              height: 96,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 4, top: 7),
              child: Text(
                text,
                style: ThemeTextStyles.name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 6),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    minimumSize:
                        MaterialStateProperty.all(const Size(104, 32))),
                onPressed: () {},
                child: Text(cost),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
