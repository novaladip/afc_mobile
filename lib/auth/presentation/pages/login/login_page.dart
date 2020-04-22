import 'package:flutter/material.dart';

import 'widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/login_background.png',
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          LoginForm(),
        ],
      ),
    );
  }
}
