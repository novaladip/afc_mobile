part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginButtonPressed extends LoginEvent {
  final LoginDto dto;

  const LoginButtonPressed(this.dto);

  @override
  List<Object> get props => [dto];

  @override
  String toString() {
    return "LoginButtonPressed 'email': ${dto.email} 'password': ${dto.password}";
  }
}
