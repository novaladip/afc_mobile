import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/config/env.dart';

class User extends Equatable {
  final String id;
  final String avatar;
  final String email;
  final String firstName;
  final String lastName;

  const User({
    @required this.id,
    @required this.avatar,
    @required this.email,
    @required this.firstName,
    @required this.lastName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      avatar: Env.baseURL + json['links']['avatar'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
    );
  }

  @override
  List<Object> get props => [id, avatar, email, firstName, lastName];
}

extension UserX on User {
  String get fullName => '$firstName $lastName';
}
