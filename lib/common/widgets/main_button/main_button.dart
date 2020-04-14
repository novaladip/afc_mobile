import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../widgets.dart';

class MainButton extends StatelessWidget {
  final String text;
  final bool loading;
  final Function onPressed;
  final bool outline;

  const MainButton({
    @required this.text,
    this.loading = false,
    @required this.onPressed,
    this.outline = false,
  });

  TextStyle getTextStyle(AppTheme appTheme) {
    return TextStyle(
      fontFamily: 'Comic Neue',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: outline ? appTheme.primaryColor : Colors.white,
    );
  }

  Widget buttonChild(AppTheme appTheme) {
    return loading
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(text, style: getTextStyle(appTheme)),
              SizedBox(width: 15),
              SpinKitDualRing(
                color: outline ? appTheme.primaryColor : Colors.white,
                size: 12,
              ),
            ],
          )
        : Text(text, style: getTextStyle(appTheme));
  }

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            maxHeight: 50,
            minHeight: 50,
          ),
          child: RaisedButton(
            disabledColor: outline
                ? appTheme.primaryColor.withOpacity(0.2)
                : appTheme.primaryColor.withOpacity(0.5),
            color: outline ? Colors.white : appTheme.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                width: 2,
                color: appTheme.primaryColor,
                style: outline ? BorderStyle.solid : BorderStyle.none,
              ),
            ),
            child: buttonChild(appTheme),
            onPressed: loading ? null : onPressed,
          ),
        );
      },
    );
  }
}
