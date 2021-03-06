import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/common/models/models.dart';

class Attendance extends Equatable {
  final String id;
  final String status;
  final User student;

  Attendance({
    @required this.id,
    @required this.status,
    @required this.student,
  });

  factory Attendance.fromJson(Map<String, dynamic> json) {
    return Attendance(
      id: json['id'],
      status: json['status'] ?? 'TH',
      student: User.fromJson(json['student']),
    );
  }

  @override
  List<Object> get props => [id, status, student];
}
