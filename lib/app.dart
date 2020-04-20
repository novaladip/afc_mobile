import 'package:flutter/material.dart';
import 'package:afc_mobile/bloc_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/config/config.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProvider,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AFC',
        theme: Style.lightTheme,
        routes: buildRoutes(),
        initialRoute: "/",
      ),
    );
  }
}
