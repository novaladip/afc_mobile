part of 'course_detail_bloc.dart';

@freezed
abstract class CourseDetailState with _$CourseDetailState {
  const factory CourseDetailState.loading() = _Loading;
  const factory CourseDetailState.failure() = _Failure;
  const factory CourseDetailState.loaded({
    @required CourseDetail course,
    @required Status status,
  }) = _Loaded;
}

@freezed
abstract class Status with _$Status {
  const factory Status.idle() = _StatusIdle;
  const factory Status.refresh() = _StatusRefresh;
  const factory Status.refreshFailure() = _StatusRefreshFailure;
}
