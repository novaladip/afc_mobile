import 'dart:convert';

import 'package:afc_mobile/features/auth/models/models.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthService {
  String getToken();
  Future<void> persistToken(String token);
  Future<void> removeToken();
  JwtPayload decodeToken(String token);
}

class AuthServiceImpl implements AuthService {
  final tokenKey = 'jwt';
  final SharedPreferences _sharedPreferences;

  const AuthServiceImpl(this._sharedPreferences);

  @override
  String getToken() {
    final token = _sharedPreferences.getString(tokenKey);
    return token;
  }

  @override
  Future<void> persistToken(String token) async {
    await _sharedPreferences.setString(tokenKey, token);
  }

  @override
  Future<void> removeToken() async {
    await _sharedPreferences.remove(tokenKey);
  }

  @override
  JwtPayload decodeToken(String token) {
    final parts = token.split(".");
    final payload = parts[1];
    final decoded = B64urlEncRfc7515.decodeUtf8(payload);
    final parsedPayload = json.decode(decoded);
    return JwtPayload(
      exp: parsedPayload['exp'],
      id: parsedPayload['identity']['id'],
      email: parsedPayload['identity']['email'],
      role: parsedPayload['identity']['role'],
    );
  }
}
