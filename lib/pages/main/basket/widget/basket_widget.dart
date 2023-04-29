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
            Container(
              width: 520,
              height: 182,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Image.asset("assets/png/Sous.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Image.asset("assets/png/achchiq.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Image.asset("assets/png/xleb.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Image.asset("assets/png/Sous.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
