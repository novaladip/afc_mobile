import 'package:afc_mobile/config/config.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:afc_mobile/common/common.dart';

@injectable
class AuthLocalDataSource {
  final SharedPreferences sharedPreferences;
  final Api api;

  AuthLocalDataSource({
    @required this.sharedPreferences,
    @required this.api,
  });

  String getToken() {
    final token = sharedPreferences.getString(Env.jwtKey);
    return token;
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
