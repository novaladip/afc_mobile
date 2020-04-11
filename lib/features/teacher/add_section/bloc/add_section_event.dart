part of 'add_section_bloc.dart';

abstract class AddSectionEvent extends Equatable {
  const AddSectionEvent();

  @override
  List<Object> get props => [];
}

class AddSectionButtonPressed extends AddSectionEvent {
  final AddSectionDto dto;

  const AddSectionButtonPressed(this.dto);

  @override
  List<Object> get props => [dto];
}
