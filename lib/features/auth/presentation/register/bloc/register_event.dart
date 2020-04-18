part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterButtonPressed extends RegisterEvent {
  final RegisterDtoModel dto;
  final String registerAs;

  const RegisterButtonPressed(
    this.dto,
    this.registerAs,
  );

  @override
  List<Object> get props => [dto, registerAs];
}
