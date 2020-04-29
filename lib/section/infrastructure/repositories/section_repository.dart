import 'package:afc_mobile/section/section.dart';
import 'package:injectable/injectable.dart';

@injectable
class SectionRepository implements SectionInterface {
  final SectionRemoteProvider sectionRemoteProvider;

  SectionRepository(
    this.sectionRemoteProvider,
  );

  @override
  Future<SectionDetail> fetchSectionDetail(String sectionId) {
    return sectionRemoteProvider.fetchSectionDetail(sectionId);
  }

  @override
  Future<RecognizeResult> recognizeStudent(String sectionId, String photoPath) {
    return sectionRemoteProvider.recognizeStudent(sectionId, photoPath);
  }

  @override
  Future<void> bulkUpdateAttendances(List<AttendanceFormDto> attendances) {
    return sectionRemoteProvider.bulkUpdateAttendances(attendances);
  }
}
