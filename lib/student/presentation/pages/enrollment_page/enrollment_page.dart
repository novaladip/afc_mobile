import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/enrollment_list.dart';
import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class EnrollmentPage extends StatefulWidget {
  @override
  _EnrollmentPageState createState() => _EnrollmentPageState();
}

class _EnrollmentPageState extends State<EnrollmentPage> {
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<EnrollmentBloc, EnrollmentState>(
        builder: (context, state) {
          if (state.isFailure) {
            return ErrorScreen(onRetry: getEnrollments);
          }

          if (state.isLoading) {
            return LoadingIndicator();
          }

          return SafeArea(
            child: EnrollmentList(),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    if (initial) {
      getEnrollments();
      initial = false;
    }
    super.initState();
  }

  void getEnrollments() {
    context.bloc<EnrollmentBloc>()..add(EnrollmentEvent.fetch());
  }
}
