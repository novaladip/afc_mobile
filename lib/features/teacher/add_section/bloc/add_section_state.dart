part of 'add_section_bloc.dart';

abstract class AddSectionState extends Equatable {
  const AddSectionState();

  @override
  List<Object> get props => [];
}

class AddSectionInitial extends AddSectionState {}

class AddSectionLoading extends AddSectionState {}

class AddSectionSuccess extends AddSectionState {}

class AddSectionFailure extends AddSectionState {}
