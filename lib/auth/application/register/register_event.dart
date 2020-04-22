part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.changeEmail(String email) = _ChangeEmail;
  const factory RegisterEvent.changeFirstName(String firstName) =
      _ChangeFirstName;
  const factory RegisterEvent.changeLastName(String lastName) = _ChangeLastName;
  const factory RegisterEvent.changePassword(String password) = _ChangePassword;
  const factory RegisterEvent.changeAvatarPath(String avatarPath) =
      _ChangeAvatarPath;
  const factory RegisterEvent.submit(bool teacher) = _Submit;
  const factory RegisterEvent.clearForm() = _ClearForm;
}
