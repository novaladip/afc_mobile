import 'package:flutter/material.dart';

import 'widgets/base_layout.dart';

class CourseDetailPage extends StatefulWidget {
  static const routeName = '/course/detail';

  @override
  _CourseDetailPageState createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(),
    );
  }
}
