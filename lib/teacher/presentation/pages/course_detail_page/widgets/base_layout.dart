import 'package:afc_mobile/common/models/models.dart';
import 'package:afc_mobile/teacher/presentation/pages/course_detail_page/widgets/course_not_started.dart';
import 'package:afc_mobile/teacher/teacher.dart';
import 'package:flutter/material.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'header.dart';
import 'section_container.dart';

class BaseLayout extends StatefulWidget {
  @override
  _BaseLayoutState createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  final now = DateTime.now();
  Course course;
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailBloc, CourseDetailState>(
      builder: (context, state) {
        return ThemeBuilder(
          builder: (context, appTheme) => Stack(
            children: <Widget>[
              Image.asset(
                'assets/course_background.png',
                height: appTheme.height,
                width: appTheme.width,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 0,
                child: Opacity(
                  opacity: 0.09,
                  child: Image.asset(
                    'assets/classroom.jpg',
                    height: appTheme.height * 0.4,
                    width: appTheme.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Header(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                ),
                margin: EdgeInsets.only(
                  left: appTheme.width * 0.02,
                  top: appTheme.height * 0.28,
                ),
                width: appTheme.width * 0.98,
                height: appTheme.height * 0.72,
                child: now.isBefore(DateTime.parse(course.closeDate))
                    ? CourseNotStarted(
                        closeDate: course.closeDate,
                      )
                    : state.when(
                        loading: () => LoadingIndicator(),
                        failure: () => ErrorScreen(onRetry: fetchCourse),
                        loaded: (course, status) =>
                            SectionContainer(sections: course.sections),
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  void fetchCourse() {
    course = ModalRoute.of(context).settings.arguments as Course;
    context.bloc<CourseDetailBloc>().add(CourseDetailEvent.fetch(course.id));
  }

  @override
  void didChangeDependencies() {
    if (initial) {
      fetchCourse();
      initial = false;
    }
    super.didChangeDependencies();
  }
}
