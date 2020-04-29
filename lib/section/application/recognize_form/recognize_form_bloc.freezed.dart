// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'recognize_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RecognizeFormEventTearOff {
  const _$RecognizeFormEventTearOff();

  _Clear clear() {
    return const _Clear();
  }

  _PhotoChange photoChange(String photoPath) {
    return _PhotoChange(
      photoPath,
    );
  }

  _Submit submit(String sectionId) {
    return _Submit(
      sectionId,
    );
  }
}

// ignore: unused_element
const $RecognizeFormEvent = _$RecognizeFormEventTearOff();

mixin _$RecognizeFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result clear(),
    @required Result photoChange(String photoPath),
    @required Result submit(String sectionId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result clear(),
    Result photoChange(String photoPath),
    Result submit(String sectionId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result clear(_Clear value),
    @required Result photoChange(_PhotoChange value),
    @required Result submit(_Submit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result clear(_Clear value),
    Result photoChange(_PhotoChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  });
}

abstract class $RecognizeFormEventCopyWith<$Res> {
  factory $RecognizeFormEventCopyWith(
          RecognizeFormEvent value, $Res Function(RecognizeFormEvent) then) =
      _$RecognizeFormEventCopyWithImpl<$Res>;
}

class _$RecognizeFormEventCopyWithImpl<$Res>
    implements $RecognizeFormEventCopyWith<$Res> {
  _$RecognizeFormEventCopyWithImpl(this._value, this._then);

  final RecognizeFormEvent _value;
  // ignore: unused_field
  final $Res Function(RecognizeFormEvent) _then;
}

abstract class _$ClearCopyWith<$Res> {
  factory _$ClearCopyWith(_Clear value, $Res Function(_Clear) then) =
      __$ClearCopyWithImpl<$Res>;
}

class __$ClearCopyWithImpl<$Res> extends _$RecognizeFormEventCopyWithImpl<$Res>
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
    return 'RecognizeFormEvent.clear()';
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
    @required Result clear(),
    @required Result photoChange(String photoPath),
    @required Result submit(String sectionId),
  }) {
    assert(clear != null);
    assert(photoChange != null);
    assert(submit != null);
    return clear();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result clear(),
    Result photoChange(String photoPath),
    Result submit(String sectionId),
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
    @required Result clear(_Clear value),
    @required Result photoChange(_PhotoChange value),
    @required Result submit(_Submit value),
  }) {
    assert(clear != null);
    assert(photoChange != null);
    assert(submit != null);
    return clear(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result clear(_Clear value),
    Result photoChange(_PhotoChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements RecognizeFormEvent {
  const factory _Clear() = _$_Clear;
}

abstract class _$PhotoChangeCopyWith<$Res> {
  factory _$PhotoChangeCopyWith(
          _PhotoChange value, $Res Function(_PhotoChange) then) =
      __$PhotoChangeCopyWithImpl<$Res>;
  $Res call({String photoPath});
}

class __$PhotoChangeCopyWithImpl<$Res>
    extends _$RecognizeFormEventCopyWithImpl<$Res>
    implements _$PhotoChangeCopyWith<$Res> {
  __$PhotoChangeCopyWithImpl(
      _PhotoChange _value, $Res Function(_PhotoChange) _then)
      : super(_value, (v) => _then(v as _PhotoChange));

  @override
  _PhotoChange get _value => super._value as _PhotoChange;

  @override
  $Res call({
    Object photoPath = freezed,
  }) {
    return _then(_PhotoChange(
      photoPath == freezed ? _value.photoPath : photoPath as String,
    ));
  }
}

class _$_PhotoChange implements _PhotoChange {
  const _$_PhotoChange(this.photoPath) : assert(photoPath != null);

  @override
  final String photoPath;

  @override
  String toString() {
    return 'RecognizeFormEvent.photoChange(photoPath: $photoPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoChange &&
            (identical(other.photoPath, photoPath) ||
                const DeepCollectionEquality()
                    .equals(other.photoPath, photoPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photoPath);

  @override
  _$PhotoChangeCopyWith<_PhotoChange> get copyWith =>
      __$PhotoChangeCopyWithImpl<_PhotoChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result clear(),
    @required Result photoChange(String photoPath),
    @required Result submit(String sectionId),
  }) {
    assert(clear != null);
    assert(photoChange != null);
    assert(submit != null);
    return photoChange(photoPath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result clear(),
    Result photoChange(String photoPath),
    Result submit(String sectionId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (photoChange != null) {
      return photoChange(photoPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result clear(_Clear value),
    @required Result photoChange(_PhotoChange value),
    @required Result submit(_Submit value),
  }) {
    assert(clear != null);
    assert(photoChange != null);
    assert(submit != null);
    return photoChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result clear(_Clear value),
    Result photoChange(_PhotoChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (photoChange != null) {
      return photoChange(this);
    }
    return orElse();
  }
}

abstract class _PhotoChange implements RecognizeFormEvent {
  const factory _PhotoChange(String photoPath) = _$_PhotoChange;

  String get photoPath;
  _$PhotoChangeCopyWith<_PhotoChange> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
  $Res call({String sectionId});
}

class __$SubmitCopyWithImpl<$Res> extends _$RecognizeFormEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;

  @override
  $Res call({
    Object sectionId = freezed,
  }) {
    return _then(_Submit(
      sectionId == freezed ? _value.sectionId : sectionId as String,
    ));
  }
}

class _$_Submit implements _Submit {
  const _$_Submit(this.sectionId) : assert(sectionId != null);

  @override
  final String sectionId;

  @override
  String toString() {
    return 'RecognizeFormEvent.submit(sectionId: $sectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submit &&
            (identical(other.sectionId, sectionId) ||
                const DeepCollectionEquality()
                    .equals(other.sectionId, sectionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sectionId);

  @override
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result clear(),
    @required Result photoChange(String photoPath),
    @required Result submit(String sectionId),
  }) {
    assert(clear != null);
    assert(photoChange != null);
    assert(submit != null);
    return submit(sectionId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result clear(),
    Result photoChange(String photoPath),
    Result submit(String sectionId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(sectionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result clear(_Clear value),
    @required Result photoChange(_PhotoChange value),
    @required Result submit(_Submit value),
  }) {
    assert(clear != null);
    assert(photoChange != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result clear(_Clear value),
    Result photoChange(_PhotoChange value),
    Result submit(_Submit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements RecognizeFormEvent {
  const factory _Submit(String sectionId) = _$_Submit;

  String get sectionId;
  _$SubmitCopyWith<_Submit> get copyWith;
}

class _$RecognizeFormStateTearOff {
  const _$RecognizeFormStateTearOff();

  _RecognizeFormState call(
      {@required String photoPath,
      @required @nullable RecognizeResult result,
      @required _FormStatus status}) {
    return _RecognizeFormState(
      photoPath: photoPath,
      result: result,
      status: status,
    );
  }
}

// ignore: unused_element
const $RecognizeFormState = _$RecognizeFormStateTearOff();

mixin _$RecognizeFormState {
  String get photoPath;
  @nullable
  RecognizeResult get result;
  _FormStatus get status;

  $RecognizeFormStateCopyWith<RecognizeFormState> get copyWith;
}

abstract class $RecognizeFormStateCopyWith<$Res> {
  factory $RecognizeFormStateCopyWith(
          RecognizeFormState value, $Res Function(RecognizeFormState) then) =
      _$RecognizeFormStateCopyWithImpl<$Res>;
  $Res call(
      {String photoPath, @nullable RecognizeResult result, _FormStatus status});

  _$FormStatusCopyWith<$Res> get status;
}

class _$RecognizeFormStateCopyWithImpl<$Res>
    implements $RecognizeFormStateCopyWith<$Res> {
  _$RecognizeFormStateCopyWithImpl(this._value, this._then);

  final RecognizeFormState _value;
  // ignore: unused_field
  final $Res Function(RecognizeFormState) _then;

  @override
  $Res call({
    Object photoPath = freezed,
    Object result = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      photoPath: photoPath == freezed ? _value.photoPath : photoPath as String,
      result: result == freezed ? _value.result : result as RecognizeResult,
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

abstract class _$RecognizeFormStateCopyWith<$Res>
    implements $RecognizeFormStateCopyWith<$Res> {
  factory _$RecognizeFormStateCopyWith(
          _RecognizeFormState value, $Res Function(_RecognizeFormState) then) =
      __$RecognizeFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String photoPath, @nullable RecognizeResult result, _FormStatus status});

  @override
  _$FormStatusCopyWith<$Res> get status;
}

class __$RecognizeFormStateCopyWithImpl<$Res>
    extends _$RecognizeFormStateCopyWithImpl<$Res>
    implements _$RecognizeFormStateCopyWith<$Res> {
  __$RecognizeFormStateCopyWithImpl(
      _RecognizeFormState _value, $Res Function(_RecognizeFormState) _then)
      : super(_value, (v) => _then(v as _RecognizeFormState));

  @override
  _RecognizeFormState get _value => super._value as _RecognizeFormState;

  @override
  $Res call({
    Object photoPath = freezed,
    Object result = freezed,
    Object status = freezed,
  }) {
    return _then(_RecognizeFormState(
      photoPath: photoPath == freezed ? _value.photoPath : photoPath as String,
      result: result == freezed ? _value.result : result as RecognizeResult,
      status: status == freezed ? _value.status : status as _FormStatus,
    ));
  }
}

class _$_RecognizeFormState implements _RecognizeFormState {
  const _$_RecognizeFormState(
      {@required this.photoPath,
      @required @nullable this.result,
      @required this.status})
      : assert(photoPath != null),
        assert(status != null);

  @override
  final String photoPath;
  @override
  @nullable
  final RecognizeResult result;
  @override
  final _FormStatus status;

  @override
  String toString() {
    return 'RecognizeFormState(photoPath: $photoPath, result: $result, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecognizeFormState &&
            (identical(other.photoPath, photoPath) ||
                const DeepCollectionEquality()
                    .equals(other.photoPath, photoPath)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoPath) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$RecognizeFormStateCopyWith<_RecognizeFormState> get copyWith =>
      __$RecognizeFormStateCopyWithImpl<_RecognizeFormState>(this, _$identity);
}

abstract class _RecognizeFormState implements RecognizeFormState {
  const factory _RecognizeFormState(
      {@required String photoPath,
      @required @nullable RecognizeResult result,
      @required _FormStatus status}) = _$_RecognizeFormState;

  @override
  String get photoPath;
  @override
  @nullable
  RecognizeResult get result;
  @override
  _FormStatus get status;
  @override
  _$RecognizeFormStateCopyWith<_RecognizeFormState> get copyWith;
}

class _$_FormStatusTearOff {
  const _$_FormStatusTearOff();

  _FormStatusFailure failure() {
    return const _FormStatusFailure();
  }

  _FormStatusInitial initial() {
    return const _FormStatusInitial();
  }

  _FormStatusSubmitting submitting() {
    return const _FormStatusSubmitting();
  }

  _FormStatusSuccess success(RecognizeResult result) {
    return _FormStatusSuccess(
      result,
    );
  }
}

// ignore: unused_element
const _$FormStatus = _$_FormStatusTearOff();

mixin _$_FormStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(RecognizeResult result),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(),
    Result initial(),
    Result submitting(),
    Result success(RecognizeResult result),
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
}

class __$FormStatusFailureCopyWithImpl<$Res>
    extends __$FormStatusCopyWithImpl<$Res>
    implements _$FormStatusFailureCopyWith<$Res> {
  __$FormStatusFailureCopyWithImpl(
      _FormStatusFailure _value, $Res Function(_FormStatusFailure) _then)
      : super(_value, (v) => _then(v as _FormStatusFailure));

  @override
  _FormStatusFailure get _value => super._value as _FormStatusFailure;
}

class _$_FormStatusFailure implements _FormStatusFailure {
  const _$_FormStatusFailure();

  @override
  String toString() {
    return '_FormStatus.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FormStatusFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(RecognizeResult result),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(),
    Result initial(),
    Result submitting(),
    Result success(RecognizeResult result),
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
  const factory _FormStatusFailure() = _$_FormStatusFailure;
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
    @required Result failure(),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(RecognizeResult result),
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
    Result failure(),
    Result initial(),
    Result submitting(),
    Result success(RecognizeResult result),
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
    @required Result failure(),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(RecognizeResult result),
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
    Result failure(),
    Result initial(),
    Result submitting(),
    Result success(RecognizeResult result),
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
  $Res call({RecognizeResult result});
}

class __$FormStatusSuccessCopyWithImpl<$Res>
    extends __$FormStatusCopyWithImpl<$Res>
    implements _$FormStatusSuccessCopyWith<$Res> {
  __$FormStatusSuccessCopyWithImpl(
      _FormStatusSuccess _value, $Res Function(_FormStatusSuccess) _then)
      : super(_value, (v) => _then(v as _FormStatusSuccess));

  @override
  _FormStatusSuccess get _value => super._value as _FormStatusSuccess;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_FormStatusSuccess(
      result == freezed ? _value.result : result as RecognizeResult,
    ));
  }
}

class _$_FormStatusSuccess implements _FormStatusSuccess {
  const _$_FormStatusSuccess(this.result) : assert(result != null);

  @override
  final RecognizeResult result;

  @override
  String toString() {
    return '_FormStatus.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormStatusSuccess &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  _$FormStatusSuccessCopyWith<_FormStatusSuccess> get copyWith =>
      __$FormStatusSuccessCopyWithImpl<_FormStatusSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(),
    @required Result initial(),
    @required Result submitting(),
    @required Result success(RecognizeResult result),
  }) {
    assert(failure != null);
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    return success(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(),
    Result initial(),
    Result submitting(),
    Result success(RecognizeResult result),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(result);
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
  const factory _FormStatusSuccess(RecognizeResult result) =
      _$_FormStatusSuccess;

  RecognizeResult get result;
  _$FormStatusSuccessCopyWith<_FormStatusSuccess> get copyWith;
}
