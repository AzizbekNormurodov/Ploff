import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/core/widget/counter_widget.dart';

class AdditivesToWidget extends StatefulWidget {
  const  AdditivesToWidget({Key? key}) : super(key: key);

  @override
  State< AdditivesToWidget> createState() => AdditivesWidgetState();
}

class AdditivesWidgetState extends State< AdditivesToWidget> {
String? gender1;
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only( bottom: 16),
    child: Container(
      width: double.infinity,
      height: 102,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.only(top: 16, left: 16),
            child:
                Text("Добавки к плову", style: ThemeTextStyles.appTitle,),
          ),
          RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            activeColor: ThemeColors.primary,
            title: const Text(
              "Яйцо*",
              style: ThemeTextStyles.features,
            ),
            value: "Яйцо*",
            groupValue: gender1,
            onChanged: (value) {
              setState(() {
                gender1 = value.toString();
              });
            },
          ),
        ],
      ),
    ),
  );
}
}
class GroupWidget extends StatefulWidget {
  const GroupWidget({Key? key}) : super(key: key);

  @override
  State<GroupWidget> createState() => _GroupWidgetState();
}

class _GroupWidgetState extends State<GroupWidget> {
  String? gender1;
  String? gender2;
  String? gender3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 16),
      child: Container(
        width: double.infinity,
        height: 434,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding:  EdgeInsets.only(top: 16, left: 16),
              child:
              Text("Гуруппа модефикаторов", style: ThemeTextStyles.appTitle,),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.primary,
              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Яйцо*",
                    style: ThemeTextStyles.features,
                  ),
                  Text("0 sum", style: ThemeTextStyles.adress,),
                ],
              ), 
              value: "Яйцо*",
              groupValue: gender1,
              onChanged: (value) {
                setState(() {
                  gender1 = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.primary,
              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Томат",
                    style: ThemeTextStyles.features,
                  ),
                  Text("+500 sum", style: ThemeTextStyles.adress,),
                ],
              ),
              value: "Томат",
              groupValue: gender1,
              onChanged: (value) {
                setState(() {
                  gender1 = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.primary,
              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Пакет ",
                    style: ThemeTextStyles.features,
                  ),
                  Text("20 000 sum", style: ThemeTextStyles.adress,),
                ],
              ),
              value: "Томат",
              groupValue: gender2,
              onChanged: (value) {
                setState(() {
                  gender2 = value.toString();
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: CounterWidget(),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.primary,
              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Томат",
                    style: ThemeTextStyles.features,
                  ),
                  Text("+500 sum", style: ThemeTextStyles.adress,),
                ],
              ),
              value: "Томат",
              groupValue: gender2,
              onChanged: (value) {
                setState(() {
                  gender2 = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.primary,
              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Томат",
                    style: ThemeTextStyles.features,
                  ),
                  Text("+500 sum", style: ThemeTextStyles.adress,),
                ],
              ),
              value: "Томат",
              groupValue: gender3,
              onChanged: (value) {
                setState(() {
                  gender3 = value.toString();
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              activeColor: ThemeColors.primary,
              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Лука",
                    style: ThemeTextStyles.features,
                  ),
                  Text("+500 sum", style: ThemeTextStyles.adress,),
                ],
              ),
              value: "Томат",
              groupValue: gender3,
              onChanged: (value) {
                setState(() {
                  gender3 = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}