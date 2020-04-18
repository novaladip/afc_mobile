import 'package:afc_mobile/features/auth/domain/entities/login_dto.dart';
import 'package:afc_mobile/features/auth/domain/entities/register_dto.dart';

abstract class AuthInterface {
  Future<String> getAccessToken(LoginDto dto);
  Future<void> regiterStudent(RegisterDto dto);
  Future<void> registerTeaher(RegisterDto dto);
  Future<void> persistToken(String token);
  Future<void> removeToken();
  void setDefaultAuthHeader(String token);
  String getToken();
}
