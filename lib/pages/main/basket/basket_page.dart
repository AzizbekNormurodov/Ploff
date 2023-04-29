import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/basket/widget/basket_widget.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Корзина",
          style: ThemeTextStyles.status,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
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
                                onPressed: (){}, child: Text("Нет", style: ThemeTextStyles.order2,),),
                              ElevatedButton(style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(8)),
                                minimumSize: Size(120, 42),
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .labelLarge, backgroundColor: ThemeColors.primary,
                              ),
                                onPressed: (){}, child: Text("Да", style: ThemeTextStyles.order2,),),

                            ], backgroundColor: Colors.white,
                          ),
                        );
                      },);
                }, child: Image.asset("assets/png/Recycle Bin.png")),
          ),
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Image.asset("assets/png/card.png"),
            ),
          ),
          SliverToBoxAdapter(
            child: Image.asset("assets/png/card_ploff.png"),
          ),
          SliverToBoxAdapter(
            child: Image.asset("assets/png/card_ploff2.png"),
          ),
          SliverToBoxAdapter(
            child: Image.asset("assets/png/Frame.png"),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                width: 375,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16,),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Комментарий", style: ThemeTextStyles.order2),
                      SizedBox(height: 10),
                      SizedBox( height: 48,
                        child: TextField( textAlign: TextAlign.start,
                          decoration: InputDecoration(counterStyle: TextStyle(color: Colors.green),
                            hintText: 'Напишите комментарий к заказу',
                            hintStyle: ThemeTextStyles.adress,
                            fillColor: Color(0xffF5F5F5),
                            enabledBorder: OutlineInputBorder( borderSide: BorderSide(width:0.0),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          BasketWidget(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            },
          child: const Text("Оформить заказ"),
        ),
      ),
    );
  }
}
