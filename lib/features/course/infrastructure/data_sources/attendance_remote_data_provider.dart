import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance_form.dart';

@lazySingleton
class AttendanceRemoteDataProvider {
  final Api api;

  AttendanceRemoteDataProvider({
    @required this.api,
  });
  Future<void> saveAttendances(List<AttendanceForm> attendances) async {
    try {
      final data = attendances.map((a) => a.toMap).toList();
      await api.dio.put(
        '/attendance/update/bulk',
        data: {'attendances': data},
      );
    } catch (e) {
      throw e;
    }
  }
}
