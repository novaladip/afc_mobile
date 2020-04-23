import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes.dart';
import 'config/config.dart';
import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/student/student.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ...authBlocProvider,
        ...studentBlocProvider,
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
