import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final VoidCallback onRetry;
  final String message;

  const ErrorScreen({
    Key key,
    @required this.onRetry,
    this.message = 'Oops something went wrong, please try again.',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return BaseContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/icons/error.png',
                height: appTheme.height * 0.3,
              ),
              SizedBox(height: 8),
              Text(
                message,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              MainButton(
                color: Color(0XFF684ae7),
                text: 'Retry',
                onPressed: onRetry,
              ),
            ],
          ),
        );
      },
    );
  }
}
