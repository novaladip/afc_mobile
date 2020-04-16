import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance.dart';

class SectionDetail extends Equatable {
  final String id;
  final int count;
  final String courseId;
  final String date;
  final String photo;
  final List<Attendance> attendance;
  final Course course;

  SectionDetail({
    @required this.id,
    @required this.count,
    @required this.courseId,
    @required this.date,
    @required this.photo,
    @required this.attendance,
    @required this.course,
  });

  @override
  List<Object> get props =>
      [id, count, courseId, date, photo, attendance, course];
}
