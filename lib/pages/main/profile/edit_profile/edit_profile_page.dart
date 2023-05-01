import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';

import 'widget/data_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: Text("Редактировать профиль"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          height: 292,
          width: double.infinity,
          decoration: BoxDecoration( color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 4 ),
                child: Text(
                  "Имя",
                  style: ThemeTextStyles.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField(
                  style: ThemeTextStyles.inputname,
                  decoration: InputDecoration(
                    hintText: 'Усмонов Акбар',
                      hintStyle: TextStyle(color: ThemeColors.black1),
                      fillColor: Color(0xffF5F5F5),
                      labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      )),
                  // controller: cpfcontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 4),
                child: Text(
                  "Номер телефона",
                  style: ThemeTextStyles.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField(
                  style: ThemeTextStyles.inputname,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "+99893 564 92 29", hintStyle: TextStyle(color: ThemeColors.black3),
                      fillColor: Color(0xffF5F5F5),
                      labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      )),
                  // controller: cpfcontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 4),
                child: Text(
                  "Ваш дата рождения",
                  style: ThemeTextStyles.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField(
                  style: ThemeTextStyles.inputname,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(suffixIcon: InkWell( onTap: (){
                    showModalBottomSheet(
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (_) {
                          return DateWidget(
                              text: "Дата рождения", mode: CupertinoDatePickerMode.date);
                        });
                  },
                      child: Icon(Icons.calendar_today_outlined),),
                      hintText: "11.09.1991", hintStyle: TextStyle(color: ThemeColors.black1),
                      fillColor: Color(0xffF5F5F5),
                      labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),),
                  // controller: cpfcontroller,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: ElevatedButton(onPressed: (){},child: Text("Сохранить"),),
      ),
    );
  }
}
