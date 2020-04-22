// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  _changeEmail changeEmail(String email) {
    return _changeEmail(
      email,
    );
  }

  _changeFirstName changeFirstName(String firstName) {
    return _changeFirstName(
      firstName,
    );
  }

  _changeLastName changeLastName(String lastName) {
    return _changeLastName(
      lastName,
    );
  }

  _changePassword changePassword(String password) {
    return _changePassword(
      password,
    );
  }

  _changeAvatarPath changeAvatarPath(String avatarPath) {
    return _changeAvatarPath(
      avatarPath,
    );
  }

  _submit submit(bool teacher) {
    return _submit(
      teacher,
    );
  }

  _clearForm clearForm() {
    return const _clearForm();
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
    @required Result changeEmail(_changeEmail value),
    @required Result changeFirstName(_changeFirstName value),
    @required Result changeLastName(_changeLastName value),
    @required Result changePassword(_changePassword value),
    @required Result changeAvatarPath(_changeAvatarPath value),
    @required Result submit(_submit value),
    @required Result clearForm(_clearForm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeEmail(_changeEmail value),
    Result changeFirstName(_changeFirstName value),
    Result changeLastName(_changeLastName value),
    Result changePassword(_changePassword value),
    Result changeAvatarPath(_changeAvatarPath value),
    Result submit(_submit value),
    Result clearForm(_clearForm value),
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

abstract class _$changeEmailCopyWith<$Res> {
  factory _$changeEmailCopyWith(
          _changeEmail value, $Res Function(_changeEmail) then) =
      __$changeEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

class __$changeEmailCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$changeEmailCopyWith<$Res> {
  __$changeEmailCopyWithImpl(
      _changeEmail _value, $Res Function(_changeEmail) _then)
      : super(_value, (v) => _then(v as _changeEmail));

  @override
  _changeEmail get _value => super._value as _changeEmail;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_changeEmail(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$_changeEmail implements _changeEmail {
  const _$_changeEmail(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _changeEmail &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$changeEmailCopyWith<_changeEmail> get copyWith =>
      __$changeEmailCopyWithImpl<_changeEmail>(this, _$identity);

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
    @required Result changeEmail(_changeEmail value),
    @required Result changeFirstName(_changeFirstName value),
    @required Result changeLastName(_changeLastName value),
    @required Result changePassword(_changePassword value),
    @required Result changeAvatarPath(_changeAvatarPath value),
    @required Result submit(_submit value),
    @required Result clearForm(_clearForm value),
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
    Result changeEmail(_changeEmail value),
    Result changeFirstName(_changeFirstName value),
    Result changeLastName(_changeLastName value),
    Result changePassword(_changePassword value),
    Result changeAvatarPath(_changeAvatarPath value),
    Result submit(_submit value),
    Result clearForm(_clearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _changeEmail implements RegisterEvent {
  const factory _changeEmail(String email) = _$_changeEmail;

  String get email;
  _$changeEmailCopyWith<_changeEmail> get copyWith;
}

abstract class _$changeFirstNameCopyWith<$Res> {
  factory _$changeFirstNameCopyWith(
          _changeFirstName value, $Res Function(_changeFirstName) then) =
      __$changeFirstNameCopyWithImpl<$Res>;
  $Res call({String firstName});
}

class __$changeFirstNameCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$changeFirstNameCopyWith<$Res> {
  __$changeFirstNameCopyWithImpl(
      _changeFirstName _value, $Res Function(_changeFirstName) _then)
      : super(_value, (v) => _then(v as _changeFirstName));

  @override
  _changeFirstName get _value => super._value as _changeFirstName;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(_changeFirstName(
      firstName == freezed ? _value.firstName : firstName as String,
    ));
  }
}

class _$_changeFirstName implements _changeFirstName {
  const _$_changeFirstName(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'RegisterEvent.changeFirstName(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _changeFirstName &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @override
  _$changeFirstNameCopyWith<_changeFirstName> get copyWith =>
      __$changeFirstNameCopyWithImpl<_changeFirstName>(this, _$identity);

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
    @required Result changeEmail(_changeEmail value),
    @required Result changeFirstName(_changeFirstName value),
    @required Result changeLastName(_changeLastName value),
    @required Result changePassword(_changePassword value),
    @required Result changeAvatarPath(_changeAvatarPath value),
    @required Result submit(_submit value),
    @required Result clearForm(_clearForm value),
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
    Result changeEmail(_changeEmail value),
    Result changeFirstName(_changeFirstName value),
    Result changeLastName(_changeLastName value),
    Result changePassword(_changePassword value),
    Result changeAvatarPath(_changeAvatarPath value),
    Result submit(_submit value),
    Result clearForm(_clearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeFirstName != null) {
      return changeFirstName(this);
    }
    return orElse();
  }
}

abstract class _changeFirstName implements RegisterEvent {
  const factory _changeFirstName(String firstName) = _$_changeFirstName;

  String get firstName;
  _$changeFirstNameCopyWith<_changeFirstName> get copyWith;
}

abstract class _$changeLastNameCopyWith<$Res> {
  factory _$changeLastNameCopyWith(
          _changeLastName value, $Res Function(_changeLastName) then) =
      __$changeLastNameCopyWithImpl<$Res>;
  $Res call({String lastName});
}

class __$changeLastNameCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$changeLastNameCopyWith<$Res> {
  __$changeLastNameCopyWithImpl(
      _changeLastName _value, $Res Function(_changeLastName) _then)
      : super(_value, (v) => _then(v as _changeLastName));

  @override
  _changeLastName get _value => super._value as _changeLastName;

  @override
  $Res call({
    Object lastName = freezed,
  }) {
    return _then(_changeLastName(
      lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

class _$_changeLastName implements _changeLastName {
  const _$_changeLastName(this.lastName) : assert(lastName != null);

  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterEvent.changeLastName(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _changeLastName &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @override
  _$changeLastNameCopyWith<_changeLastName> get copyWith =>
      __$changeLastNameCopyWithImpl<_changeLastName>(this, _$identity);

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
    @required Result changeEmail(_changeEmail value),
    @required Result changeFirstName(_changeFirstName value),
    @required Result changeLastName(_changeLastName value),
    @required Result changePassword(_changePassword value),
    @required Result changeAvatarPath(_changeAvatarPath value),
    @required Result submit(_submit value),
    @required Result clearForm(_clearForm value),
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
    Result changeEmail(_changeEmail value),
    Result changeFirstName(_changeFirstName value),
    Result changeLastName(_changeLastName value),
    Result changePassword(_changePassword value),
    Result changeAvatarPath(_changeAvatarPath value),
    Result submit(_submit value),
    Result clearForm(_clearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeLastName != null) {
      return changeLastName(this);
    }
    return orElse();
  }
}

abstract class _changeLastName implements RegisterEvent {
  const factory _changeLastName(String lastName) = _$_changeLastName;

  String get lastName;
  _$changeLastNameCopyWith<_changeLastName> get copyWith;
}

abstract class _$changePasswordCopyWith<$Res> {
  factory _$changePasswordCopyWith(
          _changePassword value, $Res Function(_changePassword) then) =
      __$changePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

class __$changePasswordCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$changePasswordCopyWith<$Res> {
  __$changePasswordCopyWithImpl(
      _changePassword _value, $Res Function(_changePassword) _then)
      : super(_value, (v) => _then(v as _changePassword));

  @override
  _changePassword get _value => super._value as _changePassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_changePassword(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_changePassword implements _changePassword {
  const _$_changePassword(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.changePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _changePassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$changePasswordCopyWith<_changePassword> get copyWith =>
      __$changePasswordCopyWithImpl<_changePassword>(this, _$identity);

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
    @required Result changeEmail(_changeEmail value),
    @required Result changeFirstName(_changeFirstName value),
    @required Result changeLastName(_changeLastName value),
    @required Result changePassword(_changePassword value),
    @required Result changeAvatarPath(_changeAvatarPath value),
    @required Result submit(_submit value),
    @required Result clearForm(_clearForm value),
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
    Result changeEmail(_changeEmail value),
    Result changeFirstName(_changeFirstName value),
    Result changeLastName(_changeLastName value),
    Result changePassword(_changePassword value),
    Result changeAvatarPath(_changeAvatarPath value),
    Result submit(_submit value),
    Result clearForm(_clearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _changePassword implements RegisterEvent {
  const factory _changePassword(String password) = _$_changePassword;

  String get password;
  _$changePasswordCopyWith<_changePassword> get copyWith;
}

abstract class _$changeAvatarPathCopyWith<$Res> {
  factory _$changeAvatarPathCopyWith(
          _changeAvatarPath value, $Res Function(_changeAvatarPath) then) =
      __$changeAvatarPathCopyWithImpl<$Res>;
  $Res call({String avatarPath});
}

class __$changeAvatarPathCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$changeAvatarPathCopyWith<$Res> {
  __$changeAvatarPathCopyWithImpl(
      _changeAvatarPath _value, $Res Function(_changeAvatarPath) _then)
      : super(_value, (v) => _then(v as _changeAvatarPath));

  @override
  _changeAvatarPath get _value => super._value as _changeAvatarPath;

  @override
  $Res call({
    Object avatarPath = freezed,
  }) {
    return _then(_changeAvatarPath(
      avatarPath == freezed ? _value.avatarPath : avatarPath as String,
    ));
  }
}

class _$_changeAvatarPath implements _changeAvatarPath {
  const _$_changeAvatarPath(this.avatarPath) : assert(avatarPath != null);

  @override
  final String avatarPath;

  @override
  String toString() {
    return 'RegisterEvent.changeAvatarPath(avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _changeAvatarPath &&
            (identical(other.avatarPath, avatarPath) ||
                const DeepCollectionEquality()
                    .equals(other.avatarPath, avatarPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(avatarPath);

  @override
  _$changeAvatarPathCopyWith<_changeAvatarPath> get copyWith =>
      __$changeAvatarPathCopyWithImpl<_changeAvatarPath>(this, _$identity);

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
    @required Result changeEmail(_changeEmail value),
    @required Result changeFirstName(_changeFirstName value),
    @required Result changeLastName(_changeLastName value),
    @required Result changePassword(_changePassword value),
    @required Result changeAvatarPath(_changeAvatarPath value),
    @required Result submit(_submit value),
    @required Result clearForm(_clearForm value),
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
    Result changeEmail(_changeEmail value),
    Result changeFirstName(_changeFirstName value),
    Result changeLastName(_changeLastName value),
    Result changePassword(_changePassword value),
    Result changeAvatarPath(_changeAvatarPath value),
    Result submit(_submit value),
    Result clearForm(_clearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeAvatarPath != null) {
      return changeAvatarPath(this);
    }
    return orElse();
  }
}

abstract class _changeAvatarPath implements RegisterEvent {
  const factory _changeAvatarPath(String avatarPath) = _$_changeAvatarPath;

  String get avatarPath;
  _$changeAvatarPathCopyWith<_changeAvatarPath> get copyWith;
}

abstract class _$submitCopyWith<$Res> {
  factory _$submitCopyWith(_submit value, $Res Function(_submit) then) =
      __$submitCopyWithImpl<$Res>;
  $Res call({bool teacher});
}

class __$submitCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$submitCopyWith<$Res> {
  __$submitCopyWithImpl(_submit _value, $Res Function(_submit) _then)
      : super(_value, (v) => _then(v as _submit));

  @override
  _submit get _value => super._value as _submit;

  @override
  $Res call({
    Object teacher = freezed,
  }) {
    return _then(_submit(
      teacher == freezed ? _value.teacher : teacher as bool,
    ));
  }
}

class _$_submit implements _submit {
  const _$_submit(this.teacher) : assert(teacher != null);

  @override
  final bool teacher;

  @override
  String toString() {
    return 'RegisterEvent.submit(teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _submit &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality().equals(other.teacher, teacher)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(teacher);

  @override
  _$submitCopyWith<_submit> get copyWith =>
      __$submitCopyWithImpl<_submit>(this, _$identity);

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
    @required Result changeEmail(_changeEmail value),
    @required Result changeFirstName(_changeFirstName value),
    @required Result changeLastName(_changeLastName value),
    @required Result changePassword(_changePassword value),
    @required Result changeAvatarPath(_changeAvatarPath value),
    @required Result submit(_submit value),
    @required Result clearForm(_clearForm value),
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
    Result changeEmail(_changeEmail value),
    Result changeFirstName(_changeFirstName value),
    Result changeLastName(_changeLastName value),
    Result changePassword(_changePassword value),
    Result changeAvatarPath(_changeAvatarPath value),
    Result submit(_submit value),
    Result clearForm(_clearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _submit implements RegisterEvent {
  const factory _submit(bool teacher) = _$_submit;

  bool get teacher;
  _$submitCopyWith<_submit> get copyWith;
}

abstract class _$clearFormCopyWith<$Res> {
  factory _$clearFormCopyWith(
          _clearForm value, $Res Function(_clearForm) then) =
      __$clearFormCopyWithImpl<$Res>;
}

class __$clearFormCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$clearFormCopyWith<$Res> {
  __$clearFormCopyWithImpl(_clearForm _value, $Res Function(_clearForm) _then)
      : super(_value, (v) => _then(v as _clearForm));

  @override
  _clearForm get _value => super._value as _clearForm;
}

class _$_clearForm implements _clearForm {
  const _$_clearForm();

  @override
  String toString() {
    return 'RegisterEvent.clearForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _clearForm);
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
    @required Result changeEmail(_changeEmail value),
    @required Result changeFirstName(_changeFirstName value),
    @required Result changeLastName(_changeLastName value),
    @required Result changePassword(_changePassword value),
    @required Result changeAvatarPath(_changeAvatarPath value),
    @required Result submit(_submit value),
    @required Result clearForm(_clearForm value),
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
    Result changeEmail(_changeEmail value),
    Result changeFirstName(_changeFirstName value),
    Result changeLastName(_changeLastName value),
    Result changePassword(_changePassword value),
    Result changeAvatarPath(_changeAvatarPath value),
    Result submit(_submit value),
    Result clearForm(_clearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearForm != null) {
      return clearForm(this);
    }
    return orElse();
  }
}

abstract class _clearForm implements RegisterEvent {
  const factory _clearForm() = _$_clearForm;
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
