import 'package:afc_mobile/features/student/course/models/models.dart';
import 'package:afc_mobile/features/student/course/ui/course_item.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class CourseLoading extends StatelessWidget {
  final CourseStudent courseStudent = CourseStudent(
    closeDate: "",
    createdAt: "",
    id: "",
    name: "",
    teacher: User(
        id: "",
        avatar: "",
        email: "",
        firstName: "",
        lastName: "",
        fullName: ""),
    teacherId: "",
  );

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, __) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.withOpacity(0.1),
            highlightColor: Colors.grey.withOpacity(0.5),
            child: CourseItem(
              course: courseStudent,
            ),
          );
        },
      ),
    );
  }
}
