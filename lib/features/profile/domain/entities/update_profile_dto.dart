import 'dart:io';
import 'package:equatable/equatable.dart';

class UpdateProfileDto extends Equatable {
  final File avatar;

  const UpdateProfileDto(this.avatar);

  @override
  List<Object> get props => [avatar];
}
