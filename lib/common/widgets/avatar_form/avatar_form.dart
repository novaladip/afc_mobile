import 'dart:io';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AvatarForm extends StatelessWidget {
  final Function(File file) onChange;
  final File value;

  const AvatarForm({
    Key key,
    @required this.onChange,
    @required this.value,
  }) : super(key: key);

  ImageProvider get backgroundImage {
    if (value == null) {
      return AssetImage('/assets/avatar_placeholder.png');
    }
    return FileImage(value);
  }

  Widget get child {
    if (value == null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(value != null ? '' : 'Avatar'),
          Icon(Icons.photo),
        ],
      );
    }

    return Container();
  }

  Future<void> getImage(bool useCamera) async {
    final image = await ImagePicker.pickImage(
        source: useCamera ? ImageSource.camera : ImageSource.gallery);
    if (image == null) {
      return;
    }

    onChange(image);
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      child: CupertinoAlertDialog(
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
              child: child,
            ),
          ),
        );
      },
    );
  }
}
