import 'package:afc_mobile/features/auth/domain/entities/login_dto.dart';
import 'package:dio/dio.dart';

class LoginDtoModel extends LoginDto {
  const LoginDtoModel(
    String email,
    String password,
  ) : super(email, password);

  FormData get toFormData {
    return FormData.fromMap({
      'email': email,
      'password': password,
    });
  }
}
