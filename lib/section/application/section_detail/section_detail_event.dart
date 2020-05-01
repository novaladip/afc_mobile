part of 'section_detail_bloc.dart';

@freezed
abstract class SectionDetailEvent with _$SectionDetailEvent {
  const factory SectionDetailEvent.fetch(String sectionId) = _Fetch;
  const factory SectionDetailEvent.refresh() = _Refresh;
}
