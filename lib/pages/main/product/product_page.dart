import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/product/widget/bottomsheet_widget.dart';
import 'package:ploff/pages/main/product/widget/recommended_widget.dart';

import 'widget/additives_widget.dart';
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
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers:[
          SliverToBoxAdapter(
            child: Container(
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
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
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


          ),
          const SliverToBoxAdapter(child: ProductWidget()),
          const SliverToBoxAdapter(child: SizeWidget()),
          const SliverToBoxAdapter(child: AdditivesToWidget()),
          const SliverToBoxAdapter(child: GroupWidget()),
          const SliverToBoxAdapter(child: RecommendedWidget(),),
          SliverToBoxAdapter(child: Image.asset("assets/png/counter.png"),),

        ]
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const BottomSheetWidget();
              },
            );
          },
          child: const Text("Добавить в корзину "),
        ),
      ),
    );
  }
}
