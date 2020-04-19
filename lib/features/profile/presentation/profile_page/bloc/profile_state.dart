part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileStateLoading extends ProfileState {}

class ProfileStateFailure extends ProfileState {}

class ProfileStateLoaded extends ProfileState {
  final User profile;

  const ProfileStateLoaded(this.profile);

  @override
  List<Object> get props => [profile];
}
