import 'package:afc_mobile/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:afc_mobile/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/config/config.dart';
import 'package:afc_mobile/features/auth/auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (_) => getIt<LoginBloc>(),
        ),
        BlocProvider<RegisterBloc>(
          create: (_) => getIt<RegisterBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AFC',
        theme: Style.lightTheme,
        routes: buildRoutes(),
        home: LoginPage(),
      ),
    );
  }
}
