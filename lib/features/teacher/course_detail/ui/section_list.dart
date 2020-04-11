import 'package:afc_mobile/shared/models/models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SectionList extends StatelessWidget {
  final List<Section> sections;
  final boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    boxShadow: [
      BoxShadow(
        blurRadius: 1,
        spreadRadius: 0.1,
        offset: Offset(3, 3),
        color: Colors.grey.withOpacity(0.1),
      ),
    ],
    color: Color(0XFFFAF8F8),
  );

  String formatDate(String date) =>
      DateFormat.yMd().format(DateTime.parse(date));

  SectionList({
    Key key,
    @required this.sections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15),
        itemCount: sections.length,
        itemBuilder: (context, index) {
          final section = sections[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 9),
            padding: EdgeInsets.all(15),
            decoration: boxDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Section ${section.count}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  formatDate(section.date),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
