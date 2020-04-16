part of 'section_photo_form_bloc.dart';

abstract class SectionPhotoFormEvent extends Equatable {
  const SectionPhotoFormEvent();

  @override
  List<Object> get props => [];
}

class ClearPhotoForm extends SectionPhotoFormEvent {}

class OnChangePhotoForm extends SectionPhotoFormEvent {
  final File photo;

  const OnChangePhotoForm(this.photo);

  @override
  List<Object> get props => [photo];
}
