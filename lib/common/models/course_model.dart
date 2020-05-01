import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/common/models/models.dart';

class Course extends Equatable {
  final String id;
  final String name;
  final String closeDate;
  final String createdAt;
  final String teacherId;
  final User teacher;

  const Course({
    @required this.id,
    @required this.name,
    @required this.closeDate,
    @required this.createdAt,
    @required this.teacherId,
    @required this.teacher,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      name: json['name'],
      closeDate: json['close_date'],
      createdAt: json['created_at'],
      teacherId: json['teacher_id'],
      teacher: User.fromJson(json['teacher']),
    );
  }

  Map<String, dynamic> get toMap {
    return {
      'id': id,
      'name': name,
      'close_date': closeDate,
      'created_at': createdAt,
      'teacher_id': teacherId,
      'teacher': teacher.toMap,
    };
  }

  String get formattedCloseDate => formatDate(closeDate);
  String get formattedCreatedAt => formatDate(createdAt);

  bool isEnrolled(List<Enrollment> enrollments) {
    final enrollmentIndex = enrollments.indexWhere((e) => e.courseId == id);
    return enrollmentIndex >= 0;
  }

  @override
  List<Object> get props =>
      [id, name, closeDate, createdAt, teacherId, teacher];
}
