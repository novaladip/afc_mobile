import 'dart:async';

import 'package:afc_mobile/features/profile/api/profile_api.dart';
import 'package:afc_mobile/shared/entities/entities.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileApi profileApi;

  ProfileBloc({
    @required this.profileApi,
  });

  @override
  ProfileState get initialState => ProfileStateLoading();

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    if (event is GetProfile) {
      yield* _mapGetProfile();
    }
  }

  Stream<ProfileState> _mapGetProfile() async* {
    try {
      yield ProfileStateLoading();
      final profile = await profileApi.getProfile();
      yield ProfileStateLoaded(profile);
    } catch (e) {
      yield ProfileStateFailure();
    }
  }
}
