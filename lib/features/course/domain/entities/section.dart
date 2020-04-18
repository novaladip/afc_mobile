import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class Section extends Equatable {
  final String id;
  final int count;
  final String date;

  Section({
    @required this.id,
    @required this.count,
    @required this.date,
  });

  @override
  List<Object> get props => [id, count, date];
}
