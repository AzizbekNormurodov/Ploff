import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({Key? key,required this.text, required this.mode}) : super(key: key);
  final String text;
  final   CupertinoDatePickerMode mode;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600,),
            // style: context.text.boldTitle,
          ),
        ),
        SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode: mode,
            use24hFormat: true,
            onDateTimeChanged: (value) {
            },
            initialDateTime: DateTime(
              DateTime.now().year,
            ),
            minimumDate: DateTime(
              DateTime.now().year,
            ),
            maximumDate: DateTime(2096),
            backgroundColor: Colors.white,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Выбрать"),
            ),
          ),
        ),
      ],
    );
  }
}