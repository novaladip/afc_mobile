import 'package:flutter/material.dart';

import 'widgets/register_form.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/register_background.png',
            height: size.height,
            width: size.width,
            fit: BoxFit.fitHeight,
          ),
          RegisterForm(),
        ],
      ),
    );
  }
}
