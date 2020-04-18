part of 'section_photo_form_bloc.dart';

class SectionPhotoFormState extends Equatable {
  final RecognizeResult result;
  final String photoPath;
  final bool isSubmiting;
  final bool isFailure;
  final bool isSuccess;

  String get fileName => photoPath?.split('/')?.last ?? 'No photo selected';

  const SectionPhotoFormState({
    this.result,
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
    RecognizeResult result,
    String photo,
    bool isSubmiting,
    bool isFailure,
    bool isSuccess,
  }) {
    return SectionPhotoFormState(
      result: result ?? this.result,
      photoPath: photo ?? this.photoPath,
      isSubmiting: isSubmiting ?? this.isSubmiting,
      isFailure: isFailure ?? this.isFailure,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  @override
  List<Object> get props =>
      [photoPath, isSubmiting, isFailure, isSuccess, result];
}
