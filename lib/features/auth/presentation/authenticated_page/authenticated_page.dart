import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/features/auth/presentation/splash_screen/bloc/auth_bloc.dart';
import 'package:afc_mobile/features/auth/presentation/authenticated_page/authenticated_student.dart';
import 'package:afc_mobile/features/auth/presentation/authenticated_page/authenticated_teacher.dart';

class AuthenticatedPage extends StatelessWidget {
  static const routeName = '/authenticated-page';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthStateAuthenticated) {
          if (state.user.role == Role.student) {
            return AuthenticatedStudent();
          }
          return AuthenticatedTeacher();
        }

        return Container();
      },
    );
  }
}
