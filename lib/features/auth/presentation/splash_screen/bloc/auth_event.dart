part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class CheckAuth extends AuthEvent {}

class LoggedIn extends AuthEvent {
  final String token;

  LoggedIn(this.token);

  @override
  List<Object> get props => [token];
}
