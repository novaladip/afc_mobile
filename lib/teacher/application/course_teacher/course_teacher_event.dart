part of 'course_teacher_bloc.dart';

@freezed
abstract class CourseTeacherEvent with _$CourseTeacherEvent {
  const factory CourseTeacherEvent.newCourse(Course course) = _NewCourse;
  const factory CourseTeacherEvent.fetchCourses() = _FetchCourses;
  const factory CourseTeacherEvent.refreshCourses() = _RefreshCourses;
  const factory CourseTeacherEvent.onLoggedOut() = _OnLoggedOut;
}
