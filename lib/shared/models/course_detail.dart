import 'package:afc_mobile/shared/models/section.dart';
import 'package:afc_mobile/shared/models/user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CourseDetailModel extends Equatable {
  final String id;
  final String closeDate;
  final String createdAt;
  final String name;
  final String teacherId;
  final List<Section> sections;
  final List<User> students;
  final User teacher;

  CourseDetailModel({
    @required this.id,
    @required this.closeDate,
    @required this.createdAt,
    @required this.name,
    @required this.teacherId,
    @required this.sections,
    @required this.students,
    @required this.teacher,
  });

  factory CourseDetailModel.fromJSON(Map<String, dynamic> json) {
    return CourseDetailModel(
      id: json['id'],
      closeDate: json['close_date'],
      createdAt: json['created_at'],
      name: json['name'],
      teacherId: json['teacher_id'],
      teacher: User.fromJson(json['teacher']),
      sections: (json['sections'] as List)
          .map((section) => Section.fromJSON(section))
          .toList(),
      students: (json['students'] as List)
          .map((student) => User.fromJson(student['student'])),
    );
  }

  @override
  List<Object> get props => [
        id,
        closeDate,
        createdAt,
        name,
        sections,
        students,
      ];
}
