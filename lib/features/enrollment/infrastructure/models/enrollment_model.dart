import 'package:meta/meta.dart';

import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';
import 'package:afc_mobile/features/course/infrastructure/models/course_model.dart';

class EnrollmentModel extends Enrollment {
  EnrollmentModel({
    @required String id,
    @required String courseId,
    @required String studentId,
    @required String enrollDate,
    @required CourseModel course,
  }) : super(
          id: id,
          courseId: courseId,
          studentId: studentId,
          enrollDate: enrollDate,
          course: course,
        );

  factory EnrollmentModel.fromJson(Map<String, dynamic> json) {
    return EnrollmentModel(
      id: json['id'],
      courseId: json['course_id'],
      studentId: json['student_id'],
      enrollDate: json['enroll_date'],
      course: CourseModel.fromJson(json['course']),
    );
  }
}
