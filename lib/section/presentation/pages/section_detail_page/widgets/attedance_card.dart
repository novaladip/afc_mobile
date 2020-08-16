import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/section/section.dart';

class AttendanceCard extends StatelessWidget {
  final Attendance attendance;

  const AttendanceCard({
    Key key,
    @required this.attendance,
  }) : super(key: key);

  String get status {
    if (attendance.status.isEmpty || attendance.status == "TH") {
      return "Tidak Hadir";
    }

    return "Hadir";
  }

  Color get statusColor {
    if (attendance.status.isEmpty || attendance.status == "TH") {
      return Colors.red;
    }

    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: CachedNetworkImageProvider(
              attendance.student.avatar,
            ),
          ),
          SizedBox(width: 8),
          Text(
            attendance.student.fullName,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Text(
            status,
            style: TextStyle(
              color: statusColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
