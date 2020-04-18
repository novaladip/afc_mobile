import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String avatar;
  final String email;
  final String firstName;
  final String lastName;
  final String fullName;

  const User({
    @required this.id,
    @required this.avatar,
    @required this.email,
    @required this.firstName,
    @required this.lastName,
    @required this.fullName,
  });

  @override
  List<Object> get props => [id, avatar, email, firstName, lastName, fullName];
}
