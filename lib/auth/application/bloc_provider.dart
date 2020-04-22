import 'package:afc_mobile/auth/application/application.dart';
import 'package:afc_mobile/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final List<BlocProvider> authBlocProvider = [
  BlocProvider<AuthBloc>(
    create: (_) => getIt<AuthBloc>()
      ..add(
        AuthEvent.appStarted(),
      ),
  ),
  BlocProvider<LoginBloc>(
    create: (_) => getIt<LoginBloc>(),
  ),
];
