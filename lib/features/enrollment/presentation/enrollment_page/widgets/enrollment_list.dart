import 'package:flutter/material.dart';

import 'enrollment_card.dart';
import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';

class EnrollmentList extends StatelessWidget {
  final List<Enrollment> enrollments;

  const EnrollmentList({
    Key key,
    @required this.enrollments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemCount: enrollments.length,
      itemBuilder: (context, index) {
        final enrollment = enrollments[index];
        return EnrollmentCard(
          key: Key(enrollment.id),
          enrollment: enrollment,
        );
      },
    );
  }
}
