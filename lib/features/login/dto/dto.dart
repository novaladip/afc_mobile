import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LoginDto extends Equatable {
  final String email;
  final String password;

  LoginDto({
    @required this.email,
    @required this.password,
  });

  FormData get toFormData {
    return FormData.fromMap(this.toJSON);
  }

  Map<String, String> get toJSON {
    return {
      "email": email,
      "password": password,
    };
  }

  @override
  List<Object> get props => [email, password];
}
