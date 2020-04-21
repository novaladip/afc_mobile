part of 'enroll_course_bloc.dart';

abstract class EnrollCourseState extends Equatable {
  const EnrollCourseState();

  @override
  List<Object> get props => [];
}

class EnrollCourseStateInitial extends EnrollCourseState {}

class EnrollCourseStateLoading extends EnrollCourseState {
  final String courseId;

  const EnrollCourseStateLoading(this.courseId);

  @override
  List<Object> get props => [courseId];
}

class EnrollCourseStateSuccess extends EnrollCourseState {}

class EnrollCourseStateFailure extends EnrollCourseState {}
