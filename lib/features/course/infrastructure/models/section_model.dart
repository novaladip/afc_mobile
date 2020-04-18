import 'package:meta/meta.dart';

import 'package:afc_mobile/features/course/domain/entities/section.dart';

class SectionModel extends Section {
  SectionModel({
    @required String id,
    @required int count,
    @required String date,
  }) : super(id: id, count: count, date: date);

  factory SectionModel.fromJson(Map<String, dynamic> json) {
    return SectionModel(
      id: json['id'],
      count: json['count'],
      date: json['date'],
    );
  }
}
