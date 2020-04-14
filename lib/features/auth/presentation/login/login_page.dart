import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';
import 'package:afc_mobile/features/auth/presentation/login/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          final size = MediaQuery.of(context).size;
          return Stack(
            children: <Widget>[
              Image.asset(
                'assets/login_background.png',
                height: size.height,
                width: size.width,
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(child: LoginForm()),
                  LoginFooter(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
