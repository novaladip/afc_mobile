import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';

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

  @override
  List<Object> get props => [id, courseId, studentId, enrollDate, course];
}
