part of 'course_student_bloc.dart';

abstract class CourseStudentEvent extends Equatable {
  const CourseStudentEvent();

  @override
  List<Object> get props => [];
}

class FetchCourseStudent extends CourseStudentEvent {}
