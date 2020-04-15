import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';

import 'bloc/course_detail_bloc.dart';

class CourseDetailPage extends StatefulWidget {
  static const routeName = '/course-detail';

  @override
  _CourseDetailPageState createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CourseDetailBloc, CourseDetailState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isFailure) {
            return ErrorScreen(
              onRetry: getCourseDetail,
            );
          }

          if (state.isLoading) {
            return LoadingIndicator();
          }

          return Container();
        },
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (initial) {
      initial = false;
      getCourseDetail();
    }
  }

  @override
  void deactivate() {
    // Clear state
    context.bloc<CourseDetailBloc>().add(ClearCourseDetailState());

    super.deactivate();
  }

  void getCourseDetail() {
    final String courseId = ModalRoute.of(context).settings.arguments;
    context.bloc<CourseDetailBloc>().add(GetCourseDetail(courseId));
  }
}
