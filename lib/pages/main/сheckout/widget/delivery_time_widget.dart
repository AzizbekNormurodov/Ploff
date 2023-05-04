import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

enum SingingCharacter { lafayette, jefferson }

class DeliveryTimeWidget extends StatefulWidget {
  const DeliveryTimeWidget({Key? key}) : super(key: key);

  @override
  State<DeliveryTimeWidget> createState() => _DeliveryTimeWidgetState();
}

class _DeliveryTimeWidgetState extends State<DeliveryTimeWidget> {
  String? gender1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        height: 158,
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text(
                "Время доставка ",
                style: ThemeTextStyles.appTitle,
              ),
            ),
            ListTile(
              leading: Image.asset("assets/png/motorbike.png"),
              title: const Text('Срочная доставка'),
              trailing: Radio(
                activeColor: ThemeColors.primary,
                value: "Да",
                groupValue: gender1,
                onChanged: (value) {
                  setState(() {
                    gender1 = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset("assets/png/on-time.png"),
              title: const Text('Доставка по расписанию'),
              trailing: Radio(
                activeColor: ThemeColors.primary,
                value: "Нет",
                groupValue: gender1,
                onChanged: (value) {
                  setState(() {
                    gender1 = value.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
