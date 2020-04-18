import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class RecognizeResult extends Equatable {
  final int facesFound;
  final String photo;
  final List<AttendanceResult> attendancesResult;

  RecognizeResult({
    @required this.facesFound,
    @required this.photo,
    @required this.attendancesResult,
  });

  @override
  List<Object> get props => [facesFound, photo, attendancesResult];
}

class AttendanceResult extends Equatable {
  final String attendanceId;
  final String studentId;
  final bool isMatch;
  final String name;

  AttendanceResult({
    @required this.attendanceId,
    @required this.studentId,
    @required this.isMatch,
    @required this.name,
  });

  @override
  List<Object> get props => [attendanceId, studentId, isMatch, name];
}
