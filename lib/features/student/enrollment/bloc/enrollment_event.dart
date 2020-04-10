part of 'enrollment_bloc.dart';

abstract class EnrollmentEvent extends Equatable {
  const EnrollmentEvent();

  @override
  List<Object> get props => [];
}

class FetchEnrollment extends EnrollmentEvent {}

class EnrollCourse extends EnrollmentEvent {
  final EnrollCourseDto dto;

  const EnrollCourse(this.dto);

  @override
  List<Object> get props => [dto];
}

class NewEnrollment extends EnrollmentEvent {
  final Enrollment enrollment;

  const NewEnrollment(this.enrollment);

  @override
  List<Object> get props => [enrollment];
}
