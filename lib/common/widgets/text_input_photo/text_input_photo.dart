import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TextInputPhoto extends StatelessWidget {
  TextInputPhoto({
    Key key,
    @required this.value,
    @required this.onChange,
  }) : super(key: key);

  final String value;
  final Function(String photoPath) onChange;
  final picker = ImagePicker();

  String get label =>
      value.isEmpty ? 'Press to choose a photo' : value.split("/").last;

  Widget get leading => value.isEmpty
      ? Icon(Icons.photo)
      : Image.file(
          File(value),
          height: 30,
          width: 30,
        );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showDialog(context),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            leading,
            SizedBox(width: 5),
            Flexible(
              child: Text(label, overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getImage(bool useCamera) async {
    final image = await picker.getImage(
      preferredCameraDevice: CameraDevice.rear,
      source: useCamera ? ImageSource.camera : ImageSource.gallery,
    );
    if (image == null) {
      return;
    }

    onChange(image.path);
  }

  void _showDialog(BuildContext context) {
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
}
