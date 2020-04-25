// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'create_course_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreateCourseDtoTearOff {
  const _$CreateCourseDtoTearOff();

  _CreateCourseDto call({@required String name, @required String closeDate}) {
    return _CreateCourseDto(
      name: name,
      closeDate: closeDate,
    );
  }
}

// ignore: unused_element
const $CreateCourseDto = _$CreateCourseDtoTearOff();

mixin _$CreateCourseDto {
  String get name;
  String get closeDate;

  $CreateCourseDtoCopyWith<CreateCourseDto> get copyWith;
}

abstract class $CreateCourseDtoCopyWith<$Res> {
  factory $CreateCourseDtoCopyWith(
          CreateCourseDto value, $Res Function(CreateCourseDto) then) =
      _$CreateCourseDtoCopyWithImpl<$Res>;
  $Res call({String name, String closeDate});
}

class _$CreateCourseDtoCopyWithImpl<$Res>
    implements $CreateCourseDtoCopyWith<$Res> {
  _$CreateCourseDtoCopyWithImpl(this._value, this._then);

  final CreateCourseDto _value;
  // ignore: unused_field
  final $Res Function(CreateCourseDto) _then;

  @override
  $Res call({
    Object name = freezed,
    Object closeDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      closeDate: closeDate == freezed ? _value.closeDate : closeDate as String,
    ));
  }
}

abstract class _$CreateCourseDtoCopyWith<$Res>
    implements $CreateCourseDtoCopyWith<$Res> {
  factory _$CreateCourseDtoCopyWith(
          _CreateCourseDto value, $Res Function(_CreateCourseDto) then) =
      __$CreateCourseDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String closeDate});
}

class __$CreateCourseDtoCopyWithImpl<$Res>
    extends _$CreateCourseDtoCopyWithImpl<$Res>
    implements _$CreateCourseDtoCopyWith<$Res> {
  __$CreateCourseDtoCopyWithImpl(
      _CreateCourseDto _value, $Res Function(_CreateCourseDto) _then)
      : super(_value, (v) => _then(v as _CreateCourseDto));

  @override
  _CreateCourseDto get _value => super._value as _CreateCourseDto;

  @override
  $Res call({
    Object name = freezed,
    Object closeDate = freezed,
  }) {
    return _then(_CreateCourseDto(
      name: name == freezed ? _value.name : name as String,
      closeDate: closeDate == freezed ? _value.closeDate : closeDate as String,
    ));
  }
}

class _$_CreateCourseDto implements _CreateCourseDto {
  const _$_CreateCourseDto({@required this.name, @required this.closeDate})
      : assert(name != null),
        assert(closeDate != null);

  @override
  final String name;
  @override
  final String closeDate;

  @override
  String toString() {
    return 'CreateCourseDto(name: $name, closeDate: $closeDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCourseDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.closeDate, closeDate) ||
                const DeepCollectionEquality()
                    .equals(other.closeDate, closeDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(closeDate);

  @override
  _$CreateCourseDtoCopyWith<_CreateCourseDto> get copyWith =>
      __$CreateCourseDtoCopyWithImpl<_CreateCourseDto>(this, _$identity);
}

abstract class _CreateCourseDto implements CreateCourseDto {
  const factory _CreateCourseDto(
      {@required String name, @required String closeDate}) = _$_CreateCourseDto;

  @override
  String get name;
  @override
  String get closeDate;
  @override
  _$CreateCourseDtoCopyWith<_CreateCourseDto> get copyWith;
}
