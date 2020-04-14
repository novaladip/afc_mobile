import 'package:afc_mobile/features/auth/presentation/splash_screen/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../presentation.dart';
import 'widgets/widgets.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/';

  Widget buildFooter() {
    return Column(
      children: <Widget>[
        Text(
          'Absent Face Recognize',
          style: TextStyle(
            fontSize: 26,
            fontFamily: 'Pacifito',
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        SpinKitChasingDots(
          color: Colors.black,
          size: 40,
        ),
        SizedBox(height: 15),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthStateAuthentication) {
          // @TODO
        }

        if (state is AuthStateUnauthentication) {
          Future.delayed(Duration(milliseconds: 1500)).then((_) =>
              Navigator.of(context).pushReplacementNamed(LoginPage.routeName));
        }
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset(
              'assets/splash_screen_background.png',
              height: size.height,
              width: size.width,
              fit: BoxFit.fitHeight,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RobotIcon(),
                buildFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
