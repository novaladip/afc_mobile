import 'package:flutter/material.dart';

void showBasicSnackBar(
  BuildContext context, {
  @required String title,
  Color color = Colors.green,
}) {
  final snackbar = SnackBar(
    content: Text(title),
    backgroundColor: color,
    duration: Duration(seconds: 5),
  );

  Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(snackbar);
}
