import 'package:meta/meta.dart';

import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/common/models/models.dart';

class Enrollment {
  final String id;
  final String courseId;
  final String studentId;
  final String enrollDate;
  final Course course;

  Enrollment({
    @required this.id,
    @required this.courseId,
    @required this.studentId,
    @required this.enrollDate,
    @required this.course,
  });

  factory Enrollment.fromJson(Map<String, dynamic> json) {
    return Enrollment(
      id: json['id'],
      courseId: json['course_id'],
      studentId: json['student_id'],
      enrollDate: json['enroll_date'],
      course: Course.fromJson(json['course']),
    );
  }

  Map<String, dynamic> get toMap {
    return {
      'id': id,
      'course_id': courseId,
      'student_id': studentId,
      'enroll_date': enrollDate,
      'course': course.toMap,
    };
  }
}

extension EnrollmentX on Enrollment {
  String get formattedEnrollDate => formatDate(enrollDate);
}
