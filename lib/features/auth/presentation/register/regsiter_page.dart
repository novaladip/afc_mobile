import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation.dart';
import 'bloc/register_bloc.dart';
import 'widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state is RegisterStateSuccess) {
            Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
          }
        },
        builder: (context, state) {
          final size = MediaQuery.of(context).size;
          return Stack(
            children: <Widget>[
              Image.asset(
                'assets/register_background.png',
                height: size.height,
                width: size.width,
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(child: RegisterForm()),
                  RegisterFooter(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
