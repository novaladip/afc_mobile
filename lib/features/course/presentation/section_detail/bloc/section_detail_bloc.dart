import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';

part 'section_detail_event.dart';
part 'section_detail_state.dart';

@lazySingleton
@injectable
class SectionDetailBloc extends Bloc<SectionDetailEvent, SectionDetailState> {
  final CourseApi courseApi;

  SectionDetailBloc({
    @required this.courseApi,
  });

  @override
  SectionDetailState get initialState => SectionDetailStateLoading();

  @override
  Stream<SectionDetailState> mapEventToState(
    SectionDetailEvent event,
  ) async* {
    if (event is GetSectionDetail) {
      yield* _mapGetSectionDetail(event.sectionId);
    }
  }

  Stream<SectionDetailState> _mapGetSectionDetail(String sectionId) async* {
    try {
      yield SectionDetailStateLoading();
      await Future.delayed(Duration(seconds: 2));
      final section = await courseApi.getSectionDetail(sectionId);
      yield SectionDetailStateLoaded(section);
    } catch (e) {
      yield SectionDetailStateFailure();
    }
  }
}
