import 'package:afc_mobile/features/student/enrollment/enrollment.dart';
import 'package:afc_mobile/features/student/enrollment/ui/enrollment_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnrollmentScreen extends StatefulWidget {
  @override
  _EnrollmentScreenState createState() => _EnrollmentScreenState();
}

class _EnrollmentScreenState extends State<EnrollmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enrollment'),
      ),
      body: BlocBuilder<EnrollmentBloc, EnrollmentState>(
        builder: (context, state) {
          return EnrollmentList(state);
        },
      ),
    );
  }

  void initial() {
    BlocProvider.of<EnrollmentBloc>(context).add(FetchEnrollment());
  }

  @override
  void initState() {
    initial();
    super.initState();
  }
}
