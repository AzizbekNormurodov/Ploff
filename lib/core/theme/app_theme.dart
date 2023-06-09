import 'package:flutter/material.dart';
import 'theme_colors.dart';
import 'theme_text_styles.dart';

final lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: ThemeColors.primary,
    scaffoldBackgroundColor: ThemeColors.backgroundColor,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    appBarTheme: AppBarTheme(
      shadowColor: Colors.black.withOpacity(0.2),
      backgroundColor: ThemeColors.white,
      surfaceTintColor: ThemeColors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: ThemeTextStyles.appTitle,
      elevation: 0,
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Color(0xff303940),
      indicatorColor: ThemeColors.primary,
      labelColor: ThemeColors.primary,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      backgroundColor: ThemeColors.white,
      selectedItemColor: ThemeColors.primary,
      unselectedItemColor: Color(0xff9AA6AC),
      selectedIconTheme: IconThemeData(
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        size: 24,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Color(0xff9AA6AC),
      ),
      elevation: 3,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(ThemeColors.primary),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        minimumSize: MaterialStatePropertyAll(
          Size(double.infinity, 48),
        ),
        maximumSize: MaterialStatePropertyAll(
          Size(double.infinity, 48),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: ThemeColors.backgroundColor,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        // borderSide: BorderSide(
        //   color: Colors.transparent,
        //   width: 1,
        // ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.0),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        // borderSide: BorderSide(
        //   color: Colors.transparent,
        //   width: 1,
        // ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(
          color: ThemeColors.primary,
          width: 0,
        ),
      ),
      labelStyle: TextStyle(
        color: ThemeColors.grey,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        color: ThemeColors.grey,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: const TextTheme(
        bodyText1: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
    )));
