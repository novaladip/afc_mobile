import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes.dart';
import 'config/config.dart';
import 'auth/auth.dart';
import 'profile/profile.dart';
import 'student/student.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ...authBlocProvider,
        ...studentBlocProvider,
        ...profileBlocProvider,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AFC',
        theme: Styles.lightTheme,
        initialRoute: "/",
        routes: buildRoutes(),
      ),
    );
  }
}
