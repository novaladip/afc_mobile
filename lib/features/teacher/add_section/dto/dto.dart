import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AddSectionDto extends Equatable {
  final String courseId;
  final int count;

  const AddSectionDto({
    @required this.courseId,
    @required this.count,
  });

  FormData get toFormData {
    return FormData.fromMap(toMap);
  }

  Map<String, dynamic> get toMap {
    return {
      'course_id': courseId,
      'count': count,
    };
  }

  @override
  List<Object> get props => [];
}
