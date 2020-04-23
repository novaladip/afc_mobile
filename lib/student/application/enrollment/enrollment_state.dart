part of 'enrollment_bloc.dart';

@freezed
abstract class EnrollmentState with _$EnrollmentState {
  const factory EnrollmentState({
    final List<Enrollment> enrollments,
    final bool isLoading,
    final bool isFailure,
  }) = _EnrollmentState;

  factory EnrollmentState.loading() => EnrollmentState(
        enrollments: [],
        isLoading: true,
        isFailure: false,
      );

  factory EnrollmentState.failure() => EnrollmentState(
        enrollments: [],
        isLoading: false,
        isFailure: true,
      );

  factory EnrollmentState.loaded(List<Enrollment> enrollments) =>
      EnrollmentState(
        enrollments: enrollments,
        isLoading: false,
        isFailure: false,
      );
}
