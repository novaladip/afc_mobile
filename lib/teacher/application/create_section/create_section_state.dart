part of 'create_section_bloc.dart';

@freezed
abstract class CreateSectionState with _$CreateSectionState {
  const factory CreateSectionState.initial() = _Initial;
  const factory CreateSectionState.failure() = _Failure;
  const factory CreateSectionState.loading() = _Loading;
  const factory CreateSectionState.success(int count) = _Success;
}
