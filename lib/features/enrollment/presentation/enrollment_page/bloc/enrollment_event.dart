part of 'enrollment_bloc.dart';

abstract class EnrollmentEvent extends Equatable {
  const EnrollmentEvent();

  @override
  List<Object> get props => [];
}

class GetEnrollment extends EnrollmentEvent {}

class NewEnrollment extends EnrollmentEvent {
  final Enrollment enrollment;

  const NewEnrollment(this.enrollment);

  @override
  List<Object> get props => [enrollment];
}
