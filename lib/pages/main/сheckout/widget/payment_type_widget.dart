import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

class PaymentTypeWidget extends StatefulWidget {
  const PaymentTypeWidget({Key? key}) : super(key: key);

  @override
  State<PaymentTypeWidget> createState() => _PaymentTypeWidgetState();
}

class _PaymentTypeWidgetState extends State<PaymentTypeWidget> {
  String? gender1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        height: 214,
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
                "Тип оплаты",
                style: ThemeTextStyles.appTitle,
              ),
            ),
            ListTile(
              leading: Image.asset("assets/png/Group.png"),
              title: const Text('Наличные'),
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
              leading: Image.asset("assets/png/payme.png"),
              title: const Text('Payme'),
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
            ListTile(
              leading: Image.asset("assets/png/click logo.png"),
              title: const Text("Cilic"),
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
          ],
        ),
      ),
    );
  }
}
