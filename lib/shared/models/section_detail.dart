import 'package:afc_mobile/shared/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SectionDetailModel extends Equatable {
  final String id;
  final int count;
  final String courseId;
  final String date;
  final String photo;
  final List<Attendance> attendances;
  final Course course;

  SectionDetailModel({
    @required this.id,
    @required this.count,
    @required this.courseId,
    @required this.date,
    @required this.photo,
    @required this.attendances,
    @required this.course,
  });

  factory SectionDetailModel.fromJSON(Map<String, dynamic> json) {
    return SectionDetailModel(
      id: json['id'],
      count: json['count'],
      courseId: json['course_id'],
      date: json['date'],
      photo: json['photo'],
      attendances: (json['attendances'] as List)
          .map((attendance) => Attendance.fromJSON(attendance))
          .toList(),
      course: Course.fromJSON(json['course']),
    );
  }

  @override
  List<Object> get props =>
      [id, count, courseId, date, photo, attendances, course];
}
