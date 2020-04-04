import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

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

class CourseStudent extends Equatable {
  final String id;
  final String closeDate;
  final String createdAt;
  final String name;
  final String teacherId;
  final User teacher;

  CourseStudent({
    @required this.id,
    @required this.closeDate,
    @required this.createdAt,
    @required this.name,
    @required this.teacherId,
    @required this.teacher,
  });

  factory CourseStudent.fromJSON(Map<String, dynamic> json) {
    return CourseStudent(
      id: json['id'],
      closeDate: json['close_date'],
      createdAt: json['created_at'],
      name: json['name'],
      teacherId: json['teacher_id'],
      teacher: User.fromJson(json['teacher']),
    );
  }

  @override
  List<Object> get props =>
      [id, closeDate, createdAt, name, teacherId, teacher];
}
