import 'package:afc_mobile/config/env.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:afc_mobile/common/api/api.dart';

@lazySingleton
class AuthLocalProvider {
  final SharedPreferences sharedPreferences;
  final Api api;

  AuthLocalProvider({
    @required this.sharedPreferences,
    @required this.api,
  });

  String getToken() {
    return sharedPreferences.getString(Env.jwtKey);
  }

  Future<void> persistToken(String token) async {
    await sharedPreferences.setString(Env.jwtKey, token);
  }

  Future<void> removeToken() async {
    await sharedPreferences.remove(Env.jwtKey);
  }

  void setDefaultAuthHeader(String token) {
    api.setDefaultAuthHeader(token);
  }
}
