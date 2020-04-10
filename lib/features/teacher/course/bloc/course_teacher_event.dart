part of 'course_teacher_bloc.dart';

abstract class CourseTeacherEvent extends Equatable {
  const CourseTeacherEvent();

  @override
  List<Object> get props => [];
}

class FetchCourseTeacher extends CourseTeacherEvent {}
