part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final DioError error;

  const LoginFailure(this.error);

  @override
  List<Object> get props => [error];
}

class LoginSuccess extends LoginState {}
