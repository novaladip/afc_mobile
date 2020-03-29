import 'package:afc_mobile/intro.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AFC',
      theme: ThemeData(fontFamily: 'Pacifito'),
      home: IntroScreen(),
    );
  }
}
