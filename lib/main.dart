import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'config/config.dart';

void main() async {
  await setUp();
  runApp(App());
}

Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Env.development);
  BlocSupervisor.delegate = SimpleBlocDelegate();
  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]);
}
