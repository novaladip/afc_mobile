import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:afc_mobile/common/models/models.dart';
import 'package:afc_mobile/config/env.dart';

import 'attendance.dart';

class SectionDetail extends Equatable {
  final String id;
  final int count;
  final String date;
  final String courseId;
  final String photo;
  final String photoResult;
  final List<Attendance> attendances;
  final Course course;

  SectionDetail({
    @required this.id,
    @required this.count,
    @required this.date,
    @required this.course,
    @required this.photo,
    @required this.photoResult,
    @required this.attendances,
    @required this.courseId,
  });

  factory SectionDetail.fromJson(Map<String, dynamic> json) {
    return SectionDetail(
      id: json['id'],
      count: json['count'],
      courseId: json['course_id'],
      date: json['date'],
      photo: (json['photo'] as String).isEmpty
          ? ""
          : Env.baseURL + "/api/section/photo/" + json['photo'],
      photoResult: (json['photo_result'] as String).isNotEmpty
          ? Env.baseURL + "/api/section/photo/" + json['photo_result']
          : '',
      attendances: (json['attendances'] as List)
          .map((a) => Attendance.fromJson(a))
          .toList(),
      course: Course.fromJson(json['course']),
    );
  }

  @override
  List<Object> get props =>
      [id, count, date, courseId, photo, photoResult, attendances, course];
}
