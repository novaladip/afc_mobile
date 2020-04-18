import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/class_photo_form_bloc/section_photo_form_bloc.dart';

class PhotoForm extends StatefulWidget {
  final bool isLoading;
  final String sectionId;

  const PhotoForm({
    Key key,
    @required this.isLoading,
    @required this.sectionId,
  }) : super(key: key);

  @override
  _PhotoFormState createState() => _PhotoFormState();
}

class _PhotoFormState extends State<PhotoForm> {
  final photoController = TextEditingController();
  SectionPhotoFormBloc _sectionPhotoFormBloc;
  bool initial = true;

  void showSnackBar({
    @required String title,
    @required String message,
    Color color = Colors.green,
  }) {
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: color,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title),
              Text(message),
            ],
          ),
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        if (widget.isLoading) {
          return Container();
        }

        return BlocConsumer<SectionPhotoFormBloc, SectionPhotoFormState>(
          listener: (context, state) {
            if (state.isSuccess) {
              showSnackBar(
                  title: 'We found ${state.result.facesFound} faces',
                  message: 'Student list form has been automatically updated');
            }

            if (state.isFailure) {
              showSnackBar(
                color: Colors.red,
                title: "Failed",
                message:
                    "You can try again, if the error persist you can manually absent the students.",
              );
            }
          },
          builder: (context, state) {
            return Container(
              padding: EdgeInsets.only(bottom: 30, left: 15, right: 15),
              width: appTheme.width,
              child: Form(
                child: Column(
                  children: <Widget>[
                    if (state.result?.photo != null)
                      ResultPhotoViewer(
                        url: state.result.photo,
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
                      loading: state.isSubmiting,
                      onPressed: state.photoPath.isEmpty ? null : onSubmit,
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

  void onSubmit() {
    _sectionPhotoFormBloc.add(
      RecognizeButtonPressed(widget.sectionId),
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

class ResultPhotoViewer extends StatelessWidget {
  final String url;

  const ResultPhotoViewer({
    Key key,
    @required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      color: Colors.transparent,
      width: double.infinity,
      height: 200,
      child: ClipRect(
        child: PhotoView(
          backgroundDecoration: BoxDecoration(color: Colors.transparent),
          imageProvider: NetworkImage(url),
          maxScale: PhotoViewComputedScale.covered * 2.0,
          minScale: PhotoViewComputedScale.contained * 0.8,
          initialScale: PhotoViewComputedScale.covered,
        ),
      ),
    );
  }
}
