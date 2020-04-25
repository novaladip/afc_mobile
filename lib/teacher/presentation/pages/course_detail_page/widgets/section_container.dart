import 'package:flutter/material.dart';

import 'section_card.dart';
import 'package:afc_mobile/teacher/teacher.dart';

class SectionContainer extends StatelessWidget {
  final List<Section> sections;

  const SectionContainer({
    Key key,
    this.sections,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Section List',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              createSectionButton(),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemCount: sections.length,
            itemBuilder: (context, index) =>
                SectionCard(section: sections[index]),
          ),
        ),
      ],
    );
  }

  Widget createSectionButton() {
    return OutlineButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))),
      borderSide: BorderSide(color: Colors.purple, width: 2),
      onPressed: () {},
      child: Text('Create Section'),
    );
  }
}
