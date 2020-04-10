import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'user.dart';

class Course extends Equatable {
  final String id;
  final String closeDate;
  final String createdAt;
  final String name;
  final String teacherId;
  final User teacher;

  Course({
    @required this.id,
    @required this.closeDate,
    @required this.createdAt,
    @required this.name,
    @required this.teacherId,
    @required this.teacher,
  });

  factory Course.fromJSON(Map<String, dynamic> json) {
    return Course(
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
