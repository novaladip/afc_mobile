part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterStateInitial extends RegisterState {}

class RegisterStateLoading extends RegisterState {
  final bool studentLoading;
  final bool teacherLoading;

  const RegisterStateLoading({
    @required this.studentLoading,
    @required this.teacherLoading,
  });
}

class RegisterStateFailure extends RegisterState {}

class RegisterStateSuccess extends RegisterState {}
