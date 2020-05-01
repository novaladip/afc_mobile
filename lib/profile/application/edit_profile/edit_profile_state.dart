part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @required String avatarPath,
    @required _FormStatus status,
  }) = _EditProfileState;

  factory EditProfileState.initial() => EditProfileState(
        avatarPath: '',
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
