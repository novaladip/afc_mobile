import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'simple_bloc_delegate.dart';

void main() async {
  WidgetsFlutterBinding();

  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]);

  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(App());
}
