import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        width: double.infinity,
        height: 158,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                "Тип",
                style: ThemeTextStyles.appTitle,
              ),
            ),
            RadioListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.primary,
              title: Text(
                "Чайханский плов",
                style: ThemeTextStyles.features,
              ),
              value: "Чайханский плов",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.primary,
              title: Text(
                "Свадебный плов",
                style: ThemeTextStyles.features,
              ),
              value: "Свадебный плов",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
