import 'dart:async';

import 'package:afc_mobile/features/teacher/section/section.dart';
import 'package:afc_mobile/shared/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'section_event.dart';
part 'section_state.dart';

class SectionBloc extends Bloc<SectionEvent, SectionState> {
  final ISectionService _sectionService;

  SectionBloc(this._sectionService);

  @override
  SectionState get initialState => SectionLoading();

  @override
  Stream<SectionState> mapEventToState(
    SectionEvent event,
  ) async* {
    if (event is FetchSectionDetail) {
      yield* _mapFetchSectionDetail(event.sectionId);
    }
  }

  Stream<SectionState> _mapFetchSectionDetail(String sectionId) async* {
    try {
      yield SectionLoading();
      final section = await _sectionService.fetchById(sectionId);
      yield SectionLoaded(section);
    } catch (e) {
      yield SectionFailure();
    }
  }
}
