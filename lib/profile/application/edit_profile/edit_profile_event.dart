part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.avatarChanged(String avatarPath) =
      _AvatarChanged;
  const factory EditProfileEvent.submit() = _Submit;
  const factory EditProfileEvent.clear() = _Clear;
}
