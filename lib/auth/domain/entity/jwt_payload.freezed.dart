// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'jwt_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$JwtPayloadTearOff {
  const _$JwtPayloadTearOff();

  _JwtPayload call(
      {@required String id,
      @required String email,
      @required String role,
      @required int exp}) {
    return _JwtPayload(
      id: id,
      email: email,
      role: role,
      exp: exp,
    );
  }
}

// ignore: unused_element
const $JwtPayload = _$JwtPayloadTearOff();

mixin _$JwtPayload {
  String get id;
  String get email;
  String get role;
  int get exp;

  $JwtPayloadCopyWith<JwtPayload> get copyWith;
}

abstract class $JwtPayloadCopyWith<$Res> {
  factory $JwtPayloadCopyWith(
          JwtPayload value, $Res Function(JwtPayload) then) =
      _$JwtPayloadCopyWithImpl<$Res>;
  $Res call({String id, String email, String role, int exp});
}

class _$JwtPayloadCopyWithImpl<$Res> implements $JwtPayloadCopyWith<$Res> {
  _$JwtPayloadCopyWithImpl(this._value, this._then);

  final JwtPayload _value;
  // ignore: unused_field
  final $Res Function(JwtPayload) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object role = freezed,
    Object exp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      role: role == freezed ? _value.role : role as String,
      exp: exp == freezed ? _value.exp : exp as int,
    ));
  }
}

abstract class _$JwtPayloadCopyWith<$Res> implements $JwtPayloadCopyWith<$Res> {
  factory _$JwtPayloadCopyWith(
          _JwtPayload value, $Res Function(_JwtPayload) then) =
      __$JwtPayloadCopyWithImpl<$Res>;
  @override
  $Res call({String id, String email, String role, int exp});
}

class __$JwtPayloadCopyWithImpl<$Res> extends _$JwtPayloadCopyWithImpl<$Res>
    implements _$JwtPayloadCopyWith<$Res> {
  __$JwtPayloadCopyWithImpl(
      _JwtPayload _value, $Res Function(_JwtPayload) _then)
      : super(_value, (v) => _then(v as _JwtPayload));

  @override
  _JwtPayload get _value => super._value as _JwtPayload;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object role = freezed,
    Object exp = freezed,
  }) {
    return _then(_JwtPayload(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      role: role == freezed ? _value.role : role as String,
      exp: exp == freezed ? _value.exp : exp as int,
    ));
  }
}

class _$_JwtPayload implements _JwtPayload {
  _$_JwtPayload(
      {@required this.id,
      @required this.email,
      @required this.role,
      @required this.exp})
      : assert(id != null),
        assert(email != null),
        assert(role != null),
        assert(exp != null);

  @override
  final String id;
  @override
  final String email;
  @override
  final String role;
  @override
  final int exp;

  bool _didisExpired = false;
  bool _isExpired;

  @override
  bool get isExpired {
    if (_didisExpired == false) {
      _didisExpired = true;
      _isExpired = DateTime.fromMillisecondsSinceEpoch(exp * 1000)
          .isBefore(DateTime.now());
    }
    return _isExpired;
  }

  @override
  String toString() {
    return 'JwtPayload(id: $id, email: $email, role: $role, exp: $exp, isExpired: $isExpired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JwtPayload &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(exp);

  @override
  _$JwtPayloadCopyWith<_JwtPayload> get copyWith =>
      __$JwtPayloadCopyWithImpl<_JwtPayload>(this, _$identity);
}

abstract class _JwtPayload implements JwtPayload {
  factory _JwtPayload(
      {@required String id,
      @required String email,
      @required String role,
      @required int exp}) = _$_JwtPayload;

  @override
  String get id;
  @override
  String get email;
  @override
  String get role;
  @override
  int get exp;
  @override
  _$JwtPayloadCopyWith<_JwtPayload> get copyWith;
}
