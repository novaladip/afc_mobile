import 'package:meta/meta.dart';

import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/features/course/domain/entities/course.dart';

class CourseModel extends Course {
  CourseModel({
    @required String id,
    @required String closeDate,
    @required String createdAt,
    @required String name,
    @required String teacherId,
    @required UserModel teacher,
  }) : super(
            id: id,
            closeDate: closeDate,
            createdAt: createdAt,
            name: name,
            teacherId: teacherId,
            teacher: teacher);

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'],
      closeDate: json['close_date'],
      createdAt: json['created_at'],
      name: json['name'],
      teacherId: json['teacher_id'],
      teacher: UserModel.fromJson(json['teacher']),
    );
  }
}
