import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/course_detail_bloc.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/course_detail/widgets/widgets.dart';

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
        listener: (context, state) {
          print(state.isLoading);
        },
        builder: (context, state) {
          if (state.isFailure) {
            return ErrorScreen(
              onRetry: getCourseDetail,
            );
          }

          return CourseDetailBaseLayout();
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

  void getCourseDetail() {
    final String courseId = ModalRoute.of(context).settings.arguments;
    context.bloc<CourseDetailBloc>().add(GetCourseDetail(courseId));
  }
}
