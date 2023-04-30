import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/routes/app_routes.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 19,
      ),
      child: InkWell(
          onTap: () { showDialog(
            context: context,
            builder: (context) {
              return Theme( data: ThemeData(backgroundColor: Colors.white),
                child: AlertDialog(
                  title: Text(
                    textAlign: TextAlign.center,
                    'Очистить корзину?',
                    style: ThemeTextStyles.status,
                  ),
                  content: Text( textAlign: TextAlign.center,
                    'Вы уверены, что хотите \nочистить корзину?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: ThemeColors.black3),
                  ),
                  actions: [
                    ElevatedButton( style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(8)),
                      minimumSize: Size(120, 42),
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge,backgroundColor: Color(0xffF2F2F2),
                    ),
                      onPressed: (){
                      Navigator.pop(context);
                      }, child: Text("Нет", style: ThemeTextStyles.order2,),),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(8)),
                      minimumSize: Size(120, 42),
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge, backgroundColor: ThemeColors.primary,
                    ),
                      onPressed: (){
                      Navigator.pushNamed(context, AppRoutes.basket_empty);
                      }, child: Text("Да", style: ThemeTextStyles.order2,),),

                  ], backgroundColor: Colors.white,
                ),
              );
            },);
          }, child: Image.asset("assets/png/Recycle Bin.png")),
    );
  }
}
