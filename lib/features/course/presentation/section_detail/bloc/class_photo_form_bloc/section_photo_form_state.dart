part of 'section_photo_form_bloc.dart';

class SectionPhotoFormState extends Equatable {
  final String photoPath;
  final bool isSubmiting;
  final bool isFailure;
  final bool isSuccess;

  String get fileName => photoPath?.split('/')?.last ?? 'No photo selected';

  const SectionPhotoFormState({
    @required this.photoPath,
    @required this.isSubmiting,
    @required this.isFailure,
    @required this.isSuccess,
  });

  factory SectionPhotoFormState.initial() {
    return SectionPhotoFormState(
      photoPath: '',
      isFailure: false,
      isSubmiting: false,
      isSuccess: false,
    );
  }

  SectionPhotoFormState copyWith({
    String photo,
    bool isSubmiting,
    bool isFailure,
    bool isSuccess,
  }) {
    return SectionPhotoFormState(
      photoPath: photo ?? this.photoPath,
      isSubmiting: isSubmiting ?? this.isSubmiting,
      isFailure: isFailure ?? this.isFailure,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  @override
  String toString() {
    return 'SectionPhotoFormState $fileName';
  }

  @override
  List<Object> get props => [photoPath, isSubmiting, isFailure, isSuccess];
}
