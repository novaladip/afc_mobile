part of 'enrollment_bloc.dart';

@freezed
abstract class EnrollmentState with _$EnrollmentState {
  const factory EnrollmentState({
    final List<Enrollment> enrollments,
    final _EnrollmentStateStatus status,
    final _EnrollmentStateFailureType failureType,
  }) = _EnrollmentState;

  factory EnrollmentState.loading() => EnrollmentState(
        enrollments: [],
        status: _EnrollmentStateStatus.loading(),
        failureType: _EnrollmentStateFailureType.none(),
      );

  factory EnrollmentState.failure() => EnrollmentState(
        enrollments: [],
        status: _EnrollmentStateStatus.idle(),
        failureType: _EnrollmentStateFailureType.fetch(),
      );

  factory EnrollmentState.loaded(List<Enrollment> enrollments) =>
      EnrollmentState(
        enrollments: enrollments,
        status: _EnrollmentStateStatus.idle(),
        failureType: _EnrollmentStateFailureType.none(),
      );
}

@freezed
abstract class _EnrollmentStateStatus with _$_EnrollmentStateStatus {
  const factory _EnrollmentStateStatus.idle() = _StatusIdle;
  const factory _EnrollmentStateStatus.loading() = _StatusLoading;
  const factory _EnrollmentStateStatus.refresh() = _StatusRefresh;
}

@freezed
abstract class _EnrollmentStateFailureType with _$_EnrollmentStateFailureType {
  const factory _EnrollmentStateFailureType.fetch() = _TypeFetch;
  const factory _EnrollmentStateFailureType.refresh() = _TypeRefresh;
  const factory _EnrollmentStateFailureType.none() = _None;
}
