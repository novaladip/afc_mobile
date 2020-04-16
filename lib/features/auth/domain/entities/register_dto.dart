import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class RegisterDto extends Equatable {
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final File avatar;

  RegisterDto({
    @required this.email,
    @required this.firstName,
    @required this.lastName,
    @required this.password,
    @required this.avatar,
  });

  @override
  List<Object> get props => [email, firstName, lastName, password, avatar];
}