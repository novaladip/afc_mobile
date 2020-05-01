import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'enrollment_card.dart';
import 'package:afc_mobile/student/student.dart';

class EnrollmentList extends StatefulWidget {
  @override
  _EnrollmentListState createState() => _EnrollmentListState();
}

class _EnrollmentListState extends State<EnrollmentList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EnrollmentBloc, EnrollmentState>(
      builder: (context, state) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemCount: state.enrollments.length,
          itemBuilder: (context, index) {
            final enrollment = state.enrollments[index];
            return EnrollmentCard(
              key: Key(enrollment.id),
              enrollment: enrollment,
            );
          },
        );
      },
    );
  }
}
