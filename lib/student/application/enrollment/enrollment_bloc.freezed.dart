// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'enrollment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EnrollmentEventTearOff {
  const _$EnrollmentEventTearOff();

  _Fetch fetch() {
    return const _Fetch();
  }

  _NewEnrollment newEnrollment(Enrollment eNrollment) {
    return _NewEnrollment(
      eNrollment,
    );
  }
}

// ignore: unused_element
const $EnrollmentEvent = _$EnrollmentEventTearOff();

mixin _$EnrollmentEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result newEnrollment(Enrollment eNrollment),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result newEnrollment(Enrollment eNrollment),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result newEnrollment(_NewEnrollment value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result newEnrollment(_NewEnrollment value),
    @required Result orElse(),
  });
}

abstract class $EnrollmentEventCopyWith<$Res> {
  factory $EnrollmentEventCopyWith(
          EnrollmentEvent value, $Res Function(EnrollmentEvent) then) =
      _$EnrollmentEventCopyWithImpl<$Res>;
}

class _$EnrollmentEventCopyWithImpl<$Res>
    implements $EnrollmentEventCopyWith<$Res> {
  _$EnrollmentEventCopyWithImpl(this._value, this._then);

  final EnrollmentEvent _value;
  // ignore: unused_field
  final $Res Function(EnrollmentEvent) _then;
}

abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
}

class __$FetchCopyWithImpl<$Res> extends _$EnrollmentEventCopyWithImpl<$Res>
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
    return 'EnrollmentEvent.fetch()';
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
    @required Result newEnrollment(Enrollment eNrollment),
  }) {
    assert(fetch != null);
    assert(newEnrollment != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result newEnrollment(Enrollment eNrollment),
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
    @required Result newEnrollment(_NewEnrollment value),
  }) {
    assert(fetch != null);
    assert(newEnrollment != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result newEnrollment(_NewEnrollment value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements EnrollmentEvent {
  const factory _Fetch() = _$_Fetch;
}

abstract class _$NewEnrollmentCopyWith<$Res> {
  factory _$NewEnrollmentCopyWith(
          _NewEnrollment value, $Res Function(_NewEnrollment) then) =
      __$NewEnrollmentCopyWithImpl<$Res>;
  $Res call({Enrollment eNrollment});
}

class __$NewEnrollmentCopyWithImpl<$Res>
    extends _$EnrollmentEventCopyWithImpl<$Res>
    implements _$NewEnrollmentCopyWith<$Res> {
  __$NewEnrollmentCopyWithImpl(
      _NewEnrollment _value, $Res Function(_NewEnrollment) _then)
      : super(_value, (v) => _then(v as _NewEnrollment));

  @override
  _NewEnrollment get _value => super._value as _NewEnrollment;

  @override
  $Res call({
    Object eNrollment = freezed,
  }) {
    return _then(_NewEnrollment(
      eNrollment == freezed ? _value.eNrollment : eNrollment as Enrollment,
    ));
  }
}

class _$_NewEnrollment implements _NewEnrollment {
  const _$_NewEnrollment(this.eNrollment) : assert(eNrollment != null);

  @override
  final Enrollment eNrollment;

  @override
  String toString() {
    return 'EnrollmentEvent.newEnrollment(eNrollment: $eNrollment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewEnrollment &&
            (identical(other.eNrollment, eNrollment) ||
                const DeepCollectionEquality()
                    .equals(other.eNrollment, eNrollment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(eNrollment);

  @override
  _$NewEnrollmentCopyWith<_NewEnrollment> get copyWith =>
      __$NewEnrollmentCopyWithImpl<_NewEnrollment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result newEnrollment(Enrollment eNrollment),
  }) {
    assert(fetch != null);
    assert(newEnrollment != null);
    return newEnrollment(eNrollment);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result newEnrollment(Enrollment eNrollment),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newEnrollment != null) {
      return newEnrollment(eNrollment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result newEnrollment(_NewEnrollment value),
  }) {
    assert(fetch != null);
    assert(newEnrollment != null);
    return newEnrollment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result newEnrollment(_NewEnrollment value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newEnrollment != null) {
      return newEnrollment(this);
    }
    return orElse();
  }
}

abstract class _NewEnrollment implements EnrollmentEvent {
  const factory _NewEnrollment(Enrollment eNrollment) = _$_NewEnrollment;

  Enrollment get eNrollment;
  _$NewEnrollmentCopyWith<_NewEnrollment> get copyWith;
}

class _$EnrollmentStateTearOff {
  const _$EnrollmentStateTearOff();

  _EnrollmentState call(
      {List<Enrollment> enrollments, bool isLoading, bool isFailure}) {
    return _EnrollmentState(
      enrollments: enrollments,
      isLoading: isLoading,
      isFailure: isFailure,
    );
  }
}

// ignore: unused_element
const $EnrollmentState = _$EnrollmentStateTearOff();

mixin _$EnrollmentState {
  List<Enrollment> get enrollments;
  bool get isLoading;
  bool get isFailure;

  $EnrollmentStateCopyWith<EnrollmentState> get copyWith;
}

abstract class $EnrollmentStateCopyWith<$Res> {
  factory $EnrollmentStateCopyWith(
          EnrollmentState value, $Res Function(EnrollmentState) then) =
      _$EnrollmentStateCopyWithImpl<$Res>;
  $Res call({List<Enrollment> enrollments, bool isLoading, bool isFailure});
}

class _$EnrollmentStateCopyWithImpl<$Res>
    implements $EnrollmentStateCopyWith<$Res> {
  _$EnrollmentStateCopyWithImpl(this._value, this._then);

  final EnrollmentState _value;
  // ignore: unused_field
  final $Res Function(EnrollmentState) _then;

  @override
  $Res call({
    Object enrollments = freezed,
    Object isLoading = freezed,
    Object isFailure = freezed,
  }) {
    return _then(_value.copyWith(
      enrollments: enrollments == freezed
          ? _value.enrollments
          : enrollments as List<Enrollment>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
    ));
  }
}

abstract class _$EnrollmentStateCopyWith<$Res>
    implements $EnrollmentStateCopyWith<$Res> {
  factory _$EnrollmentStateCopyWith(
          _EnrollmentState value, $Res Function(_EnrollmentState) then) =
      __$EnrollmentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Enrollment> enrollments, bool isLoading, bool isFailure});
}

class __$EnrollmentStateCopyWithImpl<$Res>
    extends _$EnrollmentStateCopyWithImpl<$Res>
    implements _$EnrollmentStateCopyWith<$Res> {
  __$EnrollmentStateCopyWithImpl(
      _EnrollmentState _value, $Res Function(_EnrollmentState) _then)
      : super(_value, (v) => _then(v as _EnrollmentState));

  @override
  _EnrollmentState get _value => super._value as _EnrollmentState;

  @override
  $Res call({
    Object enrollments = freezed,
    Object isLoading = freezed,
    Object isFailure = freezed,
  }) {
    return _then(_EnrollmentState(
      enrollments: enrollments == freezed
          ? _value.enrollments
          : enrollments as List<Enrollment>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
    ));
  }
}

class _$_EnrollmentState implements _EnrollmentState {
  const _$_EnrollmentState({this.enrollments, this.isLoading, this.isFailure});

  @override
  final List<Enrollment> enrollments;
  @override
  final bool isLoading;
  @override
  final bool isFailure;

  @override
  String toString() {
    return 'EnrollmentState(enrollments: $enrollments, isLoading: $isLoading, isFailure: $isFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnrollmentState &&
            (identical(other.enrollments, enrollments) ||
                const DeepCollectionEquality()
                    .equals(other.enrollments, enrollments)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enrollments) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFailure);

  @override
  _$EnrollmentStateCopyWith<_EnrollmentState> get copyWith =>
      __$EnrollmentStateCopyWithImpl<_EnrollmentState>(this, _$identity);
}

abstract class _EnrollmentState implements EnrollmentState {
  const factory _EnrollmentState(
      {List<Enrollment> enrollments,
      bool isLoading,
      bool isFailure}) = _$_EnrollmentState;

  @override
  List<Enrollment> get enrollments;
  @override
  bool get isLoading;
  @override
  bool get isFailure;
  @override
  _$EnrollmentStateCopyWith<_EnrollmentState> get copyWith;
}
