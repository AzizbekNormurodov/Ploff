import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ploff/core/theme/theme_colors.dart';
import 'package:ploff/core/theme/theme_text_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widget/data_widget.dart';


class EditProfilePage extends StatefulWidget {
   EditProfilePage({Key? key}) : super(key: key);


  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController birthdaycontroller = TextEditingController();
   String Key_name = "key_name";
   String Key_phone = "key_phone";
   String Key_birthday = "key_birthday";


   void _loadCounter() async {
     final prefs = await SharedPreferences.getInstance();
     setState(() {
       namecontroller.text = prefs.getString(Key_name)??"";
       phonecontroller.text = prefs.getString(Key_phone)??"";
       birthdaycontroller.text = prefs.getString(Key_birthday)??"";
     });
   }
   void _textSave () async {
     final prefs = await SharedPreferences.getInstance();
     prefs.setString(Key_name, namecontroller.text);
     prefs.setString(Key_phone, phonecontroller.text);
     prefs.setString(Key_birthday, birthdaycontroller.text);
   }
  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: const Text("Редактировать профиль"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          height: 292,
          width: double.infinity,
          decoration: const BoxDecoration( color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 4 ),
                child: Text(
                  "Имя",
                  style: ThemeTextStyles.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField( controller: namecontroller,
                  style: ThemeTextStyles.inputname,
                  decoration: const InputDecoration(
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
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 4),
                child: Text(
                  "Номер телефона",
                  style: ThemeTextStyles.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField( controller: phonecontroller,
                  style: ThemeTextStyles.inputname,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "+99893 564 92 29", hintStyle: TextStyle(color: ThemeColors.black3),
                      fillColor: Color(0xffF5F5F5),
                      labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      )),
                  // controller: cpfcontroller,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 4),
                child: Text(
                  "Ваш дата рождения",
                  style: ThemeTextStyles.name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextFormField( controller: birthdaycontroller,
                  style: ThemeTextStyles.inputname,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(suffixIcon: InkWell( onTap: (){
                    showModalBottomSheet(
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (_) {
                          return const DateWidget(
                              text: "Дата рождения", mode: CupertinoDatePickerMode.date);
                        });
                  },
                      child: const Icon(Icons.calendar_today_outlined),),
                      hintText: "11.09.1991", hintStyle: const TextStyle(color: ThemeColors.black1),
                      fillColor: const Color(0xffF5F5F5),
                      labelStyle: const TextStyle(fontSize: 10, color: Colors.black),
                      border: const OutlineInputBorder(
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
        child: ElevatedButton(onPressed: _textSave,child: const Text("Сохранить"),),
      ),
    );
  }
}
