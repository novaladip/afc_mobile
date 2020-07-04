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
  final AttendancesFormBloc attendancesFormBloc;

  SectionDetailBloc({
    @required this.sectionRepository,
    @required this.recognizeFormBloc,
    @required this.attendancesFormBloc,
  }) : super(SectionDetailState.loading()) {
    recognizeFormBloc.listen(_recognizeFormListener);
    attendancesFormBloc.listen(_attendanceFormListener);
  }

  _recognizeFormListener(RecognizeFormState formState) {
    formState.status.maybeWhen(
      orElse: () {},
      success: (s) => add(SectionDetailEvent.refresh()),
    );
  }

  _attendanceFormListener(AttendancesFormState attendancesFormState) {
    attendancesFormState.status.maybeWhen(
      orElse: () {},
      success: () => add(SectionDetailEvent.refresh()),
    );
  }

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
      attendancesFormBloc
          .add(AttendancesFormEvent.populateFromSectionDetail(section));
      yield SectionDetailState.loaded(
        section: section,
        status: StatusState.idle(),
      );
    } catch (e) {
      yield SectionDetailState.failure();
    }
  }
}
