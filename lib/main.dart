import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'injection.dart';

void main() async {
  await setUp();
  runApp(App());
}

Future<void> setUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]);
}
