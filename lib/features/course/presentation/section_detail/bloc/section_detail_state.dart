part of 'section_detail_bloc.dart';

abstract class SectionDetailState extends Equatable {
  const SectionDetailState();

  @override
  List<Object> get props => [];
}

class SectionDetailStateLoading extends SectionDetailState {}

class SectionDetailStateFailure extends SectionDetailState {}

class SectionDetailStateLoaded extends SectionDetailState {
  final SectionDetail section;

  const SectionDetailStateLoaded(this.section);

  @override
  List<Object> get props => [section];
}
