import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/pages/main/home/widget/discount_widget.dart';
import 'package:ploff/pages/main/home/widget/popular_widget.dart';
import 'package:ploff/pages/main/home/widget/recommendations_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
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
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(150),
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xffF5F5F5),
                    hintStyle: TextStyle(color: Color(0xff9AA6AC)),
                    hintText: 'Поиск по всей еде',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Image.asset(
                "assets/png/ploff.png",
                fit: BoxFit.fill,
              ),
            ),
            const DiscountWidget(),
            const PopularWidget(),
            const RecommendationsWidget(),
          ],
        ),
      ),
    );
  }
}
