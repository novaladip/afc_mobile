part of 'enroll_course_bloc.dart';

@freezed
abstract class EnrollCourseState with _$EnrollCourseState {
  const factory EnrollCourseState.idle() = _Idle;
  const factory EnrollCourseState.loading(String courseId) = _Loading;
  const factory EnrollCourseState.failure() = _Failure;
  const factory EnrollCourseState.success(Enrollment enrollment) = _Success;
}
