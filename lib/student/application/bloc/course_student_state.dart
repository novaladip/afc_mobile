part of 'course_student_bloc.dart';

@freezed
abstract class CourseStudentState with _$CourseStudentState {
  const factory CourseStudentState.loading() = _Loading;
  const factory CourseStudentState.loaded(List<Course> courses) = _Loaded;
  const factory CourseStudentState.failure() = _Failure;
}
