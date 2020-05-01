// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$EditProfileEventTearOff {
  const _$EditProfileEventTearOff();

  _AvatarChanged avatarChanged(String avatarPath) {
    return _AvatarChanged(
      avatarPath,
    );
  }

  _Submit submit() {
    return const _Submit();
  }

  _Clear clear() {
    return const _Clear();
  }
}

// ignore: unused_element
const $EditProfileEvent = _$EditProfileEventTearOff();

mixin _$EditProfileEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarChanged(String avatarPath),
    @required Result submit(),
    @required Result clear(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarChanged(String avatarPath),
    Result submit(),
    Result clear(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarChanged(_AvatarChanged value),
    @required Result submit(_Submit value),
    @required Result clear(_Clear value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarChanged(_AvatarChanged value),
    Result submit(_Submit value),
    Result clear(_Clear value),
    @required Result orElse(),
  });
}

abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
}

class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;
}

abstract class _$AvatarChangedCopyWith<$Res> {
  factory _$AvatarChangedCopyWith(
          _AvatarChanged value, $Res Function(_AvatarChanged) then) =
      __$AvatarChangedCopyWithImpl<$Res>;
  $Res call({String avatarPath});
}

class __$AvatarChangedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$AvatarChangedCopyWith<$Res> {
  __$AvatarChangedCopyWithImpl(
      _AvatarChanged _value, $Res Function(_AvatarChanged) _then)
      : super(_value, (v) => _then(v as _AvatarChanged));

  @override
  _AvatarChanged get _value => super._value as _AvatarChanged;

  @override
  $Res call({
    Object avatarPath = freezed,
  }) {
    return _then(_AvatarChanged(
      avatarPath == freezed ? _value.avatarPath : avatarPath as String,
    ));
  }
}

class _$_AvatarChanged implements _AvatarChanged {
  const _$_AvatarChanged(this.avatarPath) : assert(avatarPath != null);

  @override
  final String avatarPath;

  @override
  String toString() {
    return 'EditProfileEvent.avatarChanged(avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvatarChanged &&
            (identical(other.avatarPath, avatarPath) ||
                const DeepCollectionEquality()
                    .equals(other.avatarPath, avatarPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(avatarPath);

  @override
  _$AvatarChangedCopyWith<_AvatarChanged> get copyWith =>
      __$AvatarChangedCopyWithImpl<_AvatarChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarChanged(String avatarPath),
    @required Result submit(),
    @required Result clear(),
  }) {
    assert(avatarChanged != null);
    assert(submit != null);
    assert(clear != null);
    return avatarChanged(avatarPath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarChanged(String avatarPath),
    Result submit(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarChanged != null) {
      return avatarChanged(avatarPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarChanged(_AvatarChanged value),
    @required Result submit(_Submit value),
    @required Result clear(_Clear value),
  }) {
    assert(avatarChanged != null);
    assert(submit != null);
    assert(clear != null);
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarChanged(_AvatarChanged value),
    Result submit(_Submit value),
    Result clear(_Clear value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class _AvatarChanged implements EditProfileEvent {
  const factory _AvatarChanged(String avatarPath) = _$_AvatarChanged;

  String get avatarPath;
  _$AvatarChangedCopyWith<_AvatarChanged> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

class __$SubmitCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'EditProfileEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarChanged(String avatarPath),
    @required Result submit(),
    @required Result clear(),
  }) {
    assert(avatarChanged != null);
    assert(submit != null);
    assert(clear != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarChanged(String avatarPath),
    Result submit(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarChanged(_AvatarChanged value),
    @required Result submit(_Submit value),
    @required Result clear(_Clear value),
  }) {
    assert(avatarChanged != null);
    assert(submit != null);
    assert(clear != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarChanged(_AvatarChanged value),
    Result submit(_Submit value),
    Result clear(_Clear value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements EditProfileEvent {
  const factory _Submit() = _$_Submit;
}

abstract class _$ClearCopyWith<$Res> {
  factory _$ClearCopyWith(_Clear value, $Res Function(_Clear) then) =
      __$ClearCopyWithImpl<$Res>;
}

class __$ClearCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$ClearCopyWith<$Res> {
  __$ClearCopyWithImpl(_Clear _value, $Res Function(_Clear) _then)
      : super(_value, (v) => _then(v as _Clear));

  @override
  _Clear get _value => super._value as _Clear;
}

class _$_Clear implements _Clear {
  const _$_Clear();

  @override
  String toString() {
    return 'EditProfileEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result avatarChanged(String avatarPath),
    @required Result submit(),
    @required Result clear(),
  }) {
    assert(avatarChanged != null);
    assert(submit != null);
    assert(clear != null);
    return clear();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result avatarChanged(String avatarPath),
    Result submit(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result avatarChanged(_AvatarChanged value),
    @required Result submit(_Submit value),
    @required Result clear(_Clear value),
  }) {
    assert(avatarChanged != null);
    assert(submit != null);
    assert(clear != null);
    return clear(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result avatarChanged(_AvatarChanged value),
    Result submit(_Submit value),
    Result clear(_Clear value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements EditProfileEvent {
  const factory _Clear() = _$_Clear;
}

class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

  _EditProfileState call(
      {@required String avatarPath, @required _FormStatus status}) {
    return _EditProfileState(
      avatarPath: avatarPath,
      status: status,
    );
  }
}

// ignore: unused_element
const $EditProfileState = _$EditProfileStateTearOff();

mixin _$EditProfileState {
  String get avatarPath;
  _FormStatus get status;

  $EditProfileStateCopyWith<EditProfileState> get copyWith;
}

abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call({String avatarPath, _FormStatus status});

  _$FormStatusCopyWith<$Res> get status;
}

class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object avatarPath = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      avatarPath:
          avatarPath == freezed ? _value.avatarPath : avatarPath as String,
      status: status == freezed ? _value.status : status as _FormStatus,
    ));
  }

  @override
  _$FormStatusCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return _$FormStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

abstract class _$EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(
          _EditProfileState value, $Res Function(_EditProfileState) then) =
      __$EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({String avatarPath, _FormStatus status});

  @override
  _$FormStatusCopyWith<$Res> get status;
}

class __$EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(
      _EditProfileState _value, $Res Function(_EditProfileState) _then)
      : super(_value, (v) => _then(v as _EditProfileState));

  @override
  _EditProfileState get _value => super._value as _EditProfileState;

  @override
  $Res call({
    Object avatarPath = freezed,
    Object status = freezed,
  }) {
    return _then(_EditProfileState(
      avatarPath:
          avatarPath == freezed ? _value.avatarPath : avatarPath as String,
      status: status == freezed ? _value.status : status as _FormStatus,
    ));
  }
}

class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState({@required this.avatarPath, @required this.status})
      : assert(avatarPath != null),
        assert(status != null);

  @override
  final String avatarPath;
  @override
  final _FormStatus status;

  @override
  String toString() {
    return 'EditProfileState(avatarPath: $avatarPath, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileState &&
            (identical(other.avatarPath, avatarPath) ||
                const DeepCollectionEquality()
                    .equals(other.avatarPath, avatarPath)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(avatarPath) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {@required String avatarPath,
      @required _FormStatus status}) = _$_EditProfileState;

  @override
  String get avatarPath;
  @override
  _FormStatus get status;
  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith;
}

class _$_FormStatusTearOff {
  const _$_FormStatusTearOff();

  _FormStatusFailure failure(String message) {
    return _FormStatusFailure(
      message,
    );
  }

  _FormStatusInitial initial() {
    return const _FormStatusInitial();
  }

  _FormStatusSubmitting submitting() {
    return const _FormStatusSubmitting();
  }

  _FormStatusSuccess success() {
    return const _FormStatusSuccess();
  }
}

// ignore: unused_element
const _$FormStatus = _$_FormStatusTearOff();

mixin _$_FormStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(String message),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(String message),
    Result initial(),
    Result submitting(),
    Result success(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failure(_FormStatusFailure value),
    @required Result initial(_FormStatusInitial value),
    @required Result submitting(_FormStatusSubmitting value),
    @required Result success(_FormStatusSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_FormStatusFailure value),
    Result initial(_FormStatusInitial value),
    Result submitting(_FormStatusSubmitting value),
    Result success(_FormStatusSuccess value),
    @required Result orElse(),
  });
}

abstract class _$FormStatusCopyWith<$Res> {
  factory _$FormStatusCopyWith(
          _FormStatus value, $Res Function(_FormStatus) then) =
      __$FormStatusCopyWithImpl<$Res>;
}

class __$FormStatusCopyWithImpl<$Res> implements _$FormStatusCopyWith<$Res> {
  __$FormStatusCopyWithImpl(this._value, this._then);

  final _FormStatus _value;
  // ignore: unused_field
  final $Res Function(_FormStatus) _then;
}

abstract class _$FormStatusFailureCopyWith<$Res> {
  factory _$FormStatusFailureCopyWith(
          _FormStatusFailure value, $Res Function(_FormStatusFailure) then) =
      __$FormStatusFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$FormStatusFailureCopyWithImpl<$Res>
    extends __$FormStatusCopyWithImpl<$Res>
    implements _$FormStatusFailureCopyWith<$Res> {
  __$FormStatusFailureCopyWithImpl(
      _FormStatusFailure _value, $Res Function(_FormStatusFailure) _then)
      : super(_value, (v) => _then(v as _FormStatusFailure));

  @override
  _FormStatusFailure get _value => super._value as _FormStatusFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_FormStatusFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_FormStatusFailure implements _FormStatusFailure {
  const _$_FormStatusFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return '_FormStatus.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormStatusFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$FormStatusFailureCopyWith<_FormStatusFailure> get copyWith =>
      __$FormStatusFailureCopyWithImpl<_FormStatusFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(String message),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(String message),
    Result initial(),
    Result submitting(),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failure(_FormStatusFailure value),
    @required Result initial(_FormStatusInitial value),
    @required Result submitting(_FormStatusSubmitting value),
    @required Result success(_FormStatusSuccess value),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_FormStatusFailure value),
    Result initial(_FormStatusInitial value),
    Result submitting(_FormStatusSubmitting value),
    Result success(_FormStatusSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FormStatusFailure implements _FormStatus {
  const factory _FormStatusFailure(String message) = _$_FormStatusFailure;

  String get message;
  _$FormStatusFailureCopyWith<_FormStatusFailure> get copyWith;
}

abstract class _$FormStatusInitialCopyWith<$Res> {
  factory _$FormStatusInitialCopyWith(
          _FormStatusInitial value, $Res Function(_FormStatusInitial) then) =
      __$FormStatusInitialCopyWithImpl<$Res>;
}

class __$FormStatusInitialCopyWithImpl<$Res>
    extends __$FormStatusCopyWithImpl<$Res>
    implements _$FormStatusInitialCopyWith<$Res> {
  __$FormStatusInitialCopyWithImpl(
      _FormStatusInitial _value, $Res Function(_FormStatusInitial) _then)
      : super(_value, (v) => _then(v as _FormStatusInitial));

  @override
  _FormStatusInitial get _value => super._value as _FormStatusInitial;
}

class _$_FormStatusInitial implements _FormStatusInitial {
  const _$_FormStatusInitial();

  @override
  String toString() {
    return '_FormStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FormStatusInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(String message),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(String message),
    Result initial(),
    Result submitting(),
    Result success(),
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
    @required Result failure(_FormStatusFailure value),
    @required Result initial(_FormStatusInitial value),
    @required Result submitting(_FormStatusSubmitting value),
    @required Result success(_FormStatusSuccess value),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_FormStatusFailure value),
    Result initial(_FormStatusInitial value),
    Result submitting(_FormStatusSubmitting value),
    Result success(_FormStatusSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FormStatusInitial implements _FormStatus {
  const factory _FormStatusInitial() = _$_FormStatusInitial;
}

abstract class _$FormStatusSubmittingCopyWith<$Res> {
  factory _$FormStatusSubmittingCopyWith(_FormStatusSubmitting value,
          $Res Function(_FormStatusSubmitting) then) =
      __$FormStatusSubmittingCopyWithImpl<$Res>;
}

class __$FormStatusSubmittingCopyWithImpl<$Res>
    extends __$FormStatusCopyWithImpl<$Res>
    implements _$FormStatusSubmittingCopyWith<$Res> {
  __$FormStatusSubmittingCopyWithImpl(
      _FormStatusSubmitting _value, $Res Function(_FormStatusSubmitting) _then)
      : super(_value, (v) => _then(v as _FormStatusSubmitting));

  @override
  _FormStatusSubmitting get _value => super._value as _FormStatusSubmitting;
}

class _$_FormStatusSubmitting implements _FormStatusSubmitting {
  const _$_FormStatusSubmitting();

  @override
  String toString() {
    return '_FormStatus.submitting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FormStatusSubmitting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(String message),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return submitting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(String message),
    Result initial(),
    Result submitting(),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitting != null) {
      return submitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failure(_FormStatusFailure value),
    @required Result initial(_FormStatusInitial value),
    @required Result submitting(_FormStatusSubmitting value),
    @required Result success(_FormStatusSuccess value),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_FormStatusFailure value),
    Result initial(_FormStatusInitial value),
    Result submitting(_FormStatusSubmitting value),
    Result success(_FormStatusSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _FormStatusSubmitting implements _FormStatus {
  const factory _FormStatusSubmitting() = _$_FormStatusSubmitting;
}

abstract class _$FormStatusSuccessCopyWith<$Res> {
  factory _$FormStatusSuccessCopyWith(
          _FormStatusSuccess value, $Res Function(_FormStatusSuccess) then) =
      __$FormStatusSuccessCopyWithImpl<$Res>;
}

class __$FormStatusSuccessCopyWithImpl<$Res>
    extends __$FormStatusCopyWithImpl<$Res>
    implements _$FormStatusSuccessCopyWith<$Res> {
  __$FormStatusSuccessCopyWithImpl(
      _FormStatusSuccess _value, $Res Function(_FormStatusSuccess) _then)
      : super(_value, (v) => _then(v as _FormStatusSuccess));

  @override
  _FormStatusSuccess get _value => super._value as _FormStatusSuccess;
}

class _$_FormStatusSuccess implements _FormStatusSuccess {
  const _$_FormStatusSuccess();

  @override
  String toString() {
    return '_FormStatus.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FormStatusSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(String message),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(String message),
    Result initial(),
    Result submitting(),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failure(_FormStatusFailure value),
    @required Result initial(_FormStatusInitial value),
    @required Result submitting(_FormStatusSubmitting value),
    @required Result success(_FormStatusSuccess value),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_FormStatusFailure value),
    Result initial(_FormStatusInitial value),
    Result submitting(_FormStatusSubmitting value),
    Result success(_FormStatusSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FormStatusSuccess implements _FormStatus {
  const factory _FormStatusSuccess() = _$_FormStatusSuccess;
}
