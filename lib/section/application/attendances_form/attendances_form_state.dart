part of 'attendances_form_bloc.dart';

@freezed
abstract class AttendancesFormState with _$AttendancesFormState {
  const factory AttendancesFormState({
    @required List<AttendanceFormDto> attendances,
    @required _FormStatus status,
  }) = _AttendancesFormState;

  factory AttendancesFormState.initial() => AttendancesFormState(
        attendances: [],
        status: _FormStatus.initial(),
      );
}

@freezed
abstract class _FormStatus with _$_FormStatus {
  const factory _FormStatus.failure(String message) = _FormStatusFailure;
  const factory _FormStatus.initial() = _FormStatusInitial;
  const factory _FormStatus.submitting() = _FormStatusSubmitting;
  const factory _FormStatus.success() = _FormStatusSuccess;
}
