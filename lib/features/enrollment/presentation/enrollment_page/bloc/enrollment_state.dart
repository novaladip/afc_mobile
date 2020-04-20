part of 'enrollment_bloc.dart';

abstract class EnrollmentState extends Equatable {
  const EnrollmentState();

  @override
  List<Object> get props => [];
}

class EnrollmentStateLoading extends EnrollmentState {}

class EnrollmentStateFailure extends EnrollmentState {}

class EnrollmentStateLoaded extends EnrollmentState {
  final List<Enrollment> enrollments;

  const EnrollmentStateLoaded(this.enrollments);

  @override
  List<Object> get props => [enrollments];
}
