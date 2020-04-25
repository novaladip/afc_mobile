import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/utils/utils.dart';

part 'section_detail_event.dart';
part 'section_detail_state.dart';
part 'section_detail_bloc.freezed.dart';

@lazySingleton
class SectionDetailBloc extends Bloc<SectionDetailEvent, SectionDetailState> {
  final CourseTeacherRepository courseTeacherRepository;

  SectionDetailBloc({
    @required this.courseTeacherRepository,
  });

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
    state.maybeWhen(
      orElse: () {},
      loaded: (section, status) async* {
        SectionDetail newSection;
        try {
          yield SectionDetailState.loaded(
            section: section,
            status: StatusState.refresh(),
          );

          newSection =
              await courseTeacherRepository.fetchSectionDetail(section.id);
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
            section: newSection == null ? section : newSection,
            status: StatusState.idle(),
          );
        }
      },
    );
  }

  Stream<SectionDetailState> _mapFetch(String sectionId) async* {
    try {
      yield SectionDetailState.loading();
      final section =
          await courseTeacherRepository.fetchSectionDetail(sectionId);
      yield SectionDetailState.loaded(
        section: section,
        status: StatusState.idle(),
      );
    } catch (e) {
      yield SectionDetailState.failure();
    }
  }
}
