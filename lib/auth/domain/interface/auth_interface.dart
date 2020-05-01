import 'package:afc_mobile/auth/domain/entity/entity.dart';

abstract class AuthInterface {
  Future<String> getAccessToken(LoginDto dto);
  Future<void> register(RegisterDto dto, bool teacher);
  Future<void> persistToken(String token);
  Future<void> removeToken();
  String getToken();
  void setDefaultAuthHeader(String token);
}
