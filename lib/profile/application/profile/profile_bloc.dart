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

  ProfileBloc({
    @required this.profileRepository,
    @required this.authBloc,
  }) {
    authBloc.listen((_authStateListener));
  }

  void _authStateListener(AuthState authState) {
    authState.maybeWhen(
      orElse: () => null,
      unauthentication: () => add(ProfileEvent.onLoggedOut()),
    );
  }

  @override
  ProfileState get initialState => ProfileState.loading();

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.when(
        fetch: () async* {
          yield* _mapFetch();
        },
        updated: () async* {},
        onLoggedOut: () async* {
          yield* _onLoggedOut();
        });
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
