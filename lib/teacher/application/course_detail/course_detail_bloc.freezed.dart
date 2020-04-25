// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'course_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CourseDetailEventTearOff {
  const _$CourseDetailEventTearOff();

  _Fetch fetch(String courseId) {
    return _Fetch(
      courseId,
    );
  }

  _Refresh refresh() {
    return const _Refresh();
  }

  _NewSection newSection(Section section) {
    return _NewSection(
      section,
    );
  }
}

// ignore: unused_element
const $CourseDetailEvent = _$CourseDetailEventTearOff();

mixin _$CourseDetailEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(String courseId),
    @required Result refresh(),
    @required Result newSection(Section section),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(String courseId),
    Result refresh(),
    Result newSection(Section section),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
    @required Result newSection(_NewSection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    Result newSection(_NewSection value),
    @required Result orElse(),
  });
}

abstract class $CourseDetailEventCopyWith<$Res> {
  factory $CourseDetailEventCopyWith(
          CourseDetailEvent value, $Res Function(CourseDetailEvent) then) =
      _$CourseDetailEventCopyWithImpl<$Res>;
}

class _$CourseDetailEventCopyWithImpl<$Res>
    implements $CourseDetailEventCopyWith<$Res> {
  _$CourseDetailEventCopyWithImpl(this._value, this._then);

  final CourseDetailEvent _value;
  // ignore: unused_field
  final $Res Function(CourseDetailEvent) _then;
}

abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
  $Res call({String courseId});
}

class __$FetchCopyWithImpl<$Res> extends _$CourseDetailEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;

  @override
  $Res call({
    Object courseId = freezed,
  }) {
    return _then(_Fetch(
      courseId == freezed ? _value.courseId : courseId as String,
    ));
  }
}

class _$_Fetch implements _Fetch {
  const _$_Fetch(this.courseId) : assert(courseId != null);

  @override
  final String courseId;

  @override
  String toString() {
    return 'CourseDetailEvent.fetch(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetch &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseId);

  @override
  _$FetchCopyWith<_Fetch> get copyWith =>
      __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(String courseId),
    @required Result refresh(),
    @required Result newSection(Section section),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    assert(newSection != null);
    return fetch(courseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(String courseId),
    Result refresh(),
    Result newSection(Section section),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
    @required Result newSection(_NewSection value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    assert(newSection != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    Result newSection(_NewSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CourseDetailEvent {
  const factory _Fetch(String courseId) = _$_Fetch;

  String get courseId;
  _$FetchCopyWith<_Fetch> get copyWith;
}

abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

class __$RefreshCopyWithImpl<$Res> extends _$CourseDetailEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'CourseDetailEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(String courseId),
    @required Result refresh(),
    @required Result newSection(Section section),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    assert(newSection != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(String courseId),
    Result refresh(),
    Result newSection(Section section),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
    @required Result newSection(_NewSection value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    assert(newSection != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    Result newSection(_NewSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements CourseDetailEvent {
  const factory _Refresh() = _$_Refresh;
}

abstract class _$NewSectionCopyWith<$Res> {
  factory _$NewSectionCopyWith(
          _NewSection value, $Res Function(_NewSection) then) =
      __$NewSectionCopyWithImpl<$Res>;
  $Res call({Section section});
}

class __$NewSectionCopyWithImpl<$Res>
    extends _$CourseDetailEventCopyWithImpl<$Res>
    implements _$NewSectionCopyWith<$Res> {
  __$NewSectionCopyWithImpl(
      _NewSection _value, $Res Function(_NewSection) _then)
      : super(_value, (v) => _then(v as _NewSection));

  @override
  _NewSection get _value => super._value as _NewSection;

  @override
  $Res call({
    Object section = freezed,
  }) {
    return _then(_NewSection(
      section == freezed ? _value.section : section as Section,
    ));
  }
}

class _$_NewSection implements _NewSection {
  const _$_NewSection(this.section) : assert(section != null);

  @override
  final Section section;

  @override
  String toString() {
    return 'CourseDetailEvent.newSection(section: $section)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewSection &&
            (identical(other.section, section) ||
                const DeepCollectionEquality().equals(other.section, section)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(section);

  @override
  _$NewSectionCopyWith<_NewSection> get copyWith =>
      __$NewSectionCopyWithImpl<_NewSection>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(String courseId),
    @required Result refresh(),
    @required Result newSection(Section section),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    assert(newSection != null);
    return newSection(section);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(String courseId),
    Result refresh(),
    Result newSection(Section section),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSection != null) {
      return newSection(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
    @required Result newSection(_NewSection value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    assert(newSection != null);
    return newSection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    Result newSection(_NewSection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newSection != null) {
      return newSection(this);
    }
    return orElse();
  }
}

abstract class _NewSection implements CourseDetailEvent {
  const factory _NewSection(Section section) = _$_NewSection;

  Section get section;
  _$NewSectionCopyWith<_NewSection> get copyWith;
}

class _$CourseDetailStateTearOff {
  const _$CourseDetailStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Failure failure() {
    return const _Failure();
  }

  _Loaded loaded({@required CourseDetail course, @required Status status}) {
    return _Loaded(
      course: course,
      status: status,
    );
  }
}

// ignore: unused_element
const $CourseDetailState = _$CourseDetailStateTearOff();

mixin _$CourseDetailState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result failure(),
    @required Result loaded(CourseDetail course, Status status),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result failure(),
    Result loaded(CourseDetail course, Status status),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result loaded(_Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  });
}

abstract class $CourseDetailStateCopyWith<$Res> {
  factory $CourseDetailStateCopyWith(
          CourseDetailState value, $Res Function(CourseDetailState) then) =
      _$CourseDetailStateCopyWithImpl<$Res>;
}

class _$CourseDetailStateCopyWithImpl<$Res>
    implements $CourseDetailStateCopyWith<$Res> {
  _$CourseDetailStateCopyWithImpl(this._value, this._then);

  final CourseDetailState _value;
  // ignore: unused_field
  final $Res Function(CourseDetailState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$CourseDetailStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CourseDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result failure(),
    @required Result loaded(CourseDetail course, Status status),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result failure(),
    Result loaded(CourseDetail course, Status status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result loaded(_Loaded value),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CourseDetailState {
  const factory _Loading() = _$_Loading;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

class __$FailureCopyWithImpl<$Res> extends _$CourseDetailStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'CourseDetailState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result failure(),
    @required Result loaded(CourseDetail course, Status status),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(loaded != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result failure(),
    Result loaded(CourseDetail course, Status status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result loaded(_Loaded value),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(loaded != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CourseDetailState {
  const factory _Failure() = _$_Failure;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({CourseDetail course, Status status});

  $StatusCopyWith<$Res> get status;
}

class __$LoadedCopyWithImpl<$Res> extends _$CourseDetailStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object course = freezed,
    Object status = freezed,
  }) {
    return _then(_Loaded(
      course: course == freezed ? _value.course : course as CourseDetail,
      status: status == freezed ? _value.status : status as Status,
    ));
  }

  @override
  $StatusCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

class _$_Loaded implements _Loaded {
  const _$_Loaded({@required this.course, @required this.status})
      : assert(course != null),
        assert(status != null);

  @override
  final CourseDetail course;
  @override
  final Status status;

  @override
  String toString() {
    return 'CourseDetailState.loaded(course: $course, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result failure(),
    @required Result loaded(CourseDetail course, Status status),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(loaded != null);
    return loaded(course, status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result failure(),
    Result loaded(CourseDetail course, Status status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(course, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result loaded(_Loaded value),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CourseDetailState {
  const factory _Loaded(
      {@required CourseDetail course, @required Status status}) = _$_Loaded;

  CourseDetail get course;
  Status get status;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

class _$StatusTearOff {
  const _$StatusTearOff();

  _StatusIdle idle() {
    return const _StatusIdle();
  }

  _StatusRefresh refresh() {
    return const _StatusRefresh();
  }

  _StatusRefreshFailure refreshFailure() {
    return const _StatusRefreshFailure();
  }
}

// ignore: unused_element
const $Status = _$StatusTearOff();

mixin _$Status {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result refresh(),
    @required Result refreshFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result refresh(),
    Result refreshFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(_StatusIdle value),
    @required Result refresh(_StatusRefresh value),
    @required Result refreshFailure(_StatusRefreshFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_StatusIdle value),
    Result refresh(_StatusRefresh value),
    Result refreshFailure(_StatusRefreshFailure value),
    @required Result orElse(),
  });
}

abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
}

class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;
}

abstract class _$StatusIdleCopyWith<$Res> {
  factory _$StatusIdleCopyWith(
          _StatusIdle value, $Res Function(_StatusIdle) then) =
      __$StatusIdleCopyWithImpl<$Res>;
}

class __$StatusIdleCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$StatusIdleCopyWith<$Res> {
  __$StatusIdleCopyWithImpl(
      _StatusIdle _value, $Res Function(_StatusIdle) _then)
      : super(_value, (v) => _then(v as _StatusIdle));

  @override
  _StatusIdle get _value => super._value as _StatusIdle;
}

class _$_StatusIdle implements _StatusIdle {
  const _$_StatusIdle();

  @override
  String toString() {
    return 'Status.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatusIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result refresh(),
    @required Result refreshFailure(),
  }) {
    assert(idle != null);
    assert(refresh != null);
    assert(refreshFailure != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result refresh(),
    Result refreshFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(_StatusIdle value),
    @required Result refresh(_StatusRefresh value),
    @required Result refreshFailure(_StatusRefreshFailure value),
  }) {
    assert(idle != null);
    assert(refresh != null);
    assert(refreshFailure != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_StatusIdle value),
    Result refresh(_StatusRefresh value),
    Result refreshFailure(_StatusRefreshFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _StatusIdle implements Status {
  const factory _StatusIdle() = _$_StatusIdle;
}

abstract class _$StatusRefreshCopyWith<$Res> {
  factory _$StatusRefreshCopyWith(
          _StatusRefresh value, $Res Function(_StatusRefresh) then) =
      __$StatusRefreshCopyWithImpl<$Res>;
}

class __$StatusRefreshCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$StatusRefreshCopyWith<$Res> {
  __$StatusRefreshCopyWithImpl(
      _StatusRefresh _value, $Res Function(_StatusRefresh) _then)
      : super(_value, (v) => _then(v as _StatusRefresh));

  @override
  _StatusRefresh get _value => super._value as _StatusRefresh;
}

class _$_StatusRefresh implements _StatusRefresh {
  const _$_StatusRefresh();

  @override
  String toString() {
    return 'Status.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatusRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result refresh(),
    @required Result refreshFailure(),
  }) {
    assert(idle != null);
    assert(refresh != null);
    assert(refreshFailure != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result refresh(),
    Result refreshFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(_StatusIdle value),
    @required Result refresh(_StatusRefresh value),
    @required Result refreshFailure(_StatusRefreshFailure value),
  }) {
    assert(idle != null);
    assert(refresh != null);
    assert(refreshFailure != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_StatusIdle value),
    Result refresh(_StatusRefresh value),
    Result refreshFailure(_StatusRefreshFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _StatusRefresh implements Status {
  const factory _StatusRefresh() = _$_StatusRefresh;
}

abstract class _$StatusRefreshFailureCopyWith<$Res> {
  factory _$StatusRefreshFailureCopyWith(_StatusRefreshFailure value,
          $Res Function(_StatusRefreshFailure) then) =
      __$StatusRefreshFailureCopyWithImpl<$Res>;
}

class __$StatusRefreshFailureCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res>
    implements _$StatusRefreshFailureCopyWith<$Res> {
  __$StatusRefreshFailureCopyWithImpl(
      _StatusRefreshFailure _value, $Res Function(_StatusRefreshFailure) _then)
      : super(_value, (v) => _then(v as _StatusRefreshFailure));

  @override
  _StatusRefreshFailure get _value => super._value as _StatusRefreshFailure;
}

class _$_StatusRefreshFailure implements _StatusRefreshFailure {
  const _$_StatusRefreshFailure();

  @override
  String toString() {
    return 'Status.refreshFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatusRefreshFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result refresh(),
    @required Result refreshFailure(),
  }) {
    assert(idle != null);
    assert(refresh != null);
    assert(refreshFailure != null);
    return refreshFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result refresh(),
    Result refreshFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshFailure != null) {
      return refreshFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(_StatusIdle value),
    @required Result refresh(_StatusRefresh value),
    @required Result refreshFailure(_StatusRefreshFailure value),
  }) {
    assert(idle != null);
    assert(refresh != null);
    assert(refreshFailure != null);
    return refreshFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_StatusIdle value),
    Result refresh(_StatusRefresh value),
    Result refreshFailure(_StatusRefreshFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshFailure != null) {
      return refreshFailure(this);
    }
    return orElse();
  }
}

abstract class _StatusRefreshFailure implements Status {
  const factory _StatusRefreshFailure() = _$_StatusRefreshFailure;
}
