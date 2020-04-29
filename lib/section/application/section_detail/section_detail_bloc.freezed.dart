// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'section_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SectionDetailEventTearOff {
  const _$SectionDetailEventTearOff();

  _Fetch fetch(String sectionId) {
    return _Fetch(
      sectionId,
    );
  }

  _Refresh refresh() {
    return const _Refresh();
  }
}

// ignore: unused_element
const $SectionDetailEvent = _$SectionDetailEventTearOff();

mixin _$SectionDetailEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(String sectionId),
    @required Result refresh(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(String sectionId),
    Result refresh(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    @required Result orElse(),
  });
}

abstract class $SectionDetailEventCopyWith<$Res> {
  factory $SectionDetailEventCopyWith(
          SectionDetailEvent value, $Res Function(SectionDetailEvent) then) =
      _$SectionDetailEventCopyWithImpl<$Res>;
}

class _$SectionDetailEventCopyWithImpl<$Res>
    implements $SectionDetailEventCopyWith<$Res> {
  _$SectionDetailEventCopyWithImpl(this._value, this._then);

  final SectionDetailEvent _value;
  // ignore: unused_field
  final $Res Function(SectionDetailEvent) _then;
}

abstract class _$FetchCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
  $Res call({String sectionId});
}

class __$FetchCopyWithImpl<$Res> extends _$SectionDetailEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;

  @override
  $Res call({
    Object sectionId = freezed,
  }) {
    return _then(_Fetch(
      sectionId == freezed ? _value.sectionId : sectionId as String,
    ));
  }
}

class _$_Fetch implements _Fetch {
  const _$_Fetch(this.sectionId) : assert(sectionId != null);

  @override
  final String sectionId;

  @override
  String toString() {
    return 'SectionDetailEvent.fetch(sectionId: $sectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetch &&
            (identical(other.sectionId, sectionId) ||
                const DeepCollectionEquality()
                    .equals(other.sectionId, sectionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sectionId);

  @override
  _$FetchCopyWith<_Fetch> get copyWith =>
      __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(String sectionId),
    @required Result refresh(),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(sectionId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(String sectionId),
    Result refresh(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(sectionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements SectionDetailEvent {
  const factory _Fetch(String sectionId) = _$_Fetch;

  String get sectionId;
  _$FetchCopyWith<_Fetch> get copyWith;
}

abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

class __$RefreshCopyWithImpl<$Res>
    extends _$SectionDetailEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'SectionDetailEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(String sectionId),
    @required Result refresh(),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(String sectionId),
    Result refresh(),
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
    @required Result fetch(_Fetch value),
    @required Result refresh(_Refresh value),
  }) {
    assert(fetch != null);
    assert(refresh != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_Fetch value),
    Result refresh(_Refresh value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements SectionDetailEvent {
  const factory _Refresh() = _$_Refresh;
}

class _$SectionDetailStateTearOff {
  const _$SectionDetailStateTearOff();

  _Failure failure() {
    return const _Failure();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {@required SectionDetail section, @required StatusState status}) {
    return _Loaded(
      section: section,
      status: status,
    );
  }
}

// ignore: unused_element
const $SectionDetailState = _$SectionDetailStateTearOff();

mixin _$SectionDetailState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(),
    @required Result loading(),
    @required Result loaded(SectionDetail section, StatusState status),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(),
    Result loading(),
    Result loaded(SectionDetail section, StatusState status),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_Failure value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  });
}

abstract class $SectionDetailStateCopyWith<$Res> {
  factory $SectionDetailStateCopyWith(
          SectionDetailState value, $Res Function(SectionDetailState) then) =
      _$SectionDetailStateCopyWithImpl<$Res>;
}

class _$SectionDetailStateCopyWithImpl<$Res>
    implements $SectionDetailStateCopyWith<$Res> {
  _$SectionDetailStateCopyWithImpl(this._value, this._then);

  final SectionDetailState _value;
  // ignore: unused_field
  final $Res Function(SectionDetailState) _then;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

class __$FailureCopyWithImpl<$Res>
    extends _$SectionDetailStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'SectionDetailState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(),
    @required Result loading(),
    @required Result loaded(SectionDetail section, StatusState status),
  }) {
    assert(failure != null);
    assert(loading != null);
    assert(loaded != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(),
    Result loading(),
    Result loaded(SectionDetail section, StatusState status),
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
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  }) {
    assert(failure != null);
    assert(loading != null);
    assert(loaded != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_Failure value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SectionDetailState {
  const factory _Failure() = _$_Failure;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res>
    extends _$SectionDetailStateCopyWithImpl<$Res>
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
    return 'SectionDetailState.loading()';
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
    @required Result failure(),
    @required Result loading(),
    @required Result loaded(SectionDetail section, StatusState status),
  }) {
    assert(failure != null);
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(),
    Result loading(),
    Result loaded(SectionDetail section, StatusState status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  }) {
    assert(failure != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_Failure value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SectionDetailState {
  const factory _Loading() = _$_Loading;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({SectionDetail section, StatusState status});

  $StatusStateCopyWith<$Res> get status;
}

class __$LoadedCopyWithImpl<$Res> extends _$SectionDetailStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object section = freezed,
    Object status = freezed,
  }) {
    return _then(_Loaded(
      section: section == freezed ? _value.section : section as SectionDetail,
      status: status == freezed ? _value.status : status as StatusState,
    ));
  }

  @override
  $StatusStateCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $StatusStateCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

class _$_Loaded implements _Loaded {
  const _$_Loaded({@required this.section, @required this.status})
      : assert(section != null),
        assert(status != null);

  @override
  final SectionDetail section;
  @override
  final StatusState status;

  @override
  String toString() {
    return 'SectionDetailState.loaded(section: $section, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.section, section) ||
                const DeepCollectionEquality()
                    .equals(other.section, section)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(section) ^
      const DeepCollectionEquality().hash(status);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failure(),
    @required Result loading(),
    @required Result loaded(SectionDetail section, StatusState status),
  }) {
    assert(failure != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(section, status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failure(),
    Result loading(),
    Result loaded(SectionDetail section, StatusState status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(section, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failure(_Failure value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
  }) {
    assert(failure != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failure(_Failure value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SectionDetailState {
  const factory _Loaded(
      {@required SectionDetail section,
      @required StatusState status}) = _$_Loaded;

  SectionDetail get section;
  StatusState get status;
  _$LoadedCopyWith<_Loaded> get copyWith;
}
