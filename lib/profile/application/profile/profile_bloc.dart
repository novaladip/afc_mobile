import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/profile/profile.dart';
import 'package:afc_mobile/common/models/models.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthBloc authBloc;
  final ProfileRepository profileRepository;
  final EditProfileBloc editProfileBloc;

  ProfileBloc({
    @required this.profileRepository,
    @required this.authBloc,
    @required this.editProfileBloc,
  }) : super(ProfileState.loading()) {
    authBloc.listen(_authStateListener);
    editProfileBloc.listen(_editProfileStateListener);
  }

  void _authStateListener(AuthState authState) {
    authState.maybeWhen(
      orElse: () => null,
      unauthentication: () => add(ProfileEvent.onLoggedOut()),
    );
  }

  void _editProfileStateListener(EditProfileState editProfileState) {
    print(editProfileState.avatarPath);
    editProfileState.status.maybeWhen(
      orElse: () => null,
      success: () => add(ProfileEvent.refresh()),
    );
  }

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.when(
        refresh: () async* {
          yield* _mapRefresh();
        },
        fetch: () async* {
          yield* _mapFetch();
        },
        updated: () async* {},
        onLoggedOut: () async* {
          yield* _onLoggedOut();
        });
  }

  Stream<ProfileState> _mapRefresh() async* {
    yield* state.maybeWhen(
      orElse: () async* {},
      loaded: (profile) async* {
        try {
          final newProfile = await profileRepository.refreshProfile();
          yield ProfileState.loaded(newProfile);
        } catch (e) {
          yield ProfileState.loaded(profile);
        }
      },
    );
  }

  Stream<ProfileState> _mapFetch() async* {
    try {
      yield ProfileState.loading();
      final profile = await profileRepository.fetchProfile();
      yield ProfileState.loaded(profile);
    } catch (e) {
      yield ProfileState.failure();
    }
  }

  Stream<ProfileState> _onLoggedOut() async* {
    yield ProfileState.loading();
    profileRepository.destroyCache();
  }
}
