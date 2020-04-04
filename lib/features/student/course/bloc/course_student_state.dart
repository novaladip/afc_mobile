part of 'course_student_bloc.dart';

abstract class CourseStudentState extends Equatable {
  const CourseStudentState();

  @override
  List<Object> get props => [];
}

class CourseStudentLoading extends CourseStudentState {}

class CourseStudentLoaded extends CourseStudentState {
  final List<CourseStudent> courses;

  const CourseStudentLoaded(this.courses);

  @override
  List<Object> get props => [courses];
}

class CourseStudentFailure extends CourseStudentState {}
