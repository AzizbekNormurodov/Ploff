import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 466,
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
            EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
            child: Text(
              "Адрес доставки",
              style: ThemeTextStyles.appTitle,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, bottom: 4),
            child: Text("Текущий адрес", style: ThemeTextStyles.adress,),
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
            padding: const EdgeInsets.all(16.0),
            child: Image.asset("assets/png/map.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, bottom: 4),
            child: Text("Мои адреса", style: ThemeTextStyles.adress,),
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
        ],
      ),
    );
  }
}
