part of 'enrollment_bloc.dart';

@freezed
abstract class EnrollmentState with _$EnrollmentState {
  const factory EnrollmentState({
    final List<Enrollment> enrollments,
    final bool isLoading,
    final bool isFailure,
  }) = _EnrollmentState;

  factory EnrollmentState.initial() => EnrollmentState(
        enrollments: [],
        isLoading: true,
        isFailure: false,
      );
}
