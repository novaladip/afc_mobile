import 'package:afc_mobile/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/config/config.dart';
import 'package:afc_mobile/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ...authBlocProvider,
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
