import 'package:flutter/material.dart';
import 'package:life_hero/login.dart';
import 'package:life_hero/mainpage.dart';
import 'package:life_hero/register.dart';
import 'package:life_hero/request.dart';

class Approuters {
  static const HOME_PAGE = "/mainpage.dart";
  static const LOGIN_PAGE = "/login";
  static const REQUEST_PAGE = "/request";
  static const REGISTER_PAGE =
      "/register"; //<dynamic> we dont know the data type it will judge automatically
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Approuters.LOGIN_PAGE:
        return MaterialPageRoute(builder: (c) {
          return LoginPage();
        });

      case Approuters.REQUEST_PAGE:
        return MaterialPageRoute(builder: (c) {
          return RequestPage();
        });
      case Approuters.REGISTER_PAGE:
        return MaterialPageRoute(builder: (c) {
          return RegisterPage();
        });
    }

    return MaterialPageRoute(builder: (c) {
      return MainPage();
    });
  }
}
