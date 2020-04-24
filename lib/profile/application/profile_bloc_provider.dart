import 'package:flutter_bloc/flutter_bloc.dart';

import 'application.dart';
import 'package:afc_mobile/injection.dart';

final List<BlocProvider> profileBlocProvider = [
  BlocProvider<ProfileBloc>(
    create: (_) => getIt<ProfileBloc>(),
  ),
];
