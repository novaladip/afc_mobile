// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'create_section_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreateSectionStateTearOff {
  const _$CreateSectionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Failure failure() {
    return const _Failure();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Success success(int count) {
    return _Success(
      count,
    );
  }
}

// ignore: unused_element
const $CreateSectionState = _$CreateSectionStateTearOff();

mixin _$CreateSectionState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(),
    @required Result loading(),
    @required Result success(int count),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result loading(),
    Result success(int count),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result failure(_Failure value),
    Result loading(_Loading value),
    Result success(_Success value),
    @required Result orElse(),
  });
}

abstract class $CreateSectionStateCopyWith<$Res> {
  factory $CreateSectionStateCopyWith(
          CreateSectionState value, $Res Function(CreateSectionState) then) =
      _$CreateSectionStateCopyWithImpl<$Res>;
}

class _$CreateSectionStateCopyWithImpl<$Res>
    implements $CreateSectionStateCopyWith<$Res> {
  _$CreateSectionStateCopyWithImpl(this._value, this._then);

  final CreateSectionState _value;
  // ignore: unused_field
  final $Res Function(CreateSectionState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$CreateSectionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreateSectionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(),
    @required Result loading(),
    @required Result success(int count),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(loading != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result loading(),
    Result success(int count),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(loading != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result failure(_Failure value),
    Result loading(_Loading value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateSectionState {
  const factory _Initial() = _$_Initial;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

class __$FailureCopyWithImpl<$Res>
    extends _$CreateSectionStateCopyWithImpl<$Res>
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
    return 'CreateSectionState.failure()';
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
    @required Result initial(),
    @required Result failure(),
    @required Result loading(),
    @required Result success(int count),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(loading != null);
    assert(success != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result loading(),
    Result success(int count),
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
    @required Result initial(_Initial value),
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(loading != null);
    assert(success != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result failure(_Failure value),
    Result loading(_Loading value),
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

abstract class _Failure implements CreateSectionState {
  const factory _Failure() = _$_Failure;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res>
    extends _$CreateSectionStateCopyWithImpl<$Res>
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
    return 'CreateSectionState.loading()';
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
    @required Result initial(),
    @required Result failure(),
    @required Result loading(),
    @required Result success(int count),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(loading != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result loading(),
    Result success(int count),
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
    @required Result initial(_Initial value),
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(loading != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result failure(_Failure value),
    Result loading(_Loading value),
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

abstract class _Loading implements CreateSectionState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({int count});
}

class __$SuccessCopyWithImpl<$Res>
    extends _$CreateSectionStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object count = freezed,
  }) {
    return _then(_Success(
      count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success(this.count) : assert(count != null);

  @override
  final int count;

  @override
  String toString() {
    return 'CreateSectionState.success(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(),
    @required Result loading(),
    @required Result success(int count),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(loading != null);
    assert(success != null);
    return success(count);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result loading(),
    Result success(int count),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(loading != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result failure(_Failure value),
    Result loading(_Loading value),
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

abstract class _Success implements CreateSectionState {
  const factory _Success(int count) = _$_Success;

  int get count;
  _$SuccessCopyWith<_Success> get copyWith;
}
