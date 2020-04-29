import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/section/section.dart';
import 'package:afc_mobile/common/utils/utils.dart';

part 'section_detail_event.dart';
part 'section_detail_state.dart';
part 'section_detail_bloc.freezed.dart';

@lazySingleton
class SectionDetailBloc extends Bloc<SectionDetailEvent, SectionDetailState> {
  final SectionRepository sectionRepository;
  final RecognizeFormBloc recognizeFormBloc;

  SectionDetailBloc({
    @required this.sectionRepository,
    @required this.recognizeFormBloc,
  }) {
    recognizeFormBloc.listen(_recognizeFormListener);
  }

  _recognizeFormListener(RecognizeFormState formState) {
    formState.status.maybeWhen(
      orElse: () {},
      success: (s) => add(SectionDetailEvent.refresh()),
    );
  }

  @override
  SectionDetailState get initialState => SectionDetailState.loading();

  @override
  Stream<SectionDetailState> mapEventToState(
    SectionDetailEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        yield* _mapFetch(e.sectionId);
      },
      refresh: (e) async* {
        yield* _mapRefresh();
      },
    );
  }

  Stream<SectionDetailState> _mapRefresh() async* {
    yield* state.maybeWhen(
      orElse: () async* {},
      loaded: (section, status) async* {
        SectionDetail newSection;
        try {
          yield SectionDetailState.loaded(
            section: section,
            status: StatusState.refresh(),
          );

          newSection = await sectionRepository.fetchSectionDetail(section.id);
          yield SectionDetailState.loaded(
            section: newSection,
            status: StatusState.idle(),
          );
        } catch (e) {
          yield SectionDetailState.loaded(
            section: section,
            status: StatusState.refreshFailure(),
          );
        } finally {
          yield SectionDetailState.loaded(
            section: newSection ?? section,
            status: StatusState.idle(),
          );
        }
      },
    );
  }

  Stream<SectionDetailState> _mapFetch(String sectionId) async* {
    try {
      yield SectionDetailState.loading();
      final section = await sectionRepository.fetchSectionDetail(sectionId);
      yield SectionDetailState.loaded(
        section: section,
        status: StatusState.idle(),
      );
    } catch (e) {
      yield SectionDetailState.failure();
    }
  }
}
