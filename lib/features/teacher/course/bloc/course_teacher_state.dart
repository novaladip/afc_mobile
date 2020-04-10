part of 'course_teacher_bloc.dart';

abstract class CourseTeacherState extends Equatable {
  const CourseTeacherState();

  @override
  List<Object> get props => [];
}

class CourseTeacherLoading extends CourseTeacherState {}

class CourseTeacherLoaded extends CourseTeacherState {
  final List<Course> courses;

  const CourseTeacherLoaded(this.courses);

  @override
  List<Object> get props => [courses];
}

class CourseTeacherFailure extends CourseTeacherState {}
