// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'attendance_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AttendanceFormDtoTearOff {
  const _$AttendanceFormDtoTearOff();

  _AttendanceFormDto call(
      {@required String id,
      @required String status,
      @required String fullName,
      @required String avatar}) {
    return _AttendanceFormDto(
      id: id,
      status: status,
      fullName: fullName,
      avatar: avatar,
    );
  }
}

// ignore: unused_element
const $AttendanceFormDto = _$AttendanceFormDtoTearOff();

mixin _$AttendanceFormDto {
  String get id;
  String get status;
  String get fullName;
  String get avatar;

  $AttendanceFormDtoCopyWith<AttendanceFormDto> get copyWith;
}

abstract class $AttendanceFormDtoCopyWith<$Res> {
  factory $AttendanceFormDtoCopyWith(
          AttendanceFormDto value, $Res Function(AttendanceFormDto) then) =
      _$AttendanceFormDtoCopyWithImpl<$Res>;
  $Res call({String id, String status, String fullName, String avatar});
}

class _$AttendanceFormDtoCopyWithImpl<$Res>
    implements $AttendanceFormDtoCopyWith<$Res> {
  _$AttendanceFormDtoCopyWithImpl(this._value, this._then);

  final AttendanceFormDto _value;
  // ignore: unused_field
  final $Res Function(AttendanceFormDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object status = freezed,
    Object fullName = freezed,
    Object avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      status: status == freezed ? _value.status : status as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

abstract class _$AttendanceFormDtoCopyWith<$Res>
    implements $AttendanceFormDtoCopyWith<$Res> {
  factory _$AttendanceFormDtoCopyWith(
          _AttendanceFormDto value, $Res Function(_AttendanceFormDto) then) =
      __$AttendanceFormDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String status, String fullName, String avatar});
}

class __$AttendanceFormDtoCopyWithImpl<$Res>
    extends _$AttendanceFormDtoCopyWithImpl<$Res>
    implements _$AttendanceFormDtoCopyWith<$Res> {
  __$AttendanceFormDtoCopyWithImpl(
      _AttendanceFormDto _value, $Res Function(_AttendanceFormDto) _then)
      : super(_value, (v) => _then(v as _AttendanceFormDto));

  @override
  _AttendanceFormDto get _value => super._value as _AttendanceFormDto;

  @override
  $Res call({
    Object id = freezed,
    Object status = freezed,
    Object fullName = freezed,
    Object avatar = freezed,
  }) {
    return _then(_AttendanceFormDto(
      id: id == freezed ? _value.id : id as String,
      status: status == freezed ? _value.status : status as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

class _$_AttendanceFormDto implements _AttendanceFormDto {
  _$_AttendanceFormDto(
      {@required this.id,
      @required this.status,
      @required this.fullName,
      @required this.avatar})
      : assert(id != null),
        assert(status != null),
        assert(fullName != null),
        assert(avatar != null);

  @override
  final String id;
  @override
  final String status;
  @override
  final String fullName;
  @override
  final String avatar;

  bool _didtoMap = false;
  Map<String, dynamic> _toMap;

  @override
  Map<String, dynamic> get toMap {
    if (_didtoMap == false) {
      _didtoMap = true;
      _toMap = {
        'id': id,
        'status': status,
      };
    }
    return _toMap;
  }

  @override
  String toString() {
    return 'AttendanceFormDto(id: $id, status: $status, fullName: $fullName, avatar: $avatar, toMap: $toMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AttendanceFormDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(avatar);

  @override
  _$AttendanceFormDtoCopyWith<_AttendanceFormDto> get copyWith =>
      __$AttendanceFormDtoCopyWithImpl<_AttendanceFormDto>(this, _$identity);
}

abstract class _AttendanceFormDto implements AttendanceFormDto {
  factory _AttendanceFormDto(
      {@required String id,
      @required String status,
      @required String fullName,
      @required String avatar}) = _$_AttendanceFormDto;

  @override
  String get id;
  @override
  String get status;
  @override
  String get fullName;
  @override
  String get avatar;
  @override
  _$AttendanceFormDtoCopyWith<_AttendanceFormDto> get copyWith;
}
