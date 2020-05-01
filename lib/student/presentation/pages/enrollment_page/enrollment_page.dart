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
      body: BlocConsumer<EnrollmentBloc, EnrollmentState>(
        listener: (context, state) {
          state.failureType.maybeWhen(
            orElse: () {},
            refresh: () {
              Scaffold.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text('Failed to refresh'),
                    backgroundColor: Colors.red,
                  ),
                );
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.status.maybeWhen(
            orElse: () => false,
            loading: () => true,
          );

          final isFailure = state.failureType.maybeWhen(
            orElse: () => false,
            fetch: () => true,
          );

          if (isFailure) {
            return ErrorScreen(onRetry: getEnrollments);
          }

          if (isLoading) {
            return LoadingIndicator();
          }

          return RefreshIndicator(
            onRefresh: () async {
              context.bloc<EnrollmentBloc>().add(EnrollmentEvent.refresh());
            },
            child: SafeArea(
              child: EnrollmentList(),
            ),
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
