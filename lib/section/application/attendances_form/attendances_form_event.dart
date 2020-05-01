part of 'attendances_form_bloc.dart';

@freezed
abstract class AttendancesFormEvent with _$AttendancesFormEvent {
  const factory AttendancesFormEvent.onFormChange({
    @required int index,
    @required String status,
  }) = _OnFormChange;

  const factory AttendancesFormEvent.populateFromSectionDetail(
      SectionDetail sectionDetail) = _PopulateFromSectionDetail;

  const factory AttendancesFormEvent.populateFromRecognizeResult(
      List<AttendanceResult> attendances) = _PopulateFromRecognizeResult;

  const factory AttendancesFormEvent.onSubmit() = _OnSubmit;

  const factory AttendancesFormEvent.onClear() = _OnClear;
}
