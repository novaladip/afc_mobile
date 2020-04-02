part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthUninitialized extends AuthState {}

class AuthAuthenticated extends AuthState {
  final JwtPayload user;

  const AuthAuthenticated(this.user);

  @override
  List<Object> get props => [user];

  @override
  String toString() {
    return "AuthAuthenticated email: ${user.email}";
  }
}

class AuthUnauthenticated extends AuthState {}

class AuthLoading extends AuthState {}
