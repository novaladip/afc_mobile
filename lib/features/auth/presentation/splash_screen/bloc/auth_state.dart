part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthStateInitial extends AuthState {}

class AuthStateAuthenticated extends AuthState {
  final JwtPayloadModel user;

  AuthStateAuthenticated(this.user);

  @override
  List<Object> get props => [user];
}

class AuthStateUnauthentication extends AuthState {}
