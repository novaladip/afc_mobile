part of 'course_teacher_bloc.dart';

abstract class CourseTeacherState extends Equatable {
  const CourseTeacherState();

  @override
  List<Object> get props => [];
}

class CourseTeacherStateLoading extends CourseTeacherState {}

class CourseTeacherStateFailure extends CourseTeacherState {}

class CourseTeacherStateLoaded extends CourseTeacherState {
  final List<Course> courses;

  const CourseTeacherStateLoaded(this.courses);

  @override
  List<Object> get props => [courses];
}
