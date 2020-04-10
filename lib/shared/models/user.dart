import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class User extends Equatable {
  final String id;
  final String avatar;
  final String email;
  final String firstName;
  final String lastName;
  final String fullName;

  User({
    @required this.id,
    @required this.avatar,
    @required this.email,
    @required this.firstName,
    @required this.lastName,
    @required this.fullName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      avatar: json['links']['avatar'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      fullName: '${json['first_name']} ${json['last_name']}',
    );
  }

  @override
  List<Object> get props => [id, avatar, email, firstName, lastName, fullName];
}
