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
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Comic Neue',
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Comic Neue',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
