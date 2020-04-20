import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/enrollment_bloc.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Enrollment',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Comic Neue',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: BlocBuilder<EnrollmentBloc, EnrollmentState>(
        builder: (context, state) {
          if (state is EnrollmentStateFailure) {
            return ErrorScreen(onRetry: getEnrollments);
          }

          if (state is EnrollmentStateLoaded) {}

          return LoadingIndicator();
        },
      ),
    );
  }

  @override
  void didChangeDependencies() {
    if (initial) {
      initial = false;
      getEnrollments();
    }
    super.didChangeDependencies();
  }

  void getEnrollments() {
    context.bloc<EnrollmentBloc>().add(GetEnrollment());
  }
}
