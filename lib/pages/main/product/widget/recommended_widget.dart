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
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              width: 460,
              height: 224,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RecommendedItem(
                      image: "assets/png/Chaykhansky pilaf1.png",
                      text: "Чайханский плов",
                      cost: "40 000 сум"),
                  RecommendedItem(
                      image: "assets/png/wedding pilaf1.png",
                      text: "Свадебный плов",
                      cost: "45 000 сум"),
                  RecommendedItem(
                      image: "assets/png/Chaykhansky pilaf1.png",
                      text: "Чайханский плов",
                      cost: "40 000 сум"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendedItem extends StatelessWidget {
  RecommendedItem(
      {Key? key, required this.image, required this.text, required this.cost})
      : super(key: key);
  String image;
  String text;
  String cost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 148,
        height: 224,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Color(0xffF8F8F8),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 148,
              height: 120,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: ThemeTextStyles.setting,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    minimumSize: MaterialStateProperty.all(Size(132, 36))),
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
