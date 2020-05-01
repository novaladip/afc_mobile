import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  final String value;

  const ProfileItem({
    Key key,
    @required this.text,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) => Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: appTheme.textTheme.body1,
            ),
            Text(
              value,
              style: appTheme.textTheme.body1.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
