part of 'enroll_course_bloc.dart';

abstract class EnrollCourseState extends Equatable {
  const EnrollCourseState();

  @override
  List<Object> get props => [];
}

class EnrollCourseInitial extends EnrollCourseState {}

class EnrollCourseLoading extends EnrollCourseState {
  final String courseId;

  const EnrollCourseLoading(this.courseId);

  @override
  List<Object> get props => [courseId];
}

class EnrollCourseFailure extends EnrollCourseState {}

class EnrollCourseSuccess extends EnrollCourseState {
  final Enrollment enrollment;

  const EnrollCourseSuccess(this.enrollment);

  @override
  List<Object> get props => [enrollment];
}
