import 'dart:async';

import 'package:afc_mobile/profile/profile.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

@lazySingleton
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final ProfileRepository profileRepository;

  EditProfileBloc({
    @required this.profileRepository,
  });

  @override
  EditProfileState get initialState => EditProfileState.initial();

  @override
  Stream<EditProfileState> mapEventToState(
    EditProfileEvent event,
  ) async* {
    yield* event.map(
      avatarChanged: (e) async* {
        yield state.copyWith(avatarPath: e.avatarPath);
      },
      submit: (e) async* {
        yield* _mapSubmit();
      },
      clear: (e) async* {
        yield EditProfileState.initial();
      },
    );
  }

  Stream<EditProfileState> _mapSubmit() async* {
    try {
      yield state.copyWith(status: _FormStatus.submitting());
      await profileRepository.updateProfile(state.avatarPath);
      yield state.copyWith(status: _FormStatus.success());
    } catch (e) {
      yield state.copyWith(
          status: _FormStatus.failure('Failed to update profile'));
    } finally {
      yield state.copyWith(status: _FormStatus.initial());
    }
  }
}
