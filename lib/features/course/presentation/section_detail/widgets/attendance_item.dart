import 'package:afc_mobile/config/env.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance_form.dart';
import 'package:flutter/material.dart';

final statusItem = ["M", "TH"];

class AttendanceItem extends StatelessWidget {
  final AttendanceForm attendance;
  final Function(String status) onChange;

  const AttendanceItem({
    Key key,
    @required this.attendance,
    @required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          leftItem(),
          rightItem(),
        ],
      ),
    );
  }

  Widget leftItem() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage(Env.baseURL + attendance.avatar),
        ),
        SizedBox(width: 10),
        Text(
          attendance.name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget rightItem() {
    return DropdownButton(
      onChanged: onChange,
      value: attendance.status.isEmpty ? "TH" : attendance.status,
      items: statusItem
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(item),
            ),
          )
          .toList(),
    );
  }
}
