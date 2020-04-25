import 'package:flutter/material.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';

class EmptyScreen extends StatelessWidget {
  final String message;

  const EmptyScreen({
    Key key,
    @required this.message,
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
                'assets/icons/empty.png',
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
            ],
          ),
        );
      },
    );
  }
}
