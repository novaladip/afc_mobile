import 'package:afc_mobile/features/teacher/course_detail/course_detail.dart';
import 'package:afc_mobile/features/teacher/course_detail/ui/loading.dart';
import 'package:afc_mobile/features/teacher/course_detail/ui/section_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'course_detail_error.dart';

class CourseDetailPage extends StatefulWidget {
  static const routeName = '/course_detail';

  @override
  _CourseDetailPageState createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  bool isInitial = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Detail'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: BlocBuilder<CourseDetailBloc, CourseDetailState>(
        builder: (context, state) {
          if (state is CourseDetailFailure) {
            return CourseDetailError();
          }

          if (state is CourseDetailLoaded) {
            return Column(
              children: <Widget>[
                SizedBox(height: 15),
                Text(
                  state.courseDetail.name,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SectionList(sections: state.courseDetail.sections),
              ],
            );
          }

          return Loading();
        },
      ),
    );
  }

  @override
  void didChangeDependencies() {
    if (isInitial) {
      init();
      isInitial = false;
    }
    super.didChangeDependencies();
  }

  void init() {
    final String courseId = ModalRoute.of(context).settings.arguments;
    BlocProvider.of<CourseDetailBloc>(context).add(FetchCourseDetail(courseId));
  }
}
