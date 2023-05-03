import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

class ChequeWidget extends StatelessWidget {
  const ChequeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        width: double.infinity,
        height: 196,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12),), color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text("Чек", style: ThemeTextStyles.appTitle,),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Чайханский плов х1", style: ThemeTextStyles.adress,),
                    Text("55 000 сум", style: ThemeTextStyles.adress,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:16 ),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Свадебный плов х2", style: ThemeTextStyles.adress,),
                    Text("55 000 сум", style: ThemeTextStyles.adress,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Доставка", style: ThemeTextStyles.adress,),
                    Text("55 000 сум", style: ThemeTextStyles.adress,),
                  ],
                ),
              ),

              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Общая сумма", style: ThemeTextStyles.appTitle,),
                  Text("95 000 сум", style: ThemeTextStyles.appTitle,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
