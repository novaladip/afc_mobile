import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/role/role.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
            initial: () => null,
            unauthentication: () async {
              await Future.delayed(Duration(seconds: 1));
              Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
            },
            authenticated: (user) async {
              await Future.delayed(Duration(seconds: 1));

              if (user.role.toLowerCase() == Role.student) {
                Navigator.of(context)
                    .pushReplacementNamed(StudentPage.routeName);
                return;
              } else {
                Navigator.of(context)
                    .pushReplacementNamed(TeacherPage.routeName);
              }
            },
          );
        },
        builder: (context, state) {
          final size = MediaQuery.of(context).size;

          return Stack(
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
                  Spacer(),
                  Text(
                    'Absent Face Recognition',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.black),
                  ),
                  Spacer(),
                  SpinKitChasingDots(
                    color: Colors.black,
                    size: 40,
                  ),
                  SizedBox(height: 50),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
