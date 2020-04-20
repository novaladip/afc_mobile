part of 'course_student_bloc.dart';

abstract class CourseStudentState extends Equatable {
  const CourseStudentState();

  @override
  List<Object> get props => [];
}

class CourseStudentStateLoading extends CourseStudentState {}

class CourseStudentStateFailure extends CourseStudentState {}

class CourseStudentStateLoaded extends CourseStudentState {
  final List<Course> courses;

  const CourseStudentStateLoaded(this.courses);

  @override
  List<Object> get props => [courses];
}
