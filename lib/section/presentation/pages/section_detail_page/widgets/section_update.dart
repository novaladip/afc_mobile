import 'package:flutter/material.dart';

import 'recognize_form.dart';

class SectionUpdate extends StatefulWidget {
  @override
  _SectionUpdateState createState() => _SectionUpdateState();
}

class _SectionUpdateState extends State<SectionUpdate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        RecognizeForm(),
      ],
    );
  }
}
