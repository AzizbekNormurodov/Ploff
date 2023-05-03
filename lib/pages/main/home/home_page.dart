import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:ploff/pages/main/home/widget/discount_widget.dart';
import 'package:ploff/pages/main/home/widget/popular_widget.dart';
import 'package:ploff/pages/main/home/widget/recommendations_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();

  List<String> titleList = ["Популярные блюда", "Плов", "Шашлык", "Чайханский плов"];
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: const [
              Icon(
                Icons.location_on_outlined,
                size: 18,
                color: ThemeColors.black2,
              ),
              Text(
                "Массив Бешягач 19/30",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: ThemeColors.black1),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: ThemeColors.black5,
                size: 20,
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffF5F5F5),
                      hintStyle: TextStyle(color: Color(0xff9AA6AC)),
                      hintText: 'Поиск по всей еде',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isSelected = index;
                                   });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    color: isSelected == index
                                        ? ThemeColors.primary
                                        : const Color(0xffF5F5F5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 10,
                                        bottom: 10),
                                    child: Text(
                                      titleList[index],
                                      style: ThemeTextStyles.setting,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  width: 375,
                  height: 204,
                  color: Colors.white,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      Center(
                        child: Image.asset(
                          "assets/png/rasm.png",
                          width: 343,
                          height: 160,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/png/rasm.png",
                          width: 343,
                          height: 160,
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/png/rasm.png",
                          width: 343,
                          height: 160,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // SliverToBoxAdapter(
            //   child: Image.asset(
            //     "assets/png/ploff.png",
            //     fit: BoxFit.fill,
            //   ),
            // ),
            const DiscountWidget(),
            const PopularWidget(),
            const RecommendationsWidget(),
          ],
        ),
      ),
    );
  }
}
