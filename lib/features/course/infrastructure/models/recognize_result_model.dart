import 'package:meta/meta.dart';

import 'package:afc_mobile/config/config.dart';
import 'package:afc_mobile/features/course/domain/entities/recognize_result.dart';

class RecognizeResultModel extends RecognizeResult {
  RecognizeResultModel({
    @required int facesFound,
    @required String photo,
    @required List<AttendanceResult> attendancesResult,
  }) : super(
            facesFound: facesFound,
            photo: photo,
            attendancesResult: attendancesResult);

  factory RecognizeResultModel.fromJson(Map<String, dynamic> json) {
    return RecognizeResultModel(
      facesFound: json['face_founds'],
      photo: Env.baseURL + json['face_mark'],
      attendancesResult: (json['result'] as List)
          .map((j) => AttendanceResultModel.fromJson(j))
          .toList(),
    );
  }
}

class AttendanceResultModel extends AttendanceResult {
  AttendanceResultModel({
    String attendanceId,
    String studentId,
    String name,
    bool isMatch,
  }) : super(
            attendanceId: attendanceId,
            studentId: studentId,
            name: name,
            isMatch: isMatch);

  factory AttendanceResultModel.fromJson(Map<String, dynamic> json) {
    return AttendanceResultModel(
      attendanceId: json['attendance_id'],
      studentId: json['id'],
      isMatch: json['is_matches'],
      name: json['name'],
    );
  }
}
