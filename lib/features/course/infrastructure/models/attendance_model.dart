import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance.dart';

class AttendanceModel extends Attendance {
  AttendanceModel({
    String id,
    String status,
    UserModel student,
  }) : super(id: id, status: status, student: student);

  factory AttendanceModel.fromJson(Map<String, dynamic> json) {
    return AttendanceModel(
      id: json['id'],
      status: json['status'] ?? 'TH',
      student: UserModel.fromJson(json['student']),
    );
  }
}
