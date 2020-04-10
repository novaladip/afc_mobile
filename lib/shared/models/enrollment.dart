import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'course.dart';

class Enrollment extends Equatable {
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

  factory Enrollment.fromJSON(Map<String, dynamic> json) {
    return Enrollment(
      id: json['id'],
      courseId: json['course_id'],
      studentId: json['student_id'],
      enrollDate: json['enroll_date'],
      course: Course.fromJSON(json['course']),
    );
  }

  @override
  List<Object> get props => [id, courseId, studentId, enrollDate, course];
}
