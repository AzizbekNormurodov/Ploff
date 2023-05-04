import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
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
            padding: EdgeInsets.only(top: 29, left: 16, right: 16, bottom: 8),
            child: Text(
              "Адрес доставки",
              style: ThemeTextStyles.status,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: TextFormField(
              style: ThemeTextStyles.inputname,
              decoration: const InputDecoration(
                  hintText: 'Бешкайрагач 12',
                  hintStyle: TextStyle(color: ThemeColors.black1),
                  fillColor: Color(0xffF5F5F5),
                  labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
              // controller: cpfcontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: ThemeTextStyles.inputname,
                    decoration: const InputDecoration(
                        hintText: 'Подъезд',
                        hintStyle: ThemeTextStyles.adress,
                        fillColor: Color(0xffF5F5F5),
                        labelStyle:
                            TextStyle(fontSize: 10, color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),
                    // controller: cpfcontroller,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    style: ThemeTextStyles.inputname,
                    decoration: const InputDecoration(
                        hintText: 'Этаж',
                        hintStyle: ThemeTextStyles.adress,
                        fillColor: Color(0xffF5F5F5),
                        labelStyle:
                            TextStyle(fontSize: 10, color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),
                    // controller: cpfcontroller,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextFormField(
                    style: ThemeTextStyles.inputname,
                    decoration: const InputDecoration(
                        hintText: 'Квартира',
                        hintStyle: ThemeTextStyles.adress,
                        fillColor: Color(0xffF5F5F5),
                        labelStyle:
                            TextStyle(fontSize: 10, color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),
                    // controller: cpfcontroller,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: TextFormField(
              style: ThemeTextStyles.inputname,
              decoration: const InputDecoration(
                  hintText: 'Ориентир',
                  hintStyle: ThemeTextStyles.adress,
                  fillColor: Color(0xffF5F5F5),
                  labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
              // controller: cpfcontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextFormField(
              style: ThemeTextStyles.inputname,
              decoration: const InputDecoration(
                  hintText: 'Название адреса',
                  hintStyle: ThemeTextStyles.adress,
                  fillColor: Color(0xffF5F5F5),
                  labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
              // controller: cpfcontroller,
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
