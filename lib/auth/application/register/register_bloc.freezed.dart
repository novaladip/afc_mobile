// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  _ChangeEmail changeEmail(String email) {
    return _ChangeEmail(
      email,
    );
  }

  _ChangeFirstName changeFirstName(String firstName) {
    return _ChangeFirstName(
      firstName,
    );
  }

  _ChangeLastName changeLastName(String lastName) {
    return _ChangeLastName(
      lastName,
    );
  }

  _ChangePassword changePassword(String password) {
    return _ChangePassword(
      password,
    );
  }

  _ChangeAvatarPath changeAvatarPath(String avatarPath) {
    return _ChangeAvatarPath(
      avatarPath,
    );
  }

  _Submit submit(bool teacher) {
    return _Submit(
      teacher,
    );
  }

  _ClearForm clearForm() {
    return const _ClearForm();
  }
}

// ignore: unused_element
const $RegisterEvent = _$RegisterEventTearOff();

mixin _$RegisterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeEmail(String email),
    @required Result changeFirstName(String firstName),
    @required Result changeLastName(String lastName),
    @required Result changePassword(String password),
    @required Result changeAvatarPath(String avatarPath),
    @required Result submit(bool teacher),
    @required Result clearForm(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeEmail(String email),
    Result changeFirstName(String firstName),
    Result changeLastName(String lastName),
    Result changePassword(String password),
    Result changeAvatarPath(String avatarPath),
    Result submit(bool teacher),
    Result clearForm(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeEmail(_ChangeEmail value),
    @required Result changeFirstName(_ChangeFirstName value),
    @required Result changeLastName(_ChangeLastName value),
    @required Result changePassword(_ChangePassword value),
    @required Result changeAvatarPath(_ChangeAvatarPath value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_ChangeEmail value),
    Result changeFirstName(_ChangeFirstName value),
    Result changeLastName(_ChangeLastName value),
    Result changePassword(_ChangePassword value),
    Result changeAvatarPath(_ChangeAvatarPath value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  });
}

abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

abstract class _$ChangeEmailCopyWith<$Res> {
  factory _$ChangeEmailCopyWith(
          _ChangeEmail value, $Res Function(_ChangeEmail) then) =
      __$ChangeEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

class __$ChangeEmailCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ChangeEmailCopyWith<$Res> {
  __$ChangeEmailCopyWithImpl(
      _ChangeEmail _value, $Res Function(_ChangeEmail) _then)
      : super(_value, (v) => _then(v as _ChangeEmail));

  @override
  _ChangeEmail get _value => super._value as _ChangeEmail;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_ChangeEmail(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$_ChangeEmail implements _ChangeEmail {
  const _$_ChangeEmail(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith =>
      __$ChangeEmailCopyWithImpl<_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeEmail(String email),
    @required Result changeFirstName(String firstName),
    @required Result changeLastName(String lastName),
    @required Result changePassword(String password),
    @required Result changeAvatarPath(String avatarPath),
    @required Result submit(bool teacher),
    @required Result clearForm(),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeEmail(String email),
    Result changeFirstName(String firstName),
    Result changeLastName(String lastName),
    Result changePassword(String password),
    Result changeAvatarPath(String avatarPath),
    Result submit(bool teacher),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeEmail(_ChangeEmail value),
    @required Result changeFirstName(_ChangeFirstName value),
    @required Result changeLastName(_ChangeLastName value),
    @required Result changePassword(_ChangePassword value),
    @required Result changeAvatarPath(_ChangeAvatarPath value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_ChangeEmail value),
    Result changeFirstName(_ChangeFirstName value),
    Result changeLastName(_ChangeLastName value),
    Result changePassword(_ChangePassword value),
    Result changeAvatarPath(_ChangeAvatarPath value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements RegisterEvent {
  const factory _ChangeEmail(String email) = _$_ChangeEmail;

  String get email;
  _$ChangeEmailCopyWith<_ChangeEmail> get copyWith;
}

abstract class _$ChangeFirstNameCopyWith<$Res> {
  factory _$ChangeFirstNameCopyWith(
          _ChangeFirstName value, $Res Function(_ChangeFirstName) then) =
      __$ChangeFirstNameCopyWithImpl<$Res>;
  $Res call({String firstName});
}

class __$ChangeFirstNameCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ChangeFirstNameCopyWith<$Res> {
  __$ChangeFirstNameCopyWithImpl(
      _ChangeFirstName _value, $Res Function(_ChangeFirstName) _then)
      : super(_value, (v) => _then(v as _ChangeFirstName));

  @override
  _ChangeFirstName get _value => super._value as _ChangeFirstName;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(_ChangeFirstName(
      firstName == freezed ? _value.firstName : firstName as String,
    ));
  }
}

class _$_ChangeFirstName implements _ChangeFirstName {
  const _$_ChangeFirstName(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'RegisterEvent.changeFirstName(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeFirstName &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @override
  _$ChangeFirstNameCopyWith<_ChangeFirstName> get copyWith =>
      __$ChangeFirstNameCopyWithImpl<_ChangeFirstName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeEmail(String email),
    @required Result changeFirstName(String firstName),
    @required Result changeLastName(String lastName),
    @required Result changePassword(String password),
    @required Result changeAvatarPath(String avatarPath),
    @required Result submit(bool teacher),
    @required Result clearForm(),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeFirstName(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeEmail(String email),
    Result changeFirstName(String firstName),
    Result changeLastName(String lastName),
    Result changePassword(String password),
    Result changeAvatarPath(String avatarPath),
    Result submit(bool teacher),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeFirstName != null) {
      return changeFirstName(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeEmail(_ChangeEmail value),
    @required Result changeFirstName(_ChangeFirstName value),
    @required Result changeLastName(_ChangeLastName value),
    @required Result changePassword(_ChangePassword value),
    @required Result changeAvatarPath(_ChangeAvatarPath value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeFirstName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_ChangeEmail value),
    Result changeFirstName(_ChangeFirstName value),
    Result changeLastName(_ChangeLastName value),
    Result changePassword(_ChangePassword value),
    Result changeAvatarPath(_ChangeAvatarPath value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class _ChangeFirstName implements RegisterEvent {
  const factory _ChangeFirstName(String firstName) = _$_ChangeFirstName;

  String get firstName;
  _$ChangeFirstNameCopyWith<_ChangeFirstName> get copyWith;
}

abstract class _$ChangeLastNameCopyWith<$Res> {
  factory _$ChangeLastNameCopyWith(
          _ChangeLastName value, $Res Function(_ChangeLastName) then) =
      __$ChangeLastNameCopyWithImpl<$Res>;
  $Res call({String lastName});
}

class __$ChangeLastNameCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ChangeLastNameCopyWith<$Res> {
  __$ChangeLastNameCopyWithImpl(
      _ChangeLastName _value, $Res Function(_ChangeLastName) _then)
      : super(_value, (v) => _then(v as _ChangeLastName));

  @override
  _ChangeLastName get _value => super._value as _ChangeLastName;

  @override
  $Res call({
    Object lastName = freezed,
  }) {
    return _then(_ChangeLastName(
      lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

class _$_ChangeLastName implements _ChangeLastName {
  const _$_ChangeLastName(this.lastName) : assert(lastName != null);

  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterEvent.changeLastName(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeLastName &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @override
  _$ChangeLastNameCopyWith<_ChangeLastName> get copyWith =>
      __$ChangeLastNameCopyWithImpl<_ChangeLastName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeEmail(String email),
    @required Result changeFirstName(String firstName),
    @required Result changeLastName(String lastName),
    @required Result changePassword(String password),
    @required Result changeAvatarPath(String avatarPath),
    @required Result submit(bool teacher),
    @required Result clearForm(),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeLastName(lastName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeEmail(String email),
    Result changeFirstName(String firstName),
    Result changeLastName(String lastName),
    Result changePassword(String password),
    Result changeAvatarPath(String avatarPath),
    Result submit(bool teacher),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeLastName != null) {
      return changeLastName(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeEmail(_ChangeEmail value),
    @required Result changeFirstName(_ChangeFirstName value),
    @required Result changeLastName(_ChangeLastName value),
    @required Result changePassword(_ChangePassword value),
    @required Result changeAvatarPath(_ChangeAvatarPath value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeLastName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_ChangeEmail value),
    Result changeFirstName(_ChangeFirstName value),
    Result changeLastName(_ChangeLastName value),
    Result changePassword(_ChangePassword value),
    Result changeAvatarPath(_ChangeAvatarPath value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class _ChangeLastName implements RegisterEvent {
  const factory _ChangeLastName(String lastName) = _$_ChangeLastName;

  String get lastName;
  _$ChangeLastNameCopyWith<_ChangeLastName> get copyWith;
}

abstract class _$ChangePasswordCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$ChangePasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_ChangePassword(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.changePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeEmail(String email),
    @required Result changeFirstName(String firstName),
    @required Result changeLastName(String lastName),
    @required Result changePassword(String password),
    @required Result changeAvatarPath(String avatarPath),
    @required Result submit(bool teacher),
    @required Result clearForm(),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeEmail(String email),
    Result changeFirstName(String firstName),
    Result changeLastName(String lastName),
    Result changePassword(String password),
    Result changeAvatarPath(String avatarPath),
    Result submit(bool teacher),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeEmail(_ChangeEmail value),
    @required Result changeFirstName(_ChangeFirstName value),
    @required Result changeLastName(_ChangeLastName value),
    @required Result changePassword(_ChangePassword value),
    @required Result changeAvatarPath(_ChangeAvatarPath value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_ChangeEmail value),
    Result changeFirstName(_ChangeFirstName value),
    Result changeLastName(_ChangeLastName value),
    Result changePassword(_ChangePassword value),
    Result changeAvatarPath(_ChangeAvatarPath value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements RegisterEvent {
  const factory _ChangePassword(String password) = _$_ChangePassword;

  String get password;
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith;
}

abstract class _$ChangeAvatarPathCopyWith<$Res> {
  factory _$ChangeAvatarPathCopyWith(
          _ChangeAvatarPath value, $Res Function(_ChangeAvatarPath) then) =
      __$ChangeAvatarPathCopyWithImpl<$Res>;
  $Res call({String avatarPath});
}

class __$ChangeAvatarPathCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ChangeAvatarPathCopyWith<$Res> {
  __$ChangeAvatarPathCopyWithImpl(
      _ChangeAvatarPath _value, $Res Function(_ChangeAvatarPath) _then)
      : super(_value, (v) => _then(v as _ChangeAvatarPath));

  @override
  _ChangeAvatarPath get _value => super._value as _ChangeAvatarPath;

  @override
  $Res call({
    Object avatarPath = freezed,
  }) {
    return _then(_ChangeAvatarPath(
      avatarPath == freezed ? _value.avatarPath : avatarPath as String,
    ));
  }
}

class _$_ChangeAvatarPath implements _ChangeAvatarPath {
  const _$_ChangeAvatarPath(this.avatarPath) : assert(avatarPath != null);

  @override
  final String avatarPath;

  @override
  String toString() {
    return 'RegisterEvent.changeAvatarPath(avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAvatarPath &&
            (identical(other.avatarPath, avatarPath) ||
                const DeepCollectionEquality()
                    .equals(other.avatarPath, avatarPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(avatarPath);

  @override
  _$ChangeAvatarPathCopyWith<_ChangeAvatarPath> get copyWith =>
      __$ChangeAvatarPathCopyWithImpl<_ChangeAvatarPath>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeEmail(String email),
    @required Result changeFirstName(String firstName),
    @required Result changeLastName(String lastName),
    @required Result changePassword(String password),
    @required Result changeAvatarPath(String avatarPath),
    @required Result submit(bool teacher),
    @required Result clearForm(),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeAvatarPath(avatarPath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeEmail(String email),
    Result changeFirstName(String firstName),
    Result changeLastName(String lastName),
    Result changePassword(String password),
    Result changeAvatarPath(String avatarPath),
    Result submit(bool teacher),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeAvatarPath != null) {
      return changeAvatarPath(avatarPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeEmail(_ChangeEmail value),
    @required Result changeFirstName(_ChangeFirstName value),
    @required Result changeLastName(_ChangeLastName value),
    @required Result changePassword(_ChangePassword value),
    @required Result changeAvatarPath(_ChangeAvatarPath value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeAvatarPath(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_ChangeEmail value),
    Result changeFirstName(_ChangeFirstName value),
    Result changeLastName(_ChangeLastName value),
    Result changePassword(_ChangePassword value),
    Result changeAvatarPath(_ChangeAvatarPath value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeAvatarPath != null) {
      return changeAvatarPath(this);
    }
    return orElse();
  }
}

abstract class _ChangeAvatarPath implements RegisterEvent {
  const factory _ChangeAvatarPath(String avatarPath) = _$_ChangeAvatarPath;

  String get avatarPath;
  _$ChangeAvatarPathCopyWith<_ChangeAvatarPath> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  $Res call({bool teacher});
}

class __$SubmitCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;

  @override
  $Res call({
    Object teacher = freezed,
  }) {
    return _then(_Submit(
      teacher == freezed ? _value.teacher : teacher as bool,
    ));
  }
}

class _$_Submit implements _Submit {
  const _$_Submit(this.teacher) : assert(teacher != null);

  @override
  final bool teacher;

  @override
  String toString() {
    return 'RegisterEvent.submit(teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submit &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality().equals(other.teacher, teacher)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(teacher);

  @override
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeEmail(String email),
    @required Result changeFirstName(String firstName),
    @required Result changeLastName(String lastName),
    @required Result changePassword(String password),
    @required Result changeAvatarPath(String avatarPath),
    @required Result submit(bool teacher),
    @required Result clearForm(),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return submit(teacher);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeEmail(String email),
    Result changeFirstName(String firstName),
    Result changeLastName(String lastName),
    Result changePassword(String password),
    Result changeAvatarPath(String avatarPath),
    Result submit(bool teacher),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(teacher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeEmail(_ChangeEmail value),
    @required Result changeFirstName(_ChangeFirstName value),
    @required Result changeLastName(_ChangeLastName value),
    @required Result changePassword(_ChangePassword value),
    @required Result changeAvatarPath(_ChangeAvatarPath value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_ChangeEmail value),
    Result changeFirstName(_ChangeFirstName value),
    Result changeLastName(_ChangeLastName value),
    Result changePassword(_ChangePassword value),
    Result changeAvatarPath(_ChangeAvatarPath value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements RegisterEvent {
  const factory _Submit(bool teacher) = _$_Submit;

  bool get teacher;
  _$SubmitCopyWith<_Submit> get copyWith;
}

abstract class _$ClearFormCopyWith<$Res> {
  factory _$ClearFormCopyWith(
          _ClearForm value, $Res Function(_ClearForm) then) =
      __$ClearFormCopyWithImpl<$Res>;
}

class __$ClearFormCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ClearFormCopyWith<$Res> {
  __$ClearFormCopyWithImpl(_ClearForm _value, $Res Function(_ClearForm) _then)
      : super(_value, (v) => _then(v as _ClearForm));

  @override
  _ClearForm get _value => super._value as _ClearForm;
}

class _$_ClearForm implements _ClearForm {
  const _$_ClearForm();

  @override
  String toString() {
    return 'RegisterEvent.clearForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeEmail(String email),
    @required Result changeFirstName(String firstName),
    @required Result changeLastName(String lastName),
    @required Result changePassword(String password),
    @required Result changeAvatarPath(String avatarPath),
    @required Result submit(bool teacher),
    @required Result clearForm(),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return clearForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeEmail(String email),
    Result changeFirstName(String firstName),
    Result changeLastName(String lastName),
    Result changePassword(String password),
    Result changeAvatarPath(String avatarPath),
    Result submit(bool teacher),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearForm != null) {
      return clearForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeEmail(_ChangeEmail value),
    @required Result changeFirstName(_ChangeFirstName value),
    @required Result changeLastName(_ChangeLastName value),
    @required Result changePassword(_ChangePassword value),
    @required Result changeAvatarPath(_ChangeAvatarPath value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeEmail != null);
    assert(changeFirstName != null);
    assert(changeLastName != null);
    assert(changePassword != null);
    assert(changeAvatarPath != null);
    assert(submit != null);
    assert(clearForm != null);
    return clearForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_ChangeEmail value),
    Result changeFirstName(_ChangeFirstName value),
    Result changeLastName(_ChangeLastName value),
    Result changePassword(_ChangePassword value),
    Result changeAvatarPath(_ChangeAvatarPath value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearForm != null) {
      return clearForm(this);
    }
    return orElse();
  }
}

abstract class _ClearForm implements RegisterEvent {
  const factory _ClearForm() = _$_ClearForm;
}

class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {@required String email,
      @required String firstName,
      @required String lastName,
      @required String password,
      @required String avatarPath,
      @required bool isSubmitting,
      @required bool isFailure,
      @required bool isSuccess}) {
    return _RegisterState(
      email: email,
      firstName: firstName,
      lastName: lastName,
      password: password,
      avatarPath: avatarPath,
      isSubmitting: isSubmitting,
      isFailure: isFailure,
      isSuccess: isSuccess,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  String get email;
  String get firstName;
  String get lastName;
  String get password;
  String get avatarPath;
  bool get isSubmitting;
  bool get isFailure;
  bool get isSuccess;

  $RegisterStateCopyWith<RegisterState> get copyWith;
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String firstName,
      String lastName,
      String password,
      String avatarPath,
      bool isSubmitting,
      bool isFailure,
      bool isSuccess});
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object password = freezed,
    Object avatarPath = freezed,
    Object isSubmitting = freezed,
    Object isFailure = freezed,
    Object isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      password: password == freezed ? _value.password : password as String,
      avatarPath:
          avatarPath == freezed ? _value.avatarPath : avatarPath as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
    ));
  }
}

abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String firstName,
      String lastName,
      String password,
      String avatarPath,
      bool isSubmitting,
      bool isFailure,
      bool isSuccess});
}

class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object email = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object password = freezed,
    Object avatarPath = freezed,
    Object isSubmitting = freezed,
    Object isFailure = freezed,
    Object isSuccess = freezed,
  }) {
    return _then(_RegisterState(
      email: email == freezed ? _value.email : email as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      password: password == freezed ? _value.password : password as String,
      avatarPath:
          avatarPath == freezed ? _value.avatarPath : avatarPath as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
    ));
  }
}

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {@required this.email,
      @required this.firstName,
      @required this.lastName,
      @required this.password,
      @required this.avatarPath,
      @required this.isSubmitting,
      @required this.isFailure,
      @required this.isSuccess})
      : assert(email != null),
        assert(firstName != null),
        assert(lastName != null),
        assert(password != null),
        assert(avatarPath != null),
        assert(isSubmitting != null),
        assert(isFailure != null),
        assert(isSuccess != null);

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String password;
  @override
  final String avatarPath;
  @override
  final bool isSubmitting;
  @override
  final bool isFailure;
  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'RegisterState(email: $email, firstName: $firstName, lastName: $lastName, password: $password, avatarPath: $avatarPath, isSubmitting: $isSubmitting, isFailure: $isFailure, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.avatarPath, avatarPath) ||
                const DeepCollectionEquality()
                    .equals(other.avatarPath, avatarPath)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(avatarPath) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(isSuccess);

  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {@required String email,
      @required String firstName,
      @required String lastName,
      @required String password,
      @required String avatarPath,
      @required bool isSubmitting,
      @required bool isFailure,
      @required bool isSuccess}) = _$_RegisterState;

  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get password;
  @override
  String get avatarPath;
  @override
  bool get isSubmitting;
  @override
  bool get isFailure;
  @override
  bool get isSuccess;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}
