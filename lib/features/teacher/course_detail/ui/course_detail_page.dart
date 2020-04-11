import 'package:afc_mobile/features/teacher/add_section/add_section.dart';
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
  String courseId;
  bool isInitial = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddSectionBloc, AddSectionState>(
      listener: (context, state) {},
      builder: (context, addSectionState) {
        return BlocBuilder<CourseDetailBloc, CourseDetailState>(
          builder: (context, courseDetailState) {
            final isLoading =
                courseDetailState is CourseDetailLoading ? true : false;
            final isAddingSection =
                addSectionState is AddSectionLoading ? true : false;

            return Scaffold(
              appBar: AppBar(
                title: Text('Course Detail'),
                centerTitle: true,
              ),
              floatingActionButton: isLoading || isAddingSection
                  ? null
                  : FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () => addSection(courseDetailState
                              is CourseDetailLoaded
                          ? courseDetailState.courseDetail.sections.length + 1
                          : 0),
                    ),
              body: buildBody(courseDetailState),
            );
          },
        );
      },
    );
  }

  Widget buildBody(CourseDetailState state) {
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
  }

  void addSection(int count) {
    if (count == 0) {
      return;
    }

    BlocProvider.of<AddSectionBloc>(context).add(
      AddSectionButtonPressed(
        AddSectionDto(
          count: count,
          courseId: courseId,
        ),
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
    courseId = ModalRoute.of(context).settings.arguments;
    BlocProvider.of<CourseDetailBloc>(context).add(FetchCourseDetail(courseId));
  }
}
