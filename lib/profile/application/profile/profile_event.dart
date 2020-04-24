part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetch() = _Fetch;
  const factory ProfileEvent.updated() = _Updated;
}
