import 'dart:io';
import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AvatarForm extends StatelessWidget {
  final Function(File file) onChange;
  final File value;
  final picker = ImagePicker();

  AvatarForm({
    Key key,
    @required this.onChange,
    @required this.value,
  }) : super(key: key);

  ImageProvider get backgroundImage {
    if (value == null) {
      return AssetImage('assets/avatar_placeholder.png');
    }
    return FileImage(value);
  }

  Future<void> getImage(bool useCamera) async {
    final image = await picker.getImage(
        source: useCamera ? ImageSource.camera : ImageSource.gallery);
    if (image == null) {
      return;
    }

    final fixedImage = await FlutterExifRotation.rotateImage(path: image.path);

    onChange(fixedImage);
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      child: AlertDialog(
        title: Text(
          'Pilih gambar',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        content: Text(
          'Dari camera atau gallery?',
          style: Theme.of(context).textTheme.bodyText1,
        ),
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

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return BaseContainer(
          child: InkWell(
            onTap: () => _showDialog(context),
            child: CircleAvatar(
              backgroundImage: backgroundImage,
              radius: appTheme.height * 0.1,
            ),
          ),
        );
      },
    );
  }
}
