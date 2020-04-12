part of 'section_bloc.dart';

abstract class SectionEvent extends Equatable {
  const SectionEvent();

  @override
  List<Object> get props => [];
}

class FetchSectionDetail extends SectionEvent {
  final String sectionId;

  const FetchSectionDetail(this.sectionId);

  @override
  List<Object> get props => [sectionId];
}
