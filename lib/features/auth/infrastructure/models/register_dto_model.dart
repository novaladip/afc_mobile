import 'dart:io';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'package:afc_mobile/features/auth/domain/entities/register_dto.dart';

class RegisterDtoModel extends RegisterDto {
  RegisterDtoModel({
    @required String email,
    @required String firstName,
    @required String lastName,
    @required String password,
    @required File avatar,
  }) : super(
          email: email,
          firstName: firstName,
          lastName: lastName,
          password: password,
          avatar: avatar,
        );

  Future<FormData> get toFormData async {
    return FormData.fromMap({
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'password': password,
      'avatar': await MultipartFile.fromFile(
        avatar.path,
        filename: avatar.path.split('/').last,
      ),
    });
  }
}
