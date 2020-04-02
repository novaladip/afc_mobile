part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthEvent {}

class LoggedOut extends AuthEvent {}

class LoggedIn extends AuthEvent {
  final String token;

  const LoggedIn(this.token);

  @override
  List<Object> get props => [token];
}
