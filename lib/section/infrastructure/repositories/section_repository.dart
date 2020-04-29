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
}
