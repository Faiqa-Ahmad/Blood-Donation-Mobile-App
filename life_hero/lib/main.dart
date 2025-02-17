import 'package:flutter/material.dart';
import 'package:life_hero/dashboard.dart';
import 'package:life_hero/login.dart';
import 'package:life_hero/mainpage.dart';
import 'package:life_hero/register.dart';
import 'package:life_hero/request.dart';
import 'package:life_hero/routes/approuters.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: Approuters.HOME_PAGE,
      onGenerateRoute: Approuters.generateRoute,
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

void main() {
  runApp(MyHome());
}
