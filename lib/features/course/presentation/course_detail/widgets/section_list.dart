import 'package:afc_mobile/features/course/domain/entities/section.dart';
import 'package:afc_mobile/features/course/presentation/course_detail/widgets/section_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/features/course/presentation/course_detail/bloc/course_detail_bloc.dart';

class SectionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailBloc, CourseDetailState>(
      builder: (context, state) {
        final sections = state.course.sections;

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25, bottom: 15),
              child: Text(
                'Section List',
                style: TextStyle(
                  fontFamily: 'Comic Neue',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
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
      },
    );
  }
}
