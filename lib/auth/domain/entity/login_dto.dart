import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';

@freezed
abstract class LoginDto implements _$LoginDto {
  factory LoginDto({
    @required String email,
    @required String password,
  }) = _LoginDto;

  @late
  FormData get toFormData => FormData.fromMap({
        'email': email.toLowerCase().trim(),
        'password': password,
      });
}
