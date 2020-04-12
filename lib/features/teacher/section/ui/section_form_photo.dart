import 'dart:io';

import 'package:afc_mobile/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SectionFormPhoto extends StatefulWidget {
  @override
  _SectionFormPhotoState createState() => _SectionFormPhotoState();
}

class _SectionFormPhotoState extends State<SectionFormPhoto> {
  final photoController = TextEditingController();
  File image;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: Column(
        children: <Widget>[
          if (photoController.text.isNotEmpty)
            Image.file(
              image,
              width: double.infinity,
              height: 150,
              fit: BoxFit.fitWidth,
            ),
          SizedBox(height: 15),
          buildForm(),
          SizedBox(height: 15),
          MainButton(
            onPressed: () {},
            outline: false,
            text: "Recognize Students",
          )
        ],
      ),
    );
  }

  Widget buildForm() {
    return GestureDetector(
      onTap: getImage,
      child: AbsorbPointer(
        absorbing: true,
        child: TextField(
          controller: photoController,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.photo_camera),
            contentPadding: EdgeInsets.all(15),
            labelText: "Class Photo",
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> getImage() async {
    image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      photoController.text = image.toString();
    });
  }

  @override
  void dispose() {
    super.dispose();
    photoController.dispose();
  }
}
