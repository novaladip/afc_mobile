import 'package:afc_mobile/features/register/register.dart';
import 'package:afc_mobile/routes.dart';
import 'package:afc_mobile/styles.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/features/intro/intro.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injector_container.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>(
          create: (context) => sl<RegisterBloc>(),
        )
      ],
      child: MaterialApp(
        title: 'AFC',
        theme: Styles.theme,
        home: IntroPage(),
        routes: buildRoutes(),
      ),
    );
  }
}
