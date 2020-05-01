import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class Section extends Equatable {
  final String id;
  final int count;
  final String date;

  const Section({
    @required this.id,
    @required this.count,
    @required this.date,
  });

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        id: json['id'],
        count: json['count'],
        date: json['date'],
      );

  @override
  List<Object> get props => [id, count, date];
}
