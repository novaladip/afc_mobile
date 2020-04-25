import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_state.freezed.dart';

@freezed
abstract class StatusState with _$StatusState {
  const factory StatusState.idle() = _StatusIdle;
  const factory StatusState.refresh() = _StatusRefresh;
  const factory StatusState.refreshFailure({
    String message,
  }) = _StatusRefreshFailure;
}
