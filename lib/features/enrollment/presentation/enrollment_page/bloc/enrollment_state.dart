part of 'enrollment_bloc.dart';

class EnrollmentState extends Equatable {
  final List<Enrollment> enrollments;
  final bool isLoading;
  final bool isFailure;

  const EnrollmentState({
    @required this.enrollments,
    @required this.isLoading,
    @required this.isFailure,
  });

  factory EnrollmentState.initial() {
    return EnrollmentState(
      enrollments: [],
      isLoading: true,
      isFailure: false,
    );
  }

  factory EnrollmentState.loaded(List<Enrollment> enrollments) {
    return EnrollmentState(
      enrollments: enrollments,
      isLoading: false,
      isFailure: false,
    );
  }

  factory EnrollmentState.failure() {
    return EnrollmentState(
      enrollments: [],
      isLoading: false,
      isFailure: true,
    );
  }

  EnrollmentState copyWith({
    List<Enrollment> enrollments,
    bool isLoading,
    bool isFailure,
  }) {
    return EnrollmentState(
      enrollments: enrollments ?? this.enrollments,
      isLoading: isLoading ?? this.isLoading,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  List<Object> get props => [enrollments, isLoading, isFailure];
}
