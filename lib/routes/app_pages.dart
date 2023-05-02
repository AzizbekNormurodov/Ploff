import 'package:flutter/material.dart';
import 'package:ploff/pages/main/%D1%81heckout/checkout_page.dart';
import 'package:ploff/pages/main/basket/basket_empty_page.dart';
import 'package:ploff/pages/main/basket/basket_page.dart';
import 'package:ploff/pages/main/my_orders/active_order_page.dart';
import 'package:ploff/pages/main/my_orders/history_order_oage.dart';
import 'package:ploff/pages/main/product/product_page.dart';
import 'package:ploff/pages/main/profile/about_service/about_service_page.dart';
import 'package:ploff/pages/main/profile/edit_profile/edit_profile_page.dart';
import 'package:ploff/pages/main/profile/filial/filial_page.dart';
import 'package:ploff/pages/main/profile/filial/yunusobod_filial_page.dart';
import 'package:ploff/pages/main/profile/my_addresses/adress/adress_page.dart';
import 'package:ploff/pages/main/profile/my_addresses/my_adress_page.dart';
import 'package:ploff/pages/main/profile/profile_page.dart';
import 'package:ploff/pages/main/profile/settings/settings_page.dart';
import 'package:ploff/pages/main/sign_up/details_page.dart';
import 'package:ploff/pages/main/sign_up/pin_code_page.dart';
import 'package:ploff/pages/splash/language_page.dart';

import '../pages/main/main_page.dart';
import '../pages/main/sign_up/sign_up.dart';
import '../pages/splash/splash_page.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final Map<String, WidgetBuilder> routes = {
    AppRoutes.initial: (context) => const SplashPage(),
    AppRoutes.signup: (context) => SignUpPage(),
    AppRoutes.main: (context) =>  MainPage(),
    AppRoutes.details: (context) =>  DetailsPage(),
    AppRoutes.pincode: (context) =>  PinCodePage(),
    AppRoutes.language: (context) => LanguagePage(),
    AppRoutes.product: (context) => ProductPage(),
    AppRoutes.basket_empty: (context) => BasketEmptyPage(),
    AppRoutes.basket: (context) => BasketPage(),
    AppRoutes.checkout: (context) => CheckoutPage(),
    AppRoutes.profile: (context) => ProfilePage(),
    AppRoutes.active_order: (context) => ActiveOrderPage(),
    AppRoutes.history_order: (context) => HistoryOrderPage(),
    AppRoutes.about_service: (context) => AboutServicePage(),
    AppRoutes.edit_profile: (context) => EditProfilePage(),
    AppRoutes.filial: (context) => FilialPage(),
    AppRoutes.my_adress: (context) => MyAdressPage(),
    AppRoutes.settings: (context) => SettingsPage(),
    AppRoutes.yunusobod_filial: (context) {
      var arg=ModalRoute.of(context)!.settings.arguments as ArgObject;
      return  YunusobodFilialPage(title: arg.title, image: arg.image,);
    },
    AppRoutes.adress: (context) => AdressPage(),



  };
}
