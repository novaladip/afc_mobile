import 'package:afc_mobile/features/course/presentation/section_detail/bloc/attendance_form_bloc/attendance_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/section_detail_bloc.dart';

class SectionDetailHeader extends StatefulWidget {
  @override
  _SectionDetailHeaderState createState() => _SectionDetailHeaderState();
}

class _SectionDetailHeaderState extends State<SectionDetailHeader> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionDetailBloc, SectionDetailState>(
      builder: (context, state) {
        final section =
            state is SectionDetailStateLoaded ? state.section : null;
        final title = section?.count?.toString() ?? '';

        return ThemeBuilder(
          builder: (context, appTheme) {
            final primaryColor = appTheme.primaryColor;

            return AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: primaryColor),
              centerTitle: true,
              title: Text(
                'Section ' + title,
                style: TextStyle(
                  fontFamily: 'Pacifito',
                  color: primaryColor,
                ),
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    context.bloc<AttendanceFormBloc>().add(SaveButtonPressed());
                  },
                  icon: Icon(Icons.save),
                )
              ],
            );
          },
        );
      },
    );
  }
}
