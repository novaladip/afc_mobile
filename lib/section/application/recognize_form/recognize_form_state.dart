part of 'recognize_form_bloc.dart';

@freezed
abstract class RecognizeFormState with _$RecognizeFormState {
  const factory RecognizeFormState({
    @required String photoPath,
    @nullable @required RecognizeResult result,
    @required _FormStatus status,
  }) = _RecognizeFormState;

  factory RecognizeFormState.initial() => RecognizeFormState(
        photoPath: '',
        result: null,
        status: _FormStatus.initial(),
      );
}

@freezed
abstract class _FormStatus with _$_FormStatus {
  const factory _FormStatus.failure() = _FormStatusFailure;
  const factory _FormStatus.initial() = _FormStatusInitial;
  const factory _FormStatus.submitting() = _FormStatusSubmitting;
  const factory _FormStatus.success(RecognizeResult result) =
      _FormStatusSuccess;
}
