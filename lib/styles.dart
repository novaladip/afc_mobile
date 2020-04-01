import 'package:flutter/material.dart';

class Styles {
  static final ThemeData theme = ThemeData(
    primaryColor: Color(0XFF0069FF),
    fontFamily: 'Comic Neue',
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
  );
}
