import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  final String text;

  const Setting({
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
            Icon(icon, size: 20),
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Comic Neue',
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, size: 18),
          ],
        ),
      ),
    );
  }
}