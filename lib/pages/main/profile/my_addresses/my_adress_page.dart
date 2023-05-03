import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/routes/app_routes.dart';


class MyAdressPage extends StatelessWidget {
  const MyAdressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Мои адреса",
          style: ThemeTextStyles.appTitle,
        ),
      ),
      body: Column(
        children: [
          GestureDetector( onTap: (){
            Navigator.pushNamed(context, AppRoutes.adress);
          },
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                width: double.infinity,
                height: 64,
                decoration: const BoxDecoration( color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset("assets/png/locat.png"),
                        ),
                        Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 11),
                              child: Text("Работа"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 11),
                              child: Text("Ойбек 20/45", style: ThemeTextStyles.setting,),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Image.asset("assets/png/Edit.png")
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector( onTap: (){
            Navigator.pushNamed(context, AppRoutes.adress);
          },
            child: Container(
              width: double.infinity,
              height: 64,
              decoration: const BoxDecoration( color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset("assets/png/locat.png"),
                      ),
                      Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 11),
                            child: Text("Дом"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 11),
                            child: Text("Бешягач, Массив 19/30", style: ThemeTextStyles.setting,),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Image.asset("assets/png/Edit.png")
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}

