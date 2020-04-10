import 'package:afc_mobile/features/student/enrollment/ui/enrollment_failure.dart';
import 'package:afc_mobile/features/student/enrollment/ui/enrollment_item.dart';
import 'package:afc_mobile/features/student/enrollment/ui/enrollment_loading.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/features/student/enrollment/enrollment.dart';

class EnrollmentList extends StatelessWidget {
  final EnrollmentState state;

  EnrollmentList(this.state);

  @override
  Widget build(BuildContext context) {
    if (state.isFailure) {
      return EnrollmentFailure();
    }

    if (state.isLoading) {
      return EnrollmentLoading();
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15),
      itemCount: state.enrollments.length,
      itemBuilder: (context, index) {
        return EnrollmentItem(
          enrollment: state.enrollments[index],
        );
      },
    );
  }
}
