part of 'course_student_bloc.dart';

@freezed
abstract class CourseStudentEvent with _$CourseStudentEvent {
  const factory CourseStudentEvent.fetch() = _Fetch;
  const factory CourseStudentEvent.refresh() = _Refresh;
}
