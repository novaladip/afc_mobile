import 'package:afc_mobile/shared/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Attendance extends Equatable {
  final String id;
  final String status;
  final User student;

  Attendance({
    @required this.id,
    @required this.status,
    @required this.student,
  });

  factory Attendance.fromJSON(Map<String, dynamic> json) {
    return Attendance(
      id: json['id'],
      status: json['status'] ?? '',
      student: User.fromJson(json['student']),
    );
  }

  @override
  List<Object> get props => [id, status, student];
}
