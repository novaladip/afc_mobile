import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/models/models.dart';

class CourseDetail extends Equatable {
  final String id;
  final String name;
  final String createdAt;
  final String closeDate;
  final String teacherId;
  final List<Section> sections;
  final List<User> students;
  final User teacher;

  const CourseDetail({
    @required this.id,
    @required this.name,
    @required this.createdAt,
    @required this.closeDate,
    @required this.teacherId,
    @required this.sections,
    @required this.students,
    @required this.teacher,
  });

  factory CourseDetail.fromJson(Map<String, dynamic> json) => CourseDetail(
        id: json['id'],
        name: json['name'],
        createdAt: json['created_at'],
        closeDate: json['close_date'],
        teacherId: json['teacher_id'],
        sections: (json['sections'] as List)
            .map((json) => Section.fromJson(json))
            .toList(),
        students: (json['students'] as List)
            .map((json) => User.fromJson(json['student']))
            .toList(),
        teacher: User.fromJson(json['teacher']),
      );

  @override
  List<Object> get props =>
      [id, name, createdAt, closeDate, teacherId, sections, students, teacher];
}
