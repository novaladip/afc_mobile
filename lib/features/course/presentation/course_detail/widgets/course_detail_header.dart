import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/course_detail/bloc/course_detail_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CourseDetailHeader extends StatelessWidget {
  const CourseDetailHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailBloc, CourseDetailState>(
      builder: (context, state) {
        return ThemeBuilder(
          builder: (context, appTheme) {
            final course = state.course;

            return Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: appTheme.height * 0.28,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildBackButton(context),
                  SizedBox(height: 15),
                  state.isLoading ? loadingIndicator : buildContent(course),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget get loadingIndicator {
    return SpinKitWave(
      color: Colors.white,
      size: 50,
    );
  }

  Widget buildContent(CourseDetail course) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            course.name,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Pacifito',
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          buildCaption(
              'You have ${course.sections.length} sections & ${course.students.length} students'),
        ],
      ),
    );
  }

  Widget buildBackButton(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      iconSize: 50,
      color: Colors.white,
      icon: Icon(
        Icons.chevron_left,
      ),
    );
  }

  Text buildCaption(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontFamily: 'Comic Neue',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}