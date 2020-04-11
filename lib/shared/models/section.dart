import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Section extends Equatable {
  final String id;
  final int count;
  final String date;

  Section({
    @required this.id,
    @required this.count,
    @required this.date,
  });

  factory Section.fromJSON(Map<String, dynamic> json) {
    return Section(
      id: json['id'],
      count: json['count'],
      date: json['date'],
    );
  }

  @override
  List<Object> get props => [id, count, date];
}
