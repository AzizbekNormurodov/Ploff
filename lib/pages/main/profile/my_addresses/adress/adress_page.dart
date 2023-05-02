import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/product/widget/delivery_address_widget.dart';

class AdressPage extends StatelessWidget {
  const AdressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 812,
        child: Stack(
          children: [
            Image.asset("assets/png/image_map.png"),
            const Positioned( top: 88, left: 104, right: 105,
                child: Text("Учтепа Район \nБешкайрагач 12", style: ThemeTextStyles.text2, textAlign: TextAlign.center,)),
            const Positioned(bottom: 0, right: 0, left: 0,
                child: DeliveryAddressWidget()),

          ],
        ),
      ),
    );
  }
}
