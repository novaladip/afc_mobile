import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation.dart';
import 'widgets/widgets.dart';
import 'package:afc_mobile/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:afc_mobile/features/auth/presentation/splash_screen/bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthStateAuthenticated) {
            Navigator.of(context)
                .pushReplacementNamed(AuthenticatedPage.routeName);
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
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
      ),
    );
  }
}
