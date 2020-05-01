// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'course_student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CourseStudentEventTearOff {
  const _$CourseStudentEventTearOff();

  _Fetch fetch() {
    return const _Fetch();
  }

  _Refresh refresh() {
    return const _Refresh();
  }
}

// ignore: unused_element
const $CourseStudentEvent = _$CourseStudentEventTearOff();

mixin _$CourseStudentEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result refresh(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    @required Result orElse(),
  });
}

abstract class $CourseStudentEventCopyWith<$Res> {
  factory $CourseStudentEventCopyWith(
          CourseStudentEvent value, $Res Function(CourseStudentEvent) then) =
      _$CourseStudentEventCopyWithImpl<$Res>;
}

class _$CourseStudentEventCopyWithImpl<$Res>
    implements $CourseStudentEventCopyWith<$Res> {
  _$CourseStudentEventCopyWithImpl(this._value, this._then);

  final CourseStudentEvent _value;
  // ignore: unused_field
  final $Res Function(CourseStudentEvent) _then;
}

abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
}

class __$FetchCopyWithImpl<$Res> extends _$CourseStudentEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;
}

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'CourseStudentEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result refresh(),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CourseStudentEvent {
  const factory _Fetch() = _$_Fetch;
}

abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

class __$RefreshCopyWithImpl<$Res>
    extends _$CourseStudentEventCopyWithImpl<$Res>
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
    return 'CourseStudentEvent.refresh()';
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
    @required Result fetch(),
    @required Result refresh(),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result refresh(),
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
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements CourseStudentEvent {
  const factory _Refresh() = _$_Refresh;
}

class _$CourseStudentStateTearOff {
  const _$CourseStudentStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<Course> courses) {
    return _Loaded(
      courses,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

// ignore: unused_element
const $CourseStudentState = _$CourseStudentStateTearOff();

mixin _$CourseStudentState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Course> courses),
    @required Result failure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Course> courses),
    Result failure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  });
}

abstract class $CourseStudentStateCopyWith<$Res> {
  factory $CourseStudentStateCopyWith(
          CourseStudentState value, $Res Function(CourseStudentState) then) =
      _$CourseStudentStateCopyWithImpl<$Res>;
}

class _$CourseStudentStateCopyWithImpl<$Res>
    implements $CourseStudentStateCopyWith<$Res> {
  _$CourseStudentStateCopyWithImpl(this._value, this._then);

  final CourseStudentState _value;
  // ignore: unused_field
  final $Res Function(CourseStudentState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res>
    extends _$CourseStudentStateCopyWithImpl<$Res>
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
    return 'CourseStudentState.loading()';
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
    @required Result loaded(List<Course> courses),
    @required Result failure(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Course> courses),
    Result failure(),
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
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CourseStudentState {
  const factory _Loading() = _$_Loading;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Course> courses});
}

class __$LoadedCopyWithImpl<$Res> extends _$CourseStudentStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object courses = freezed,
  }) {
    return _then(_Loaded(
      courses == freezed ? _value.courses : courses as List<Course>,
    ));
  }
}

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.courses) : assert(courses != null);

  @override
  final List<Course> courses;

  @override
  String toString() {
    return 'CourseStudentState.loaded(courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality().equals(other.courses, courses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courses);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(List<Course> courses),
    @required Result failure(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(courses);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Course> courses),
    Result failure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CourseStudentState {
  const factory _Loaded(List<Course> courses) = _$_Loaded;

  List<Course> get courses;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

class __$FailureCopyWithImpl<$Res>
    extends _$CourseStudentStateCopyWithImpl<$Res>
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
    return 'CourseStudentState.failure()';
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
    @required Result loaded(List<Course> courses),
    @required Result failure(),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(List<Course> courses),
    Result failure(),
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
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CourseStudentState {
  const factory _Failure() = _$_Failure;
}
