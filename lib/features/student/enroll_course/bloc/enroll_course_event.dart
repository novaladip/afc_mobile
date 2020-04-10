part of 'enroll_course_bloc.dart';

abstract class EnrollCourseEvent extends Equatable {
  const EnrollCourseEvent();

  @override
  List<Object> get props => [];
}

class EnrollCourseButtonPressed extends EnrollCourseEvent {
  final String courseId;

  const EnrollCourseButtonPressed(this.courseId);

  @override
  List<Object> get props => [courseId];
}
