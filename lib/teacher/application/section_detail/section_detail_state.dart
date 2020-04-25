part of 'section_detail_bloc.dart';

@freezed
abstract class SectionDetailState with _$SectionDetailState {
  const factory SectionDetailState.failure() = _Failure;
  const factory SectionDetailState.loading() = _Loading;
  const factory SectionDetailState.loaded({
    @required SectionDetail section,
    @required StatusState status,
  }) = _Loaded;
}
