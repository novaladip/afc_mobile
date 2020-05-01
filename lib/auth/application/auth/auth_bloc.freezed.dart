// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AppStarted appStarted() {
    return const _AppStarted();
  }

  _LoggedIn loggedIn(String token) {
    return _LoggedIn(
      token,
    );
  }

  _LoggedOut loggedOut() {
    return const _LoggedOut();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result loggedIn(String token),
    @required Result loggedOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result loggedIn(String token),
    Result loggedOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(_AppStarted value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedOut(_LoggedOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(_AppStarted value),
    Result loggedIn(_LoggedIn value),
    Result loggedOut(_LoggedOut value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class _$AppStartedCopyWith<$Res> {
  factory _$AppStartedCopyWith(
          _AppStarted value, $Res Function(_AppStarted) then) =
      __$AppStartedCopyWithImpl<$Res>;
}

class __$AppStartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AppStartedCopyWith<$Res> {
  __$AppStartedCopyWithImpl(
      _AppStarted _value, $Res Function(_AppStarted) _then)
      : super(_value, (v) => _then(v as _AppStarted));

  @override
  _AppStarted get _value => super._value as _AppStarted;
}

class _$_AppStarted implements _AppStarted {
  const _$_AppStarted();

  @override
  String toString() {
    return 'AuthEvent.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result loggedIn(String token),
    @required Result loggedOut(),
  }) {
    assert(appStarted != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    return appStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result loggedIn(String token),
    Result loggedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(_AppStarted value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedOut(_LoggedOut value),
  }) {
    assert(appStarted != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(_AppStarted value),
    Result loggedIn(_LoggedIn value),
    Result loggedOut(_LoggedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AppStarted implements AuthEvent {
  const factory _AppStarted() = _$_AppStarted;
}

abstract class _$LoggedInCopyWith<$Res> {
  factory _$LoggedInCopyWith(_LoggedIn value, $Res Function(_LoggedIn) then) =
      __$LoggedInCopyWithImpl<$Res>;
  $Res call({String token});
}

class __$LoggedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoggedInCopyWith<$Res> {
  __$LoggedInCopyWithImpl(_LoggedIn _value, $Res Function(_LoggedIn) _then)
      : super(_value, (v) => _then(v as _LoggedIn));

  @override
  _LoggedIn get _value => super._value as _LoggedIn;

  @override
  $Res call({
    Object token = freezed,
  }) {
    return _then(_LoggedIn(
      token == freezed ? _value.token : token as String,
    ));
  }
}

class _$_LoggedIn implements _LoggedIn {
  const _$_LoggedIn(this.token) : assert(token != null);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.loggedIn(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoggedIn &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @override
  _$LoggedInCopyWith<_LoggedIn> get copyWith =>
      __$LoggedInCopyWithImpl<_LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result loggedIn(String token),
    @required Result loggedOut(),
  }) {
    assert(appStarted != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    return loggedIn(token);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result loggedIn(String token),
    Result loggedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(_AppStarted value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedOut(_LoggedOut value),
  }) {
    assert(appStarted != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(_AppStarted value),
    Result loggedIn(_LoggedIn value),
    Result loggedOut(_LoggedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthEvent {
  const factory _LoggedIn(String token) = _$_LoggedIn;

  String get token;
  _$LoggedInCopyWith<_LoggedIn> get copyWith;
}

abstract class _$LoggedOutCopyWith<$Res> {
  factory _$LoggedOutCopyWith(
          _LoggedOut value, $Res Function(_LoggedOut) then) =
      __$LoggedOutCopyWithImpl<$Res>;
}

class __$LoggedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoggedOutCopyWith<$Res> {
  __$LoggedOutCopyWithImpl(_LoggedOut _value, $Res Function(_LoggedOut) _then)
      : super(_value, (v) => _then(v as _LoggedOut));

  @override
  _LoggedOut get _value => super._value as _LoggedOut;
}

class _$_LoggedOut implements _LoggedOut {
  const _$_LoggedOut();

  @override
  String toString() {
    return 'AuthEvent.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result loggedIn(String token),
    @required Result loggedOut(),
  }) {
    assert(appStarted != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result loggedIn(String token),
    Result loggedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(_AppStarted value),
    @required Result loggedIn(_LoggedIn value),
    @required Result loggedOut(_LoggedOut value),
  }) {
    assert(appStarted != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(_AppStarted value),
    Result loggedIn(_LoggedIn value),
    Result loggedOut(_LoggedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthEvent {
  const factory _LoggedOut() = _$_LoggedOut;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Loading initial() {
    return const _Loading();
  }

  _Unauthentication unauthentication() {
    return const _Unauthentication();
  }

  _Authenticated authenticated(JwtPayload user) {
    return _Authenticated(
      user,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthentication(),
    @required Result authenticated(JwtPayload user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthentication(),
    Result authenticated(JwtPayload user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Loading value),
    @required Result unauthentication(_Unauthentication value),
    @required Result authenticated(_Authenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Loading value),
    Result unauthentication(_Unauthentication value),
    Result authenticated(_Authenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required Result unauthentication(),
    @required Result authenticated(JwtPayload user),
  }) {
    assert(initial != null);
    assert(unauthentication != null);
    assert(authenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthentication(),
    Result authenticated(JwtPayload user),
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
    @required Result initial(_Loading value),
    @required Result unauthentication(_Unauthentication value),
    @required Result authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(unauthentication != null);
    assert(authenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Loading value),
    Result unauthentication(_Unauthentication value),
    Result authenticated(_Authenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

abstract class _$UnauthenticationCopyWith<$Res> {
  factory _$UnauthenticationCopyWith(
          _Unauthentication value, $Res Function(_Unauthentication) then) =
      __$UnauthenticationCopyWithImpl<$Res>;
}

class __$UnauthenticationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticationCopyWith<$Res> {
  __$UnauthenticationCopyWithImpl(
      _Unauthentication _value, $Res Function(_Unauthentication) _then)
      : super(_value, (v) => _then(v as _Unauthentication));

  @override
  _Unauthentication get _value => super._value as _Unauthentication;
}

class _$_Unauthentication implements _Unauthentication {
  const _$_Unauthentication();

  @override
  String toString() {
    return 'AuthState.unauthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthentication(),
    @required Result authenticated(JwtPayload user),
  }) {
    assert(initial != null);
    assert(unauthentication != null);
    assert(authenticated != null);
    return unauthentication();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthentication(),
    Result authenticated(JwtPayload user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthentication != null) {
      return unauthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Loading value),
    @required Result unauthentication(_Unauthentication value),
    @required Result authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(unauthentication != null);
    assert(authenticated != null);
    return unauthentication(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Loading value),
    Result unauthentication(_Unauthentication value),
    Result authenticated(_Authenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthentication != null) {
      return unauthentication(this);
    }
    return orElse();
  }
}

abstract class _Unauthentication implements AuthState {
  const factory _Unauthentication() = _$_Unauthentication;
}

abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({JwtPayload user});

  $JwtPayloadCopyWith<$Res> get user;
}

class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Authenticated(
      user == freezed ? _value.user : user as JwtPayload,
    ));
  }

  @override
  $JwtPayloadCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $JwtPayloadCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user) : assert(user != null);

  @override
  final JwtPayload user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthentication(),
    @required Result authenticated(JwtPayload user),
  }) {
    assert(initial != null);
    assert(unauthentication != null);
    assert(authenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthentication(),
    Result authenticated(JwtPayload user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Loading value),
    @required Result unauthentication(_Unauthentication value),
    @required Result authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(unauthentication != null);
    assert(authenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Loading value),
    Result unauthentication(_Unauthentication value),
    Result authenticated(_Authenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(JwtPayload user) = _$_Authenticated;

  JwtPayload get user;
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}
