import 'package:afc_mobile/config/config.dart';
import 'package:meta/meta.dart';

import 'package:afc_mobile/shared/entities/entities.dart';

class UserModel extends User {
  UserModel({
    @required String id,
    @required String avatar,
    @required String email,
    @required String firstName,
    @required String lastName,
  }) : super(
          id: id,
          avatar: avatar,
          email: email,
          firstName: firstName,
          lastName: lastName,
          fullName: '$firstName $lastName',
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: Env.baseURL + json['links']['avatar'],
    );
  }
}
