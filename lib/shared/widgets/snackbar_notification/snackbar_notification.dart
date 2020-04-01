import 'package:flutter/material.dart';

enum SnackBarNotificationType { ERROR, SUCCESS, WARNING }

_getIconData(SnackBarNotificationType type) {
  if (type == SnackBarNotificationType.ERROR) {
    return Icons.error_outline;
  }

  if (type == SnackBarNotificationType.WARNING) {
    return Icons.warning;
  }

  return Icons.verified_user;
}

Color _getBackgroundColor(SnackBarNotificationType type) {
  if (type == SnackBarNotificationType.ERROR) {
    return Colors.red;
  }

  if (type == SnackBarNotificationType.WARNING) {
    return Colors.yellow[600];
  }

  return Colors.green;
}

Color _getStyleColor(SnackBarNotificationType type) {
  if (type == SnackBarNotificationType.WARNING) {
    return Colors.black;
  }

  return Colors.white;
}

SnackBar snackbarNotification({
  @required SnackBarNotificationType type,
  @required String title,
  String message = "",
  Duration duration: const Duration(seconds: 2),
  SnackBarAction action,
}) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    duration: duration,
    action: action,
    content: Row(
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Icon(_getIconData(type), color: _getStyleColor(type)),
        SizedBox(width: 10),
        Wrap(
          direction: Axis.vertical,
          spacing: 2,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: _getStyleColor(type),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              message,
              style: TextStyle(
                color: _getStyleColor(type),
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    ),
    backgroundColor: _getBackgroundColor(type),
  );
}

SnackBar snackbarInternalServerError() {
  return snackbarNotification(
    title: "Server Failure",
    type: SnackBarNotificationType.ERROR,
    message: "Cannot reach the server, please try again later.",
  );
}

SnackBar snackbarNetworkError() {
  return snackbarNotification(
    title: "Network Error",
    type: SnackBarNotificationType.ERROR,
    message: "Make sure you connected to the internet.",
  );
}

SnackBar snackbarUnknownError() {
  return snackbarNotification(
    title: "Error",
    type: SnackBarNotificationType.ERROR,
    message: "Oops something went wrong.",
  );
}

SnackBar snackbarValidationFailure() {
  return snackbarNotification(
    title: "Validation Failure",
    type: SnackBarNotificationType.ERROR,
    message: "Please re-check your form input.",
  );
}
