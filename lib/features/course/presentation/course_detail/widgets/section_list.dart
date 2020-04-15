import 'package:afc_mobile/features/course/domain/entities/section.dart';
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

        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: sections.length,
          itemBuilder: (context, index) {
            final section = sections[index];
            if (index == 0) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 25),
                    child: Text(
                      'Section List',
                      style: TextStyle(
                        fontFamily: 'Comic Neue',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  buildCard(section),
                ],
              );
            }

            return buildCard(section);
          },
        );
      },
    );
  }

  Card buildCard(Section section) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: InkWell(
        onTap: () {},
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
