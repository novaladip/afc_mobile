part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.changeEmail(String email) = _changeEmail;
  const factory RegisterEvent.changeFirstName(String firstName) =
      _changeFirstName;
  const factory RegisterEvent.changeLastName(String lastName) = _changeLastName;
  const factory RegisterEvent.changePassword(String password) = _changePassword;
  const factory RegisterEvent.changeAvatarPath(String avatarPath) =
      _changeAvatarPath;
  const factory RegisterEvent.submit(bool teacher) = _submit;
  const factory RegisterEvent.clearForm() = _clearForm;
}
