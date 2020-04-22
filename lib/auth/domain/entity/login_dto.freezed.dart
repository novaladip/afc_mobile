// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginDtoTearOff {
  const _$LoginDtoTearOff();

  _LoginDto call({@required String email, @required String password}) {
    return _LoginDto(
      email: email,
      password: password,
    );
  }
}

// ignore: unused_element
const $LoginDto = _$LoginDtoTearOff();

mixin _$LoginDto {
  String get email;
  String get password;

  $LoginDtoCopyWith<LoginDto> get copyWith;
}

abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$LoginDtoCopyWithImpl<$Res> implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  final LoginDto _value;
  // ignore: unused_field
  final $Res Function(LoginDto) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class _$LoginDtoCopyWith<$Res> implements $LoginDtoCopyWith<$Res> {
  factory _$LoginDtoCopyWith(_LoginDto value, $Res Function(_LoginDto) then) =
      __$LoginDtoCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

class __$LoginDtoCopyWithImpl<$Res> extends _$LoginDtoCopyWithImpl<$Res>
    implements _$LoginDtoCopyWith<$Res> {
  __$LoginDtoCopyWithImpl(_LoginDto _value, $Res Function(_LoginDto) _then)
      : super(_value, (v) => _then(v as _LoginDto));

  @override
  _LoginDto get _value => super._value as _LoginDto;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginDto(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_LoginDto implements _LoginDto {
  _$_LoginDto({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  bool _didtoFormData = false;
  FormData _toFormData;

  @override
  FormData get toFormData {
    if (_didtoFormData == false) {
      _didtoFormData = true;
      _toFormData = FormData.fromMap({
        'email': email.toLowerCase().trim(),
        'password': password,
      });
    }
    return _toFormData;
  }

  @override
  String toString() {
    return 'LoginDto(email: $email, password: $password, toFormData: $toFormData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$LoginDtoCopyWith<_LoginDto> get copyWith =>
      __$LoginDtoCopyWithImpl<_LoginDto>(this, _$identity);
}

abstract class _LoginDto implements LoginDto {
  factory _LoginDto({@required String email, @required String password}) =
      _$_LoginDto;

  @override
  String get email;
  @override
  String get password;
  @override
  _$LoginDtoCopyWith<_LoginDto> get copyWith;
}
