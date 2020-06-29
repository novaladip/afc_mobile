import 'package:flutter/material.dart';

import '../../../../../common/utils/utils.dart';

class CourseNotStarted extends StatelessWidget {
  final String closeDate;

  const CourseNotStarted({
    Key key,
    @required this.closeDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Text(
        'Kelas akan di mulai pada tanggal: ${formatDate(closeDate)}',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontFamily: 'Comic Neue',
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
