part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required String email,
    @required String password,
    @required bool isSubmitting,
    @required bool isFailure,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        password: '',
        email: '',
        isSubmitting: false,
        isFailure: false,
      );
}
