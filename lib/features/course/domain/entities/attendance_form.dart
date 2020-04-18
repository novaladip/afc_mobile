import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AttendanceForm extends Equatable {
  final String id;
  final String status;
  final String name;
  final String avatar;

  AttendanceForm({
    @required this.id,
    @required this.status,
    @required this.name,
    @required this.avatar,
  });

  @override
  List<Object> get props => [id, status, name, this.avatar];

  // Used for dto when saving attendances
  get toMap {
    return {
      'id': id,
      'status': status,
    };
  }
}
