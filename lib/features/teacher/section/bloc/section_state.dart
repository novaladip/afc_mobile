part of 'section_bloc.dart';

abstract class SectionState extends Equatable {
  const SectionState();

  @override
  List<Object> get props => [];
}

class SectionLoading extends SectionState {}

class SectionFailure extends SectionState {}

class SectionLoaded extends SectionState {
  final SectionDetailModel section;

  const SectionLoaded(this.section);

  @override
  List<Object> get props => [section];
}
