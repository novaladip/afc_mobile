part of 'recognize_form_bloc.dart';

@freezed
abstract class RecognizeFormEvent with _$RecognizeFormEvent {
  const factory RecognizeFormEvent.clear() = _Clear;
  const factory RecognizeFormEvent.photoChange(String photoPath) = _PhotoChange;
  const factory RecognizeFormEvent.submit(String sectionId) = _Submit;
}
