import 'package:afc_mobile/shared/models/models.dart';
import 'package:flutter/material.dart';

class AttedanceListForm extends StatelessWidget {
  final List<Attendance> attendances;

  const AttedanceListForm({
    Key key,
    @required this.attendances,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            'Student List',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: attendances.length,
            itemBuilder: (context, index) {
              final attendance = attendances[index];

              return AttendanceItem(
                attendance: attendance,
              );
            }),
      ],
    );
  }
}

class AttendanceItem extends StatefulWidget {
  static const baseURL = 'http://10.0.2.2:5000';
  final Attendance attendance;
  final String initialStatus;
  AttendanceItem({
    Key key,
    @required this.attendance,
  })  : initialStatus = attendance.status.isEmpty ? "TH" : attendance.status,
        super(key: key);

  @override
  _AttendanceItemState createState() => _AttendanceItemState();
}

class _AttendanceItemState extends State<AttendanceItem> {
  String status = "";
  List<String> statusItem = ["M", "TH"];

  onChange(String value) => setState(() => status = value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
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
          radius: 25,
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage(
              '${AttendanceItem.baseURL}/${widget.attendance.student.avatar}'),
        ),
        SizedBox(width: 10),
        Text(
          widget.attendance.student.fullName,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget rightItem() {
    return DropdownButton(
      onChanged: onChange,
      value: status.isEmpty ? widget.initialStatus : status,
      items: statusItem
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
