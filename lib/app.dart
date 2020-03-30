import 'package:afc_mobile/routes.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/features/intro/intro.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AFC',
      theme: ThemeData(
        primaryColor: Color(0XFF0069FF),
        fontFamily: 'Pacifito',
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: TextStyle(
              fontFamily: 'Comic Neue',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        textTheme: TextTheme(
          body1: TextStyle(fontFamily: 'Comic Neue', fontSize: 14),
          caption: TextStyle(fontFamily: 'Comic Neue', fontSize: 12),
          title: TextStyle(fontFamily: 'Pacifito', fontSize: 24),
        ),
        buttonTheme: ButtonThemeData().copyWith(
          buttonColor: Color(0XFF0069FF),
          splashColor: Color(0XFFB9C8FF),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: IntroPage(),
      routes: buildRoutes(),
    );
  }
}
