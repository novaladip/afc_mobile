import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  final String text;

  const SettingItem({
    Key key,
    @required this.onPress,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 15),
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'Comic Neue',
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 15),
          ],
        ),
      ),
    );
  }
}
