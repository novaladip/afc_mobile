import 'package:meta/meta.dart';

import 'package:afc_mobile/config/env.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';
import 'package:afc_mobile/features/course/infrastructure/models/course_model.dart';
import 'package:afc_mobile/features/course/infrastructure/models/attendance_model.dart';

class SectionDetailModel extends SectionDetail {
  SectionDetailModel({
    @required String id,
    @required int count,
    @required String courseId,
    @required String date,
    @required String photo,
    @required List<AttendanceModel> attendance,
    @required CourseModel course,
  }) : super(
          id: id,
          count: count,
          courseId: courseId,
          date: date,
          photo: photo,
          attendance: attendance,
          course: course,
        );

  factory SectionDetailModel.fromJson(Map<String, dynamic> json) {
    return SectionDetailModel(
      id: json['id'],
      count: json['count'],
      courseId: json['course_id'],
      date: json['date'],
      photo: Env.baseURL + json['photo'],
      attendance: (json['attendances'] as List)
          .map((a) => AttendanceModel.fromJson(a))
          .toList(),
      course: CourseModel.fromJson(json['course']),
    );
  }
}
