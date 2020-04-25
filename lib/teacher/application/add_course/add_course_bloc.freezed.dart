// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'add_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddCourseEventTearOff {
  const _$AddCourseEventTearOff();

  _ChangeName changeName(String name) {
    return _ChangeName(
      name,
    );
  }

  _ChangeDate changeCloseDate(String date) {
    return _ChangeDate(
      date,
    );
  }

  _Submit submit() {
    return const _Submit();
  }

  _ClearForm clearForm() {
    return const _ClearForm();
  }
}

// ignore: unused_element
const $AddCourseEvent = _$AddCourseEventTearOff();

mixin _$AddCourseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeName(String name),
    @required Result changeCloseDate(String date),
    @required Result submit(),
    @required Result clearForm(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeName(String name),
    Result changeCloseDate(String date),
    Result submit(),
    Result clearForm(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeName(_ChangeName value),
    @required Result changeCloseDate(_ChangeDate value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeName(_ChangeName value),
    Result changeCloseDate(_ChangeDate value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  });
}

abstract class $AddCourseEventCopyWith<$Res> {
  factory $AddCourseEventCopyWith(
          AddCourseEvent value, $Res Function(AddCourseEvent) then) =
      _$AddCourseEventCopyWithImpl<$Res>;
}

class _$AddCourseEventCopyWithImpl<$Res>
    implements $AddCourseEventCopyWith<$Res> {
  _$AddCourseEventCopyWithImpl(this._value, this._then);

  final AddCourseEvent _value;
  // ignore: unused_field
  final $Res Function(AddCourseEvent) _then;
}

abstract class _$ChangeNameCopyWith<$Res> {
  factory _$ChangeNameCopyWith(
          _ChangeName value, $Res Function(_ChangeName) then) =
      __$ChangeNameCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$ChangeNameCopyWithImpl<$Res> extends _$AddCourseEventCopyWithImpl<$Res>
    implements _$ChangeNameCopyWith<$Res> {
  __$ChangeNameCopyWithImpl(
      _ChangeName _value, $Res Function(_ChangeName) _then)
      : super(_value, (v) => _then(v as _ChangeName));

  @override
  _ChangeName get _value => super._value as _ChangeName;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ChangeName(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_ChangeName implements _ChangeName {
  const _$_ChangeName(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'AddCourseEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$ChangeNameCopyWith<_ChangeName> get copyWith =>
      __$ChangeNameCopyWithImpl<_ChangeName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeName(String name),
    @required Result changeCloseDate(String date),
    @required Result submit(),
    @required Result clearForm(),
  }) {
    assert(changeName != null);
    assert(changeCloseDate != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeName(String name),
    Result changeCloseDate(String date),
    Result submit(),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeName(_ChangeName value),
    @required Result changeCloseDate(_ChangeDate value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeName != null);
    assert(changeCloseDate != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeName(_ChangeName value),
    Result changeCloseDate(_ChangeDate value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements AddCourseEvent {
  const factory _ChangeName(String name) = _$_ChangeName;

  String get name;
  _$ChangeNameCopyWith<_ChangeName> get copyWith;
}

abstract class _$ChangeDateCopyWith<$Res> {
  factory _$ChangeDateCopyWith(
          _ChangeDate value, $Res Function(_ChangeDate) then) =
      __$ChangeDateCopyWithImpl<$Res>;
  $Res call({String date});
}

class __$ChangeDateCopyWithImpl<$Res> extends _$AddCourseEventCopyWithImpl<$Res>
    implements _$ChangeDateCopyWith<$Res> {
  __$ChangeDateCopyWithImpl(
      _ChangeDate _value, $Res Function(_ChangeDate) _then)
      : super(_value, (v) => _then(v as _ChangeDate));

  @override
  _ChangeDate get _value => super._value as _ChangeDate;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_ChangeDate(
      date == freezed ? _value.date : date as String,
    ));
  }
}

class _$_ChangeDate implements _ChangeDate {
  const _$_ChangeDate(this.date) : assert(date != null);

  @override
  final String date;

  @override
  String toString() {
    return 'AddCourseEvent.changeCloseDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDate &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  _$ChangeDateCopyWith<_ChangeDate> get copyWith =>
      __$ChangeDateCopyWithImpl<_ChangeDate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeName(String name),
    @required Result changeCloseDate(String date),
    @required Result submit(),
    @required Result clearForm(),
  }) {
    assert(changeName != null);
    assert(changeCloseDate != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeCloseDate(date);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeName(String name),
    Result changeCloseDate(String date),
    Result submit(),
    Result clearForm(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeCloseDate != null) {
      return changeCloseDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeName(_ChangeName value),
    @required Result changeCloseDate(_ChangeDate value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeName != null);
    assert(changeCloseDate != null);
    assert(submit != null);
    assert(clearForm != null);
    return changeCloseDate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeName(_ChangeName value),
    Result changeCloseDate(_ChangeDate value),
    Result submit(_Submit value),
    Result clearForm(_ClearForm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeCloseDate != null) {
      return changeCloseDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeDate implements AddCourseEvent {
  const factory _ChangeDate(String date) = _$_ChangeDate;

  String get date;
  _$ChangeDateCopyWith<_ChangeDate> get copyWith;
}

abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

class __$SubmitCopyWithImpl<$Res> extends _$AddCourseEventCopyWithImpl<$Res>
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
    return 'AddCourseEvent.submit()';
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
    @required Result changeName(String name),
    @required Result changeCloseDate(String date),
    @required Result submit(),
    @required Result clearForm(),
  }) {
    assert(changeName != null);
    assert(changeCloseDate != null);
    assert(submit != null);
    assert(clearForm != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeName(String name),
    Result changeCloseDate(String date),
    Result submit(),
    Result clearForm(),
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
    @required Result changeName(_ChangeName value),
    @required Result changeCloseDate(_ChangeDate value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeName != null);
    assert(changeCloseDate != null);
    assert(submit != null);
    assert(clearForm != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeName(_ChangeName value),
    Result changeCloseDate(_ChangeDate value),
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

abstract class _Submit implements AddCourseEvent {
  const factory _Submit() = _$_Submit;
}

abstract class _$ClearFormCopyWith<$Res> {
  factory _$ClearFormCopyWith(
          _ClearForm value, $Res Function(_ClearForm) then) =
      __$ClearFormCopyWithImpl<$Res>;
}

class __$ClearFormCopyWithImpl<$Res> extends _$AddCourseEventCopyWithImpl<$Res>
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
    return 'AddCourseEvent.clearForm()';
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
    @required Result changeName(String name),
    @required Result changeCloseDate(String date),
    @required Result submit(),
    @required Result clearForm(),
  }) {
    assert(changeName != null);
    assert(changeCloseDate != null);
    assert(submit != null);
    assert(clearForm != null);
    return clearForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeName(String name),
    Result changeCloseDate(String date),
    Result submit(),
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
    @required Result changeName(_ChangeName value),
    @required Result changeCloseDate(_ChangeDate value),
    @required Result submit(_Submit value),
    @required Result clearForm(_ClearForm value),
  }) {
    assert(changeName != null);
    assert(changeCloseDate != null);
    assert(submit != null);
    assert(clearForm != null);
    return clearForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeName(_ChangeName value),
    Result changeCloseDate(_ChangeDate value),
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

abstract class _ClearForm implements AddCourseEvent {
  const factory _ClearForm() = _$_ClearForm;
}

class _$AddCourseStateTearOff {
  const _$AddCourseStateTearOff();

  _AddCourseState call(
      {@required CreateCourseDto createCourseDto,
      @required FormStatus status}) {
    return _AddCourseState(
      createCourseDto: createCourseDto,
      status: status,
    );
  }
}

// ignore: unused_element
const $AddCourseState = _$AddCourseStateTearOff();

mixin _$AddCourseState {
  CreateCourseDto get createCourseDto;
  FormStatus get status;

  $AddCourseStateCopyWith<AddCourseState> get copyWith;
}

abstract class $AddCourseStateCopyWith<$Res> {
  factory $AddCourseStateCopyWith(
          AddCourseState value, $Res Function(AddCourseState) then) =
      _$AddCourseStateCopyWithImpl<$Res>;
  $Res call({CreateCourseDto createCourseDto, FormStatus status});

  $CreateCourseDtoCopyWith<$Res> get createCourseDto;
  $FormStatusCopyWith<$Res> get status;
}

class _$AddCourseStateCopyWithImpl<$Res>
    implements $AddCourseStateCopyWith<$Res> {
  _$AddCourseStateCopyWithImpl(this._value, this._then);

  final AddCourseState _value;
  // ignore: unused_field
  final $Res Function(AddCourseState) _then;

  @override
  $Res call({
    Object createCourseDto = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      createCourseDto: createCourseDto == freezed
          ? _value.createCourseDto
          : createCourseDto as CreateCourseDto,
      status: status == freezed ? _value.status : status as FormStatus,
    ));
  }

  @override
  $CreateCourseDtoCopyWith<$Res> get createCourseDto {
    if (_value.createCourseDto == null) {
      return null;
    }
    return $CreateCourseDtoCopyWith<$Res>(_value.createCourseDto, (value) {
      return _then(_value.copyWith(createCourseDto: value));
    });
  }

  @override
  $FormStatusCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $FormStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

abstract class _$AddCourseStateCopyWith<$Res>
    implements $AddCourseStateCopyWith<$Res> {
  factory _$AddCourseStateCopyWith(
          _AddCourseState value, $Res Function(_AddCourseState) then) =
      __$AddCourseStateCopyWithImpl<$Res>;
  @override
  $Res call({CreateCourseDto createCourseDto, FormStatus status});

  @override
  $CreateCourseDtoCopyWith<$Res> get createCourseDto;
  @override
  $FormStatusCopyWith<$Res> get status;
}

class __$AddCourseStateCopyWithImpl<$Res>
    extends _$AddCourseStateCopyWithImpl<$Res>
    implements _$AddCourseStateCopyWith<$Res> {
  __$AddCourseStateCopyWithImpl(
      _AddCourseState _value, $Res Function(_AddCourseState) _then)
      : super(_value, (v) => _then(v as _AddCourseState));

  @override
  _AddCourseState get _value => super._value as _AddCourseState;

  @override
  $Res call({
    Object createCourseDto = freezed,
    Object status = freezed,
  }) {
    return _then(_AddCourseState(
      createCourseDto: createCourseDto == freezed
          ? _value.createCourseDto
          : createCourseDto as CreateCourseDto,
      status: status == freezed ? _value.status : status as FormStatus,
    ));
  }
}

class _$_AddCourseState implements _AddCourseState {
  const _$_AddCourseState(
      {@required this.createCourseDto, @required this.status})
      : assert(createCourseDto != null),
        assert(status != null);

  @override
  final CreateCourseDto createCourseDto;
  @override
  final FormStatus status;

  @override
  String toString() {
    return 'AddCourseState(createCourseDto: $createCourseDto, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCourseState &&
            (identical(other.createCourseDto, createCourseDto) ||
                const DeepCollectionEquality()
                    .equals(other.createCourseDto, createCourseDto)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createCourseDto) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$AddCourseStateCopyWith<_AddCourseState> get copyWith =>
      __$AddCourseStateCopyWithImpl<_AddCourseState>(this, _$identity);
}

abstract class _AddCourseState implements AddCourseState {
  const factory _AddCourseState(
      {@required CreateCourseDto createCourseDto,
      @required FormStatus status}) = _$_AddCourseState;

  @override
  CreateCourseDto get createCourseDto;
  @override
  FormStatus get status;
  @override
  _$AddCourseStateCopyWith<_AddCourseState> get copyWith;
}

class _$FormStatusTearOff {
  const _$FormStatusTearOff();

  _FormInitial initial() {
    return const _FormInitial();
  }

  _FormSubmitting submitting() {
    return const _FormSubmitting();
  }

  _FormSuccess success(Course course) {
    return _FormSuccess(
      course,
    );
  }

  _FormFailure failure() {
    return const _FormFailure();
  }
}

// ignore: unused_element
const $FormStatus = _$FormStatusTearOff();

mixin _$FormStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitting(),
    @required Result success(Course course),
    @required Result failure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitting(),
    Result success(Course course),
    Result failure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_FormInitial value),
    @required Result submitting(_FormSubmitting value),
    @required Result success(_FormSuccess value),
    @required Result failure(_FormFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_FormInitial value),
    Result submitting(_FormSubmitting value),
    Result success(_FormSuccess value),
    Result failure(_FormFailure value),
    @required Result orElse(),
  });
}

abstract class $FormStatusCopyWith<$Res> {
  factory $FormStatusCopyWith(
          FormStatus value, $Res Function(FormStatus) then) =
      _$FormStatusCopyWithImpl<$Res>;
}

class _$FormStatusCopyWithImpl<$Res> implements $FormStatusCopyWith<$Res> {
  _$FormStatusCopyWithImpl(this._value, this._then);

  final FormStatus _value;
  // ignore: unused_field
  final $Res Function(FormStatus) _then;
}

abstract class _$FormInitialCopyWith<$Res> {
  factory _$FormInitialCopyWith(
          _FormInitial value, $Res Function(_FormInitial) then) =
      __$FormInitialCopyWithImpl<$Res>;
}

class __$FormInitialCopyWithImpl<$Res> extends _$FormStatusCopyWithImpl<$Res>
    implements _$FormInitialCopyWith<$Res> {
  __$FormInitialCopyWithImpl(
      _FormInitial _value, $Res Function(_FormInitial) _then)
      : super(_value, (v) => _then(v as _FormInitial));

  @override
  _FormInitial get _value => super._value as _FormInitial;
}

class _$_FormInitial implements _FormInitial {
  const _$_FormInitial();

  @override
  String toString() {
    return 'FormStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FormInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitting(),
    @required Result success(Course course),
    @required Result failure(),
  }) {
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitting(),
    Result success(Course course),
    Result failure(),
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
    @required Result initial(_FormInitial value),
    @required Result submitting(_FormSubmitting value),
    @required Result success(_FormSuccess value),
    @required Result failure(_FormFailure value),
  }) {
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_FormInitial value),
    Result submitting(_FormSubmitting value),
    Result success(_FormSuccess value),
    Result failure(_FormFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FormInitial implements FormStatus {
  const factory _FormInitial() = _$_FormInitial;
}

abstract class _$FormSubmittingCopyWith<$Res> {
  factory _$FormSubmittingCopyWith(
          _FormSubmitting value, $Res Function(_FormSubmitting) then) =
      __$FormSubmittingCopyWithImpl<$Res>;
}

class __$FormSubmittingCopyWithImpl<$Res> extends _$FormStatusCopyWithImpl<$Res>
    implements _$FormSubmittingCopyWith<$Res> {
  __$FormSubmittingCopyWithImpl(
      _FormSubmitting _value, $Res Function(_FormSubmitting) _then)
      : super(_value, (v) => _then(v as _FormSubmitting));

  @override
  _FormSubmitting get _value => super._value as _FormSubmitting;
}

class _$_FormSubmitting implements _FormSubmitting {
  const _$_FormSubmitting();

  @override
  String toString() {
    return 'FormStatus.submitting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FormSubmitting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitting(),
    @required Result success(Course course),
    @required Result failure(),
  }) {
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    assert(failure != null);
    return submitting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitting(),
    Result success(Course course),
    Result failure(),
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
    @required Result initial(_FormInitial value),
    @required Result submitting(_FormSubmitting value),
    @required Result success(_FormSuccess value),
    @required Result failure(_FormFailure value),
  }) {
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    assert(failure != null);
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_FormInitial value),
    Result submitting(_FormSubmitting value),
    Result success(_FormSuccess value),
    Result failure(_FormFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitting implements FormStatus {
  const factory _FormSubmitting() = _$_FormSubmitting;
}

abstract class _$FormSuccessCopyWith<$Res> {
  factory _$FormSuccessCopyWith(
          _FormSuccess value, $Res Function(_FormSuccess) then) =
      __$FormSuccessCopyWithImpl<$Res>;
  $Res call({Course course});
}

class __$FormSuccessCopyWithImpl<$Res> extends _$FormStatusCopyWithImpl<$Res>
    implements _$FormSuccessCopyWith<$Res> {
  __$FormSuccessCopyWithImpl(
      _FormSuccess _value, $Res Function(_FormSuccess) _then)
      : super(_value, (v) => _then(v as _FormSuccess));

  @override
  _FormSuccess get _value => super._value as _FormSuccess;

  @override
  $Res call({
    Object course = freezed,
  }) {
    return _then(_FormSuccess(
      course == freezed ? _value.course : course as Course,
    ));
  }
}

class _$_FormSuccess implements _FormSuccess {
  const _$_FormSuccess(this.course) : assert(course != null);

  @override
  final Course course;

  @override
  String toString() {
    return 'FormStatus.success(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormSuccess &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(course);

  @override
  _$FormSuccessCopyWith<_FormSuccess> get copyWith =>
      __$FormSuccessCopyWithImpl<_FormSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitting(),
    @required Result success(Course course),
    @required Result failure(),
  }) {
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    assert(failure != null);
    return success(course);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitting(),
    Result success(Course course),
    Result failure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_FormInitial value),
    @required Result submitting(_FormSubmitting value),
    @required Result success(_FormSuccess value),
    @required Result failure(_FormFailure value),
  }) {
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_FormInitial value),
    Result submitting(_FormSubmitting value),
    Result success(_FormSuccess value),
    Result failure(_FormFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FormSuccess implements FormStatus {
  const factory _FormSuccess(Course course) = _$_FormSuccess;

  Course get course;
  _$FormSuccessCopyWith<_FormSuccess> get copyWith;
}

abstract class _$FormFailureCopyWith<$Res> {
  factory _$FormFailureCopyWith(
          _FormFailure value, $Res Function(_FormFailure) then) =
      __$FormFailureCopyWithImpl<$Res>;
}

class __$FormFailureCopyWithImpl<$Res> extends _$FormStatusCopyWithImpl<$Res>
    implements _$FormFailureCopyWith<$Res> {
  __$FormFailureCopyWithImpl(
      _FormFailure _value, $Res Function(_FormFailure) _then)
      : super(_value, (v) => _then(v as _FormFailure));

  @override
  _FormFailure get _value => super._value as _FormFailure;
}

class _$_FormFailure implements _FormFailure {
  const _$_FormFailure();

  @override
  String toString() {
    return 'FormStatus.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FormFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitting(),
    @required Result success(Course course),
    @required Result failure(),
  }) {
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    assert(failure != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitting(),
    Result success(Course course),
    Result failure(),
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
    @required Result initial(_FormInitial value),
    @required Result submitting(_FormSubmitting value),
    @required Result success(_FormSuccess value),
    @required Result failure(_FormFailure value),
  }) {
    assert(initial != null);
    assert(submitting != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_FormInitial value),
    Result submitting(_FormSubmitting value),
    Result success(_FormSuccess value),
    Result failure(_FormFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FormFailure implements FormStatus {
  const factory _FormFailure() = _$_FormFailure;
}
