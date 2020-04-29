import 'package:afc_mobile/config/env.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class RecognizeResult extends Equatable {
  RecognizeResult({
    @required this.facesFound,
    @required this.photo,
    @required this.attendances,
  });

  final int facesFound;
  final String photo;
  final List<AttendanceResult> attendances;

  int get knownFaces {
    return attendances.where((a) => a.isMatch == true).toList().length;
  }

  factory RecognizeResult.fromJson(Map<String, dynamic> json) {
    return RecognizeResult(
      facesFound: json['face_founds'],
      photo: Env.baseURL + json['face_mark'],
      attendances: (json['result'] as List)
          .map((a) => AttendanceResult.fromJson(a))
          .toList(),
    );
  }

  @override
  List<Object> get props => [facesFound, photo, attendances];
}

class AttendanceResult extends Equatable {
  AttendanceResult({
    @required this.attendanceId,
    @required this.studentId,
    @required this.isMatch,
    @required this.name,
  });

  final String attendanceId;
  final String studentId;
  final bool isMatch;
  final String name;

  factory AttendanceResult.fromJson(Map<String, dynamic> json) {
    return AttendanceResult(
      attendanceId: json['attendance_id'],
      studentId: json['student_id'],
      isMatch: json['is_matches'],
      name: json['name'],
    );
  }

  @override
  List<Object> get props => [attendanceId, studentId, isMatch, name];
}
