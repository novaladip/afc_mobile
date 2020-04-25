part of 'create_section_bloc.dart';

@immutable
abstract class CreateSectionEvent extends Equatable {}

class CreateSectionButtonPressed extends CreateSectionEvent {
  final String courseId;
  final int count;

  CreateSectionButtonPressed({
    @required this.courseId,
    @required this.count,
  });

  @override
  List<Object> get props => [courseId, count];
}
