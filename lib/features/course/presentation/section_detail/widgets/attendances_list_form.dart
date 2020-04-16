import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/attendance_form_bloc/attendance_form_bloc.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/widgets/attendance_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttendancesListForm extends StatefulWidget {
  final bool isLoading;

  const AttendancesListForm({
    Key key,
    @required this.isLoading,
  }) : super(key: key);

  @override
  _AttendancesListFormState createState() => _AttendancesListFormState();
}

class _AttendancesListFormState extends State<AttendancesListForm> {
  AttendanceFormBloc _attendanceFormBloc;

  @override
  void initState() {
    if (_attendanceFormBloc == null) {
      _attendanceFormBloc = context.bloc<AttendanceFormBloc>();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading) {
      return Container();
    }

    return ThemeBuilder(
      builder: (context, appTheme) {
        return BlocConsumer<AttendanceFormBloc, AttendanceFormState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Student List',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Pacifito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.attendances.length,
                    itemBuilder: (context, index) {
                      final attendance = state.attendances[index];
                      return AttendanceItem(
                        attendance: attendance,
                        onChange: (status) => handleOnChange(
                          context,
                          status,
                          index,
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void handleOnChange(BuildContext context, String status, int index) {
    context.bloc<AttendanceFormBloc>().add(
          OnChangeAttendanceStatus(
            status,
            index,
          ),
        );
  }

  @override
  void dispose() {
    _attendanceFormBloc.add(ClearAttendanceFormState());
    super.dispose();
  }
}
