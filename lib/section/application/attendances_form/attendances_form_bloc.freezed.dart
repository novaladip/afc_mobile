// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'attendances_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AttendancesFormEventTearOff {
  const _$AttendancesFormEventTearOff();

  _OnFormChange onFormChange({@required int index, @required String status}) {
    return _OnFormChange(
      index: index,
      status: status,
    );
  }

  _PopulateFromSectionDetail populateFromSectionDetail(
      SectionDetail sectionDetail) {
    return _PopulateFromSectionDetail(
      sectionDetail,
    );
  }

  _PopulateFromRecognizeResult populateFromRecognizeResult(
      List<AttendanceResult> attendances) {
    return _PopulateFromRecognizeResult(
      attendances,
    );
  }

  _OnSubmit onSubmit() {
    return const _OnSubmit();
  }

  _OnClear onClear() {
    return const _OnClear();
  }
}

// ignore: unused_element
const $AttendancesFormEvent = _$AttendancesFormEventTearOff();

mixin _$AttendancesFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onFormChange(int index, String status),
    @required Result populateFromSectionDetail(SectionDetail sectionDetail),
    @required
        Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    @required Result onSubmit(),
    @required Result onClear(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onFormChange(int index, String status),
    Result populateFromSectionDetail(SectionDetail sectionDetail),
    Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    Result onSubmit(),
    Result onClear(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onFormChange(_OnFormChange value),
    @required
        Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    @required
        Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    @required Result onSubmit(_OnSubmit value),
    @required Result onClear(_OnClear value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onFormChange(_OnFormChange value),
    Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    Result onSubmit(_OnSubmit value),
    Result onClear(_OnClear value),
    @required Result orElse(),
  });
}

abstract class $AttendancesFormEventCopyWith<$Res> {
  factory $AttendancesFormEventCopyWith(AttendancesFormEvent value,
          $Res Function(AttendancesFormEvent) then) =
      _$AttendancesFormEventCopyWithImpl<$Res>;
}

class _$AttendancesFormEventCopyWithImpl<$Res>
    implements $AttendancesFormEventCopyWith<$Res> {
  _$AttendancesFormEventCopyWithImpl(this._value, this._then);

  final AttendancesFormEvent _value;
  // ignore: unused_field
  final $Res Function(AttendancesFormEvent) _then;
}

abstract class _$OnFormChangeCopyWith<$Res> {
  factory _$OnFormChangeCopyWith(
          _OnFormChange value, $Res Function(_OnFormChange) then) =
      __$OnFormChangeCopyWithImpl<$Res>;
  $Res call({int index, String status});
}

class __$OnFormChangeCopyWithImpl<$Res>
    extends _$AttendancesFormEventCopyWithImpl<$Res>
    implements _$OnFormChangeCopyWith<$Res> {
  __$OnFormChangeCopyWithImpl(
      _OnFormChange _value, $Res Function(_OnFormChange) _then)
      : super(_value, (v) => _then(v as _OnFormChange));

  @override
  _OnFormChange get _value => super._value as _OnFormChange;

  @override
  $Res call({
    Object index = freezed,
    Object status = freezed,
  }) {
    return _then(_OnFormChange(
      index: index == freezed ? _value.index : index as int,
      status: status == freezed ? _value.status : status as String,
    ));
  }
}

class _$_OnFormChange implements _OnFormChange {
  const _$_OnFormChange({@required this.index, @required this.status})
      : assert(index != null),
        assert(status != null);

  @override
  final int index;
  @override
  final String status;

  @override
  String toString() {
    return 'AttendancesFormEvent.onFormChange(index: $index, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnFormChange &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$OnFormChangeCopyWith<_OnFormChange> get copyWith =>
      __$OnFormChangeCopyWithImpl<_OnFormChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onFormChange(int index, String status),
    @required Result populateFromSectionDetail(SectionDetail sectionDetail),
    @required
        Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    @required Result onSubmit(),
    @required Result onClear(),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return onFormChange(index, status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onFormChange(int index, String status),
    Result populateFromSectionDetail(SectionDetail sectionDetail),
    Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    Result onSubmit(),
    Result onClear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onFormChange != null) {
      return onFormChange(index, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onFormChange(_OnFormChange value),
    @required
        Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    @required
        Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    @required Result onSubmit(_OnSubmit value),
    @required Result onClear(_OnClear value),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return onFormChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onFormChange(_OnFormChange value),
    Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    Result onSubmit(_OnSubmit value),
    Result onClear(_OnClear value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onFormChange != null) {
      return onFormChange(this);
    }
    return orElse();
  }
}

abstract class _OnFormChange implements AttendancesFormEvent {
  const factory _OnFormChange({@required int index, @required String status}) =
      _$_OnFormChange;

  int get index;
  String get status;
  _$OnFormChangeCopyWith<_OnFormChange> get copyWith;
}

abstract class _$PopulateFromSectionDetailCopyWith<$Res> {
  factory _$PopulateFromSectionDetailCopyWith(_PopulateFromSectionDetail value,
          $Res Function(_PopulateFromSectionDetail) then) =
      __$PopulateFromSectionDetailCopyWithImpl<$Res>;
  $Res call({SectionDetail sectionDetail});
}

class __$PopulateFromSectionDetailCopyWithImpl<$Res>
    extends _$AttendancesFormEventCopyWithImpl<$Res>
    implements _$PopulateFromSectionDetailCopyWith<$Res> {
  __$PopulateFromSectionDetailCopyWithImpl(_PopulateFromSectionDetail _value,
      $Res Function(_PopulateFromSectionDetail) _then)
      : super(_value, (v) => _then(v as _PopulateFromSectionDetail));

  @override
  _PopulateFromSectionDetail get _value =>
      super._value as _PopulateFromSectionDetail;

  @override
  $Res call({
    Object sectionDetail = freezed,
  }) {
    return _then(_PopulateFromSectionDetail(
      sectionDetail == freezed
          ? _value.sectionDetail
          : sectionDetail as SectionDetail,
    ));
  }
}

class _$_PopulateFromSectionDetail implements _PopulateFromSectionDetail {
  const _$_PopulateFromSectionDetail(this.sectionDetail)
      : assert(sectionDetail != null);

  @override
  final SectionDetail sectionDetail;

  @override
  String toString() {
    return 'AttendancesFormEvent.populateFromSectionDetail(sectionDetail: $sectionDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PopulateFromSectionDetail &&
            (identical(other.sectionDetail, sectionDetail) ||
                const DeepCollectionEquality()
                    .equals(other.sectionDetail, sectionDetail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sectionDetail);

  @override
  _$PopulateFromSectionDetailCopyWith<_PopulateFromSectionDetail>
      get copyWith =>
          __$PopulateFromSectionDetailCopyWithImpl<_PopulateFromSectionDetail>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onFormChange(int index, String status),
    @required Result populateFromSectionDetail(SectionDetail sectionDetail),
    @required
        Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    @required Result onSubmit(),
    @required Result onClear(),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return populateFromSectionDetail(sectionDetail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onFormChange(int index, String status),
    Result populateFromSectionDetail(SectionDetail sectionDetail),
    Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    Result onSubmit(),
    Result onClear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (populateFromSectionDetail != null) {
      return populateFromSectionDetail(sectionDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onFormChange(_OnFormChange value),
    @required
        Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    @required
        Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    @required Result onSubmit(_OnSubmit value),
    @required Result onClear(_OnClear value),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return populateFromSectionDetail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onFormChange(_OnFormChange value),
    Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    Result onSubmit(_OnSubmit value),
    Result onClear(_OnClear value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (populateFromSectionDetail != null) {
      return populateFromSectionDetail(this);
    }
    return orElse();
  }
}

abstract class _PopulateFromSectionDetail implements AttendancesFormEvent {
  const factory _PopulateFromSectionDetail(SectionDetail sectionDetail) =
      _$_PopulateFromSectionDetail;

  SectionDetail get sectionDetail;
  _$PopulateFromSectionDetailCopyWith<_PopulateFromSectionDetail> get copyWith;
}

abstract class _$PopulateFromRecognizeResultCopyWith<$Res> {
  factory _$PopulateFromRecognizeResultCopyWith(
          _PopulateFromRecognizeResult value,
          $Res Function(_PopulateFromRecognizeResult) then) =
      __$PopulateFromRecognizeResultCopyWithImpl<$Res>;
  $Res call({List<AttendanceResult> attendances});
}

class __$PopulateFromRecognizeResultCopyWithImpl<$Res>
    extends _$AttendancesFormEventCopyWithImpl<$Res>
    implements _$PopulateFromRecognizeResultCopyWith<$Res> {
  __$PopulateFromRecognizeResultCopyWithImpl(
      _PopulateFromRecognizeResult _value,
      $Res Function(_PopulateFromRecognizeResult) _then)
      : super(_value, (v) => _then(v as _PopulateFromRecognizeResult));

  @override
  _PopulateFromRecognizeResult get _value =>
      super._value as _PopulateFromRecognizeResult;

  @override
  $Res call({
    Object attendances = freezed,
  }) {
    return _then(_PopulateFromRecognizeResult(
      attendances == freezed
          ? _value.attendances
          : attendances as List<AttendanceResult>,
    ));
  }
}

class _$_PopulateFromRecognizeResult implements _PopulateFromRecognizeResult {
  const _$_PopulateFromRecognizeResult(this.attendances)
      : assert(attendances != null);

  @override
  final List<AttendanceResult> attendances;

  @override
  String toString() {
    return 'AttendancesFormEvent.populateFromRecognizeResult(attendances: $attendances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PopulateFromRecognizeResult &&
            (identical(other.attendances, attendances) ||
                const DeepCollectionEquality()
                    .equals(other.attendances, attendances)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(attendances);

  @override
  _$PopulateFromRecognizeResultCopyWith<_PopulateFromRecognizeResult>
      get copyWith => __$PopulateFromRecognizeResultCopyWithImpl<
          _PopulateFromRecognizeResult>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onFormChange(int index, String status),
    @required Result populateFromSectionDetail(SectionDetail sectionDetail),
    @required
        Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    @required Result onSubmit(),
    @required Result onClear(),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return populateFromRecognizeResult(attendances);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onFormChange(int index, String status),
    Result populateFromSectionDetail(SectionDetail sectionDetail),
    Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    Result onSubmit(),
    Result onClear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (populateFromRecognizeResult != null) {
      return populateFromRecognizeResult(attendances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onFormChange(_OnFormChange value),
    @required
        Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    @required
        Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    @required Result onSubmit(_OnSubmit value),
    @required Result onClear(_OnClear value),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return populateFromRecognizeResult(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onFormChange(_OnFormChange value),
    Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    Result onSubmit(_OnSubmit value),
    Result onClear(_OnClear value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (populateFromRecognizeResult != null) {
      return populateFromRecognizeResult(this);
    }
    return orElse();
  }
}

abstract class _PopulateFromRecognizeResult implements AttendancesFormEvent {
  const factory _PopulateFromRecognizeResult(
      List<AttendanceResult> attendances) = _$_PopulateFromRecognizeResult;

  List<AttendanceResult> get attendances;
  _$PopulateFromRecognizeResultCopyWith<_PopulateFromRecognizeResult>
      get copyWith;
}

abstract class _$OnSubmitCopyWith<$Res> {
  factory _$OnSubmitCopyWith(_OnSubmit value, $Res Function(_OnSubmit) then) =
      __$OnSubmitCopyWithImpl<$Res>;
}

class __$OnSubmitCopyWithImpl<$Res>
    extends _$AttendancesFormEventCopyWithImpl<$Res>
    implements _$OnSubmitCopyWith<$Res> {
  __$OnSubmitCopyWithImpl(_OnSubmit _value, $Res Function(_OnSubmit) _then)
      : super(_value, (v) => _then(v as _OnSubmit));

  @override
  _OnSubmit get _value => super._value as _OnSubmit;
}

class _$_OnSubmit implements _OnSubmit {
  const _$_OnSubmit();

  @override
  String toString() {
    return 'AttendancesFormEvent.onSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onFormChange(int index, String status),
    @required Result populateFromSectionDetail(SectionDetail sectionDetail),
    @required
        Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    @required Result onSubmit(),
    @required Result onClear(),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onFormChange(int index, String status),
    Result populateFromSectionDetail(SectionDetail sectionDetail),
    Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    Result onSubmit(),
    Result onClear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSubmit != null) {
      return onSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onFormChange(_OnFormChange value),
    @required
        Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    @required
        Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    @required Result onSubmit(_OnSubmit value),
    @required Result onClear(_OnClear value),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onFormChange(_OnFormChange value),
    Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    Result onSubmit(_OnSubmit value),
    Result onClear(_OnClear value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class _OnSubmit implements AttendancesFormEvent {
  const factory _OnSubmit() = _$_OnSubmit;
}

abstract class _$OnClearCopyWith<$Res> {
  factory _$OnClearCopyWith(_OnClear value, $Res Function(_OnClear) then) =
      __$OnClearCopyWithImpl<$Res>;
}

class __$OnClearCopyWithImpl<$Res>
    extends _$AttendancesFormEventCopyWithImpl<$Res>
    implements _$OnClearCopyWith<$Res> {
  __$OnClearCopyWithImpl(_OnClear _value, $Res Function(_OnClear) _then)
      : super(_value, (v) => _then(v as _OnClear));

  @override
  _OnClear get _value => super._value as _OnClear;
}

class _$_OnClear implements _OnClear {
  const _$_OnClear();

  @override
  String toString() {
    return 'AttendancesFormEvent.onClear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnClear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onFormChange(int index, String status),
    @required Result populateFromSectionDetail(SectionDetail sectionDetail),
    @required
        Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    @required Result onSubmit(),
    @required Result onClear(),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return onClear();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onFormChange(int index, String status),
    Result populateFromSectionDetail(SectionDetail sectionDetail),
    Result populateFromRecognizeResult(List<AttendanceResult> attendances),
    Result onSubmit(),
    Result onClear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onClear != null) {
      return onClear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onFormChange(_OnFormChange value),
    @required
        Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    @required
        Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    @required Result onSubmit(_OnSubmit value),
    @required Result onClear(_OnClear value),
  }) {
    assert(onFormChange != null);
    assert(populateFromSectionDetail != null);
    assert(populateFromRecognizeResult != null);
    assert(onSubmit != null);
    assert(onClear != null);
    return onClear(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onFormChange(_OnFormChange value),
    Result populateFromSectionDetail(_PopulateFromSectionDetail value),
    Result populateFromRecognizeResult(_PopulateFromRecognizeResult value),
    Result onSubmit(_OnSubmit value),
    Result onClear(_OnClear value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onClear != null) {
      return onClear(this);
    }
    return orElse();
  }
}

abstract class _OnClear implements AttendancesFormEvent {
  const factory _OnClear() = _$_OnClear;
}

class _$AttendancesFormStateTearOff {
  const _$AttendancesFormStateTearOff();

  _AttendancesFormState call(
      {@required List<AttendanceFormDto> attendances,
      @required _FormStatus status}) {
    return _AttendancesFormState(
      attendances: attendances,
      status: status,
    );
  }
}

// ignore: unused_element
const $AttendancesFormState = _$AttendancesFormStateTearOff();

mixin _$AttendancesFormState {
  List<AttendanceFormDto> get attendances;
  _FormStatus get status;

  $AttendancesFormStateCopyWith<AttendancesFormState> get copyWith;
}

abstract class $AttendancesFormStateCopyWith<$Res> {
  factory $AttendancesFormStateCopyWith(AttendancesFormState value,
          $Res Function(AttendancesFormState) then) =
      _$AttendancesFormStateCopyWithImpl<$Res>;
  $Res call({List<AttendanceFormDto> attendances, _FormStatus status});

  _$FormStatusCopyWith<$Res> get status;
}

class _$AttendancesFormStateCopyWithImpl<$Res>
    implements $AttendancesFormStateCopyWith<$Res> {
  _$AttendancesFormStateCopyWithImpl(this._value, this._then);

  final AttendancesFormState _value;
  // ignore: unused_field
  final $Res Function(AttendancesFormState) _then;

  @override
  $Res call({
    Object attendances = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      attendances: attendances == freezed
          ? _value.attendances
          : attendances as List<AttendanceFormDto>,
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

abstract class _$AttendancesFormStateCopyWith<$Res>
    implements $AttendancesFormStateCopyWith<$Res> {
  factory _$AttendancesFormStateCopyWith(_AttendancesFormState value,
          $Res Function(_AttendancesFormState) then) =
      __$AttendancesFormStateCopyWithImpl<$Res>;
  @override
  $Res call({List<AttendanceFormDto> attendances, _FormStatus status});

  @override
  _$FormStatusCopyWith<$Res> get status;
}

class __$AttendancesFormStateCopyWithImpl<$Res>
    extends _$AttendancesFormStateCopyWithImpl<$Res>
    implements _$AttendancesFormStateCopyWith<$Res> {
  __$AttendancesFormStateCopyWithImpl(
      _AttendancesFormState _value, $Res Function(_AttendancesFormState) _then)
      : super(_value, (v) => _then(v as _AttendancesFormState));

  @override
  _AttendancesFormState get _value => super._value as _AttendancesFormState;

  @override
  $Res call({
    Object attendances = freezed,
    Object status = freezed,
  }) {
    return _then(_AttendancesFormState(
      attendances: attendances == freezed
          ? _value.attendances
          : attendances as List<AttendanceFormDto>,
      status: status == freezed ? _value.status : status as _FormStatus,
    ));
  }
}

class _$_AttendancesFormState implements _AttendancesFormState {
  const _$_AttendancesFormState(
      {@required this.attendances, @required this.status})
      : assert(attendances != null),
        assert(status != null);

  @override
  final List<AttendanceFormDto> attendances;
  @override
  final _FormStatus status;

  @override
  String toString() {
    return 'AttendancesFormState(attendances: $attendances, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AttendancesFormState &&
            (identical(other.attendances, attendances) ||
                const DeepCollectionEquality()
                    .equals(other.attendances, attendances)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(attendances) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$AttendancesFormStateCopyWith<_AttendancesFormState> get copyWith =>
      __$AttendancesFormStateCopyWithImpl<_AttendancesFormState>(
          this, _$identity);
}

abstract class _AttendancesFormState implements AttendancesFormState {
  const factory _AttendancesFormState(
      {@required List<AttendanceFormDto> attendances,
      @required _FormStatus status}) = _$_AttendancesFormState;

  @override
  List<AttendanceFormDto> get attendances;
  @override
  _FormStatus get status;
  @override
  _$AttendancesFormStateCopyWith<_AttendancesFormState> get copyWith;
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
