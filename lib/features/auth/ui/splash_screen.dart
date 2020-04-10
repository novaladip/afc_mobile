import 'package:afc_mobile/features/teacher/teacher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:afc_mobile/features/auth/auth.dart';
import 'package:afc_mobile/features/intro/intro.dart';
import 'package:afc_mobile/features/student/student.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthAuthenticated) {
            if (state.user.role == "STUDENT") {
              Navigator.of(context)
                  .pushReplacementNamed(BottomAppStudent.routeName);
            } else {
              Navigator.of(context)
                  .pushReplacementNamed(HomeScreenTeacher.routeName);
            }
          }

          if (state is AuthUnauthenticated) {
            Navigator.of(context).pushReplacementNamed(IntroPage.routeName);
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitDoubleBounce(size: 100, color: Colors.blue),
                  SizedBox(height: 20),
                  Text("Initializing", style: TextStyle(fontSize: 20)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
