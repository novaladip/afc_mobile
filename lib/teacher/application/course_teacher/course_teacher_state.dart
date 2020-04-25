part of 'course_teacher_bloc.dart';

@freezed
abstract class CourseTeacherState with _$CourseTeacherState {
  const factory CourseTeacherState.loading() = _Loading;
  const factory CourseTeacherState.failure() = _Failure;
  const factory CourseTeacherState.loaded(List<Course> courses) = _Loaded;
}
