import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_course_dto.freezed.dart';

@freezed
abstract class CreateCourseDto with _$CreateCourseDto {
  const factory CreateCourseDto({
    @required String name,
    @required String closeDate,
  }) = _CreateCourseDto;
}
