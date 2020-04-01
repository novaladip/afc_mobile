part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterStudentPressed extends RegisterEvent {
  final RegisterDto dto;

  const RegisterStudentPressed(this.dto);

  @override
  List<Object> get props => [dto];
}

class RegisterTeacherPressed extends RegisterEvent {
  final RegisterDto dto;

  const RegisterTeacherPressed(this.dto);

  @override
  List<Object> get props => [dto];
}
