import 'dart:io';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/class_photo_form_bloc/section_photo_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class PhotoForm extends StatefulWidget {
  final bool isLoading;

  const PhotoForm({
    Key key,
    @required this.isLoading,
  }) : super(key: key);

  @override
  _PhotoFormState createState() => _PhotoFormState();
}

class _PhotoFormState extends State<PhotoForm> {
  final photoController = TextEditingController();
  SectionPhotoFormBloc _sectionPhotoFormBloc;
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        if (widget.isLoading) {
          return Container();
        }

        return BlocBuilder<SectionPhotoFormBloc, SectionPhotoFormState>(
          builder: (context, state) {
            return Container(
              padding: EdgeInsets.only(bottom: 30, left: 15, right: 15),
              width: appTheme.width,
              child: Form(
                child: Column(
                  children: <Widget>[
                    if (state.photoPath.isNotEmpty)
                      Image.file(
                        File(state.photoPath),
                        height: 100,
                      ),
                    GestureDetector(
                      onTap: _showDialog,
                      child: AbsorbPointer(
                        absorbing: true,
                        child: TextInput(
                          controller: photoController,
                          labelText: 'Class Photo',
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    MainButton(
                      onPressed: () {},
                      text: 'Recognize Student',
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      child: AlertDialog(
        title: Text('Choose Image'),
        content: Text('From camera or gallery?'),
        actions: <Widget>[
          FlatButton(
              child: Text('Camera'),
              onPressed: () {
                Navigator.of(context).pop();
                getImage(true);
              }),
          FlatButton(
              child: Text('Gallery'),
              onPressed: () {
                Navigator.of(context).pop();
                getImage(false);
              })
        ],
      ),
    );
  }

  Future<void> getImage(bool useCamera) async {
    final image = await ImagePicker.pickImage(
        source: useCamera ? ImageSource.camera : ImageSource.gallery);
    if (image == null) {
      return;
    }

    photoController.text = image.path.split('/').last;
    context.bloc<SectionPhotoFormBloc>().add(OnChangePhotoForm(image));
  }

  void clearPhotoForm() {
    _sectionPhotoFormBloc.add(ClearPhotoForm());
  }

  @override
  void initState() {
    if (_sectionPhotoFormBloc == null) {
      _sectionPhotoFormBloc = context.bloc<SectionPhotoFormBloc>();
    }
    super.initState();
  }

  @override
  void dispose() {
    clearPhotoForm();
    photoController.dispose();
    super.dispose();
  }
}
