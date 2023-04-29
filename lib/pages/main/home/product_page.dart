import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/home/widget/prodect_bottomsheet_widget.dart';

import 'widget/product_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  "assets/png/product.png",
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 240,
                ),
                Positioned(
                  top: 231,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: 168,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Плов",
                            style: ThemeTextStyles.text2,
                          ),
                          Text(
                            "Своим именем чайханский плов обязан старой \nташкентской традиции «ош», когда мужчины \nсобираются по четвергам в чайхане собственно \n«на ош», что означает «на плов».",
                            style: ThemeTextStyles.features,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ProductWidget(),
          Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration( color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      children: [
                        Text("Размер", style: ThemeTextStyles.appTitle,),
                        Text("*", style: TextStyle(color: Colors.red),),
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/png/plus.png", width: 113, height: 44),
                      Text("47 000 сум", style: ThemeTextStyles.appTitle,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton (onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return BottomSheetWidget();
            },
          );
        },
         child: Text("Добавить в корзину "),),
      ),
    );
  }
}
