part of 'enroll_course_bloc.dart';

@freezed
abstract class EnrollCourseEvent with _$EnrollCourseEvent {
  const factory EnrollCourseEvent.enroll(String courseId) = _Enroll;
}
