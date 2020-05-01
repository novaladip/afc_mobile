import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_form_dto.freezed.dart';

@freezed
abstract class AttendanceFormDto with _$AttendanceFormDto {
  factory AttendanceFormDto({
    @required String id,
    @required String status,
    @required String fullName,
    @required String avatar,
  }) = _AttendanceFormDto;

  @late
  Map<String, dynamic> get toMap => {
        'id': id,
        'status': status,
      };
}
