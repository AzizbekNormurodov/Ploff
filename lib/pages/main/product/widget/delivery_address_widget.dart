import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

class DeliveryAddressWidget extends StatefulWidget {
  const DeliveryAddressWidget({Key? key}) : super(key: key);

  @override
  State<DeliveryAddressWidget> createState() => _DeliveryAddressWidgetState();
}

class _DeliveryAddressWidgetState extends State<DeliveryAddressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding:
                EdgeInsets.only(top: 29, left: 16, right: 16, bottom: 8),
            child: Text(
              "Адрес доставки",
              style: ThemeTextStyles.status,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: Container(
              height: 48,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
                child: Text(
                  "Бешкайрагач 12",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    width: 109,
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.only(left: 16, top: 12, bottom: 12),
                      child: Text(
                        "Подъезд",
                        style: ThemeTextStyles.adress,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 48,
                    width: 109,
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.only(left: 16, top: 12, bottom: 12),
                      child: Text(
                        "Этаж",
                        style: ThemeTextStyles.adress,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    height: 48,
                    width: 109,
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.only(left: 16, top: 12, bottom: 12),
                      child: Text(
                        "Квартира",
                        style: ThemeTextStyles.adress,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: Container(
              height: 48,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
                child: Text("Ориентир", style: ThemeTextStyles.adress),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              height: 48,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
                child: Text("Название адреса", style: ThemeTextStyles.adress),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Подтвердить"),
            ),
          ),
        ],
      ),
    );
  }
}
