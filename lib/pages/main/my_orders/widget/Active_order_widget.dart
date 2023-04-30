import 'package:flutter/material.dart';
import 'package:ploff/routes/app_routes.dart';

class ActiveOrderWidget extends StatelessWidget {
  const ActiveOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.active_order);
              },
              child: Image.asset("assets/png/aktivzakas.png")),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 338, left: 111, right: 112),
          child: Image.asset(
            "assets/png/messanger.png",
            width: 152,
            height: 40,
          ),
        ),
      ],
    );
  }
}
