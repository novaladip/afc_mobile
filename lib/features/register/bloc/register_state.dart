part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {
  @override
  List<Object> get props => [];
}

class RegisterSuccess extends RegisterState {}

class RegisterLoading extends RegisterState {
  final bool isStudent;

  const RegisterLoading(this.isStudent);

  @override
  List<Object> get props => [isStudent];
}

class RegisterFailure extends RegisterState {
  final DioError error;

  const RegisterFailure(this.error);

  @override
  List<Object> get props => [error];
}
