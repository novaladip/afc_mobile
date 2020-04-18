import 'package:flutter/material.dart';

import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/features/course/course.dart';
import 'package:afc_mobile/features/course/domain/entities/section.dart';

class SectionCard extends StatelessWidget {
  final Section section;

  const SectionCard({
    Key key,
    @required this.section,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(
          SectionDetailPage.routeName,
          arguments: section.id,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Section ${section.count}',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(formatDate(section.date)),
            ],
          ),
        ),
      ),
    );
  }
}
