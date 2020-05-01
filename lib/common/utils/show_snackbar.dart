import 'package:flutter/material.dart';

void showBasicSnackBar(
  BuildContext context, {
  @required String title,
  Color color = Colors.green,
}) {
  final snackbar = SnackBar(
    content: Text(title),
    backgroundColor: color,
  );

  Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(snackbar);
}
