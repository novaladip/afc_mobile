import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/login_form.dart';
import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/common/role/role.dart';

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
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {}, // Nothing to do here.
            authenticated: (user) {
              if (user.role == Role.student) {
                Navigator.of(context)
                    .pushReplacementNamed(StudentPage.routeName);
              }
            },
          );
        },
        child: Stack(
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
      ),
    );
  }
}
