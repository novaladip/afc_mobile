// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'enroll_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EnrollCourseEventTearOff {
  const _$EnrollCourseEventTearOff();

  _Enroll enroll(String courseId) {
    return _Enroll(
      courseId,
    );
  }
}

// ignore: unused_element
const $EnrollCourseEvent = _$EnrollCourseEventTearOff();

mixin _$EnrollCourseEvent {
  String get courseId;

  $EnrollCourseEventCopyWith<EnrollCourseEvent> get copyWith;
}

abstract class $EnrollCourseEventCopyWith<$Res> {
  factory $EnrollCourseEventCopyWith(
          EnrollCourseEvent value, $Res Function(EnrollCourseEvent) then) =
      _$EnrollCourseEventCopyWithImpl<$Res>;
  $Res call({String courseId});
}

class _$EnrollCourseEventCopyWithImpl<$Res>
    implements $EnrollCourseEventCopyWith<$Res> {
  _$EnrollCourseEventCopyWithImpl(this._value, this._then);

  final EnrollCourseEvent _value;
  // ignore: unused_field
  final $Res Function(EnrollCourseEvent) _then;

  @override
  $Res call({
    Object courseId = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: courseId == freezed ? _value.courseId : courseId as String,
    ));
  }
}

abstract class _$EnrollCopyWith<$Res>
    implements $EnrollCourseEventCopyWith<$Res> {
  factory _$EnrollCopyWith(_Enroll value, $Res Function(_Enroll) then) =
      __$EnrollCopyWithImpl<$Res>;
  @override
  $Res call({String courseId});
}

class __$EnrollCopyWithImpl<$Res> extends _$EnrollCourseEventCopyWithImpl<$Res>
    implements _$EnrollCopyWith<$Res> {
  __$EnrollCopyWithImpl(_Enroll _value, $Res Function(_Enroll) _then)
      : super(_value, (v) => _then(v as _Enroll));

  @override
  _Enroll get _value => super._value as _Enroll;

  @override
  $Res call({
    Object courseId = freezed,
  }) {
    return _then(_Enroll(
      courseId == freezed ? _value.courseId : courseId as String,
    ));
  }
}

class _$_Enroll implements _Enroll {
  const _$_Enroll(this.courseId) : assert(courseId != null);

  @override
  final String courseId;

  @override
  String toString() {
    return 'EnrollCourseEvent.enroll(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Enroll &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseId);

  @override
  _$EnrollCopyWith<_Enroll> get copyWith =>
      __$EnrollCopyWithImpl<_Enroll>(this, _$identity);
}

abstract class _Enroll implements EnrollCourseEvent {
  const factory _Enroll(String courseId) = _$_Enroll;

  @override
  String get courseId;
  @override
  _$EnrollCopyWith<_Enroll> get copyWith;
}

class _$EnrollCourseStateTearOff {
  const _$EnrollCourseStateTearOff();

  _Idle idle() {
    return const _Idle();
  }

  _Loading loading(String courseId) {
    return _Loading(
      courseId,
    );
  }

  _Failure failure() {
    return const _Failure();
  }

  _Success success(String courseName) {
    return _Success(
      courseName,
    );
  }
}

// ignore: unused_element
const $EnrollCourseState = _$EnrollCourseStateTearOff();

mixin _$EnrollCourseState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(String courseId),
    @required Result failure(),
    @required Result success(String courseName),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(String courseId),
    Result failure(),
    Result success(String courseName),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(_Idle value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_Idle value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  });
}

abstract class $EnrollCourseStateCopyWith<$Res> {
  factory $EnrollCourseStateCopyWith(
          EnrollCourseState value, $Res Function(EnrollCourseState) then) =
      _$EnrollCourseStateCopyWithImpl<$Res>;
}

class _$EnrollCourseStateCopyWithImpl<$Res>
    implements $EnrollCourseStateCopyWith<$Res> {
  _$EnrollCourseStateCopyWithImpl(this._value, this._then);

  final EnrollCourseState _value;
  // ignore: unused_field
  final $Res Function(EnrollCourseState) _then;
}

abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

class __$IdleCopyWithImpl<$Res> extends _$EnrollCourseStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'EnrollCourseState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(String courseId),
    @required Result failure(),
    @required Result success(String courseName),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(failure != null);
    assert(success != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(String courseId),
    Result failure(),
    Result success(String courseName),
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
    @required Result idle(_Idle value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(failure != null);
    assert(success != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_Idle value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements EnrollCourseState {
  const factory _Idle() = _$_Idle;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({String courseId});
}

class __$LoadingCopyWithImpl<$Res> extends _$EnrollCourseStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object courseId = freezed,
  }) {
    return _then(_Loading(
      courseId == freezed ? _value.courseId : courseId as String,
    ));
  }
}

class _$_Loading implements _Loading {
  const _$_Loading(this.courseId) : assert(courseId != null);

  @override
  final String courseId;

  @override
  String toString() {
    return 'EnrollCourseState.loading(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseId);

  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(String courseId),
    @required Result failure(),
    @required Result success(String courseName),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(failure != null);
    assert(success != null);
    return loading(courseId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(String courseId),
    Result failure(),
    Result success(String courseName),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(_Idle value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(failure != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_Idle value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EnrollCourseState {
  const factory _Loading(String courseId) = _$_Loading;

  String get courseId;
  _$LoadingCopyWith<_Loading> get copyWith;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

class __$FailureCopyWithImpl<$Res> extends _$EnrollCourseStateCopyWithImpl<$Res>
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
    return 'EnrollCourseState.failure()';
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
    @required Result idle(),
    @required Result loading(String courseId),
    @required Result failure(),
    @required Result success(String courseName),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(failure != null);
    assert(success != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(String courseId),
    Result failure(),
    Result success(String courseName),
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
    @required Result idle(_Idle value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(failure != null);
    assert(success != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_Idle value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements EnrollCourseState {
  const factory _Failure() = _$_Failure;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({String courseName});
}

class __$SuccessCopyWithImpl<$Res> extends _$EnrollCourseStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object courseName = freezed,
  }) {
    return _then(_Success(
      courseName == freezed ? _value.courseName : courseName as String,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success(this.courseName) : assert(courseName != null);

  @override
  final String courseName;

  @override
  String toString() {
    return 'EnrollCourseState.success(courseName: $courseName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.courseName, courseName) ||
                const DeepCollectionEquality()
                    .equals(other.courseName, courseName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseName);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(String courseId),
    @required Result failure(),
    @required Result success(String courseName),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(failure != null);
    assert(success != null);
    return success(courseName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(String courseId),
    Result failure(),
    Result success(String courseName),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(courseName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(_Idle value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(failure != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(_Idle value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements EnrollCourseState {
  const factory _Success(String courseName) = _$_Success;

  String get courseName;
  _$SuccessCopyWith<_Success> get copyWith;
}
