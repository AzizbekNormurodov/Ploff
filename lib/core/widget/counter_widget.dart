import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            if (number == 0) {
              return;
            }
            number--;
            setState(() {});
          },
          style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(44, 44)),
              backgroundColor: MaterialStatePropertyAll(Color(0xffF6F8FB))),
          child: const Text(
            "-",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Text("$number"),
        ),
        ElevatedButton(
          onPressed: () {
            number++;
            setState(() {});
          },
          style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(44, 44)),
              backgroundColor: MaterialStatePropertyAll(Color(0xffF6F8FB))),
          child: const Text(
            "+",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
