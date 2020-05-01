part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = _AppStarted;
  const factory AuthEvent.loggedIn(String token) = _LoggedIn;
  const factory AuthEvent.loggedOut() = _LoggedOut;
}
