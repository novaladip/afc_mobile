part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @required String email,
    @required String firstName,
    @required String lastName,
    @required String password,
    @required String avatarPath,
    @required bool isSubmitting,
    @required bool isFailure,
    @required bool isSuccess,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        email: '',
        firstName: '',
        lastName: '',
        password: '',
        avatarPath: '',
        isSubmitting: false,
        isFailure: false,
        isSuccess: false,
      );
}
