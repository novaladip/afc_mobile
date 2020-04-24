part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded(User profile) = _Loaded;
  const factory ProfileState.failure() = _Failure;
}
