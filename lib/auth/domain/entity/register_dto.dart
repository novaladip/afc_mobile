import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class RegisterDto extends Equatable {
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final File avatar;

  const RegisterDto({
    @required this.email,
    @required this.firstName,
    @required this.lastName,
    @required this.password,
    @required this.avatar,
  });

  FormData get toFormData {
    return FormData.fromMap({
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'password': password,
      'avatar': MultipartFile.fromFileSync(
        avatar.path,
        filename: avatar.path.split('/').last,
      )
    });
  }

  @override
  List<Object> get props => [email, firstName, lastName, password, avatar];
}
