part of 'section_detail_bloc.dart';

abstract class SectionDetailEvent extends Equatable {
  const SectionDetailEvent();

  @override
  List<Object> get props => [];
}

class GetSectionDetail extends SectionDetailEvent {
  final String sectionId;

  const GetSectionDetail(this.sectionId);

  @override
  List<Object> get props => [sectionId];
}
