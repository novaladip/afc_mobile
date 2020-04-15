import 'package:meta/meta.dart';

import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';
import 'package:afc_mobile/features/course/infrastructure/models/section_detail_model.dart';

class CourseDetailModel extends CourseDetail {
  CourseDetailModel({
    @required String id,
    @required String closeDate,
    @required String createdAt,
    @required String name,
    @required String teacherId,
    @required List<SectionModel> sections,
    @required List<UserModel> students,
    @required UserModel teacher,
  }) : super(
          id: id,
          closeDate: closeDate,
          createdAt: createdAt,
          name: name,
          teacherId: teacherId,
          sections: sections,
          students: students,
          teacher: teacher,
        );

  factory CourseDetailModel.fromJson(Map<String, dynamic> json) {
    return CourseDetailModel(
      id: json['id'],
      closeDate: json['close_date'],
      createdAt: json['created_at'],
      name: json['name'],
      teacherId: json['teacher_id'],
      teacher: UserModel.fromJson(json['teacher']),
      sections: (json['sections'] as List)
          .map((section) => SectionModel.fromJson(section))
          .toList(),
      students: (json['students'] as List)
          .map((student) => UserModel.fromJson(student['student']))
          .toList(),
    );
  }
}
