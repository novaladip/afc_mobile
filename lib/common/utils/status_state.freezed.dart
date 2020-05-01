// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StatusStateTearOff {
  const _$StatusStateTearOff();

  _StatusIdle idle() {
    return const _StatusIdle();
  }

  _StatusRefresh refresh() {
    return const _StatusRefresh();
  }

  _StatusRefreshFailure refreshFailure({String message}) {
    return _StatusRefreshFailure(
      message: message,
    );
  }
}

// ignore: unused_element
const $StatusState = _$StatusStateTearOff();

mixin _$StatusState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result refresh(),
    @required Result refreshFailure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result refresh(),
    Result refreshFailure(String message),
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

abstract class $StatusStateCopyWith<$Res> {
  factory $StatusStateCopyWith(
          StatusState value, $Res Function(StatusState) then) =
      _$StatusStateCopyWithImpl<$Res>;
}

class _$StatusStateCopyWithImpl<$Res> implements $StatusStateCopyWith<$Res> {
  _$StatusStateCopyWithImpl(this._value, this._then);

  final StatusState _value;
  // ignore: unused_field
  final $Res Function(StatusState) _then;
}

abstract class _$StatusIdleCopyWith<$Res> {
  factory _$StatusIdleCopyWith(
          _StatusIdle value, $Res Function(_StatusIdle) then) =
      __$StatusIdleCopyWithImpl<$Res>;
}

class __$StatusIdleCopyWithImpl<$Res> extends _$StatusStateCopyWithImpl<$Res>
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
    return 'StatusState.idle()';
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
    @required Result refreshFailure(String message),
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
    Result refreshFailure(String message),
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

abstract class _StatusIdle implements StatusState {
  const factory _StatusIdle() = _$_StatusIdle;
}

abstract class _$StatusRefreshCopyWith<$Res> {
  factory _$StatusRefreshCopyWith(
          _StatusRefresh value, $Res Function(_StatusRefresh) then) =
      __$StatusRefreshCopyWithImpl<$Res>;
}

class __$StatusRefreshCopyWithImpl<$Res> extends _$StatusStateCopyWithImpl<$Res>
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
    return 'StatusState.refresh()';
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
    @required Result refreshFailure(String message),
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
    Result refreshFailure(String message),
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

abstract class _StatusRefresh implements StatusState {
  const factory _StatusRefresh() = _$_StatusRefresh;
}

abstract class _$StatusRefreshFailureCopyWith<$Res> {
  factory _$StatusRefreshFailureCopyWith(_StatusRefreshFailure value,
          $Res Function(_StatusRefreshFailure) then) =
      __$StatusRefreshFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$StatusRefreshFailureCopyWithImpl<$Res>
    extends _$StatusStateCopyWithImpl<$Res>
    implements _$StatusRefreshFailureCopyWith<$Res> {
  __$StatusRefreshFailureCopyWithImpl(
      _StatusRefreshFailure _value, $Res Function(_StatusRefreshFailure) _then)
      : super(_value, (v) => _then(v as _StatusRefreshFailure));

  @override
  _StatusRefreshFailure get _value => super._value as _StatusRefreshFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_StatusRefreshFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_StatusRefreshFailure implements _StatusRefreshFailure {
  const _$_StatusRefreshFailure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'StatusState.refreshFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusRefreshFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$StatusRefreshFailureCopyWith<_StatusRefreshFailure> get copyWith =>
      __$StatusRefreshFailureCopyWithImpl<_StatusRefreshFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result refresh(),
    @required Result refreshFailure(String message),
  }) {
    assert(idle != null);
    assert(refresh != null);
    assert(refreshFailure != null);
    return refreshFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result refresh(),
    Result refreshFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshFailure != null) {
      return refreshFailure(message);
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

abstract class _StatusRefreshFailure implements StatusState {
  const factory _StatusRefreshFailure({String message}) =
      _$_StatusRefreshFailure;

  String get message;
  _$StatusRefreshFailureCopyWith<_StatusRefreshFailure> get copyWith;
}
