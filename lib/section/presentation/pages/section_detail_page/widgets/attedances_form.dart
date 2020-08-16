import 'package:afc_mobile/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/section/section.dart';

class AttendancesForm extends StatefulWidget {
  @override
  _AttendancesFormState createState() => _AttendancesFormState();
}

class _AttendancesFormState extends State<AttendancesForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AttendancesFormBloc, AttendancesFormState>(
      listener: (context, state) {
        state.status.maybeWhen(
          orElse: () {},
          success: () => showBasicSnackBar(context, title: 'Update berhasil'),
          failure: (message) =>
              showBasicSnackBar(context, title: message, color: Colors.red),
        );
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'DAFTAR ABSENSI',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                  ),
                  InkWell(
                    onTap: () => context
                        .bloc<AttendancesFormBloc>()
                        .add(AttendancesFormEvent.onSubmit()),
                    child: state.status.maybeWhen(
                      orElse: () => Text(
                        'SIMPAN',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                      submitting: () => Text(
                        'MENYIMPAN',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 15),
              shrinkWrap: true,
              itemCount: state.attendances.length,
              itemBuilder: (context, index) => AttendanceForm(
                key: Key(state.attendances[index].id),
                dto: state.attendances[index],
                onChange: (v) => context.bloc<AttendancesFormBloc>().add(
                      AttendancesFormEvent.onFormChange(
                        index: index,
                        status: v,
                      ),
                    ),
              ),
            ),
          ],
        );
      },
    );
  }
}

final statusItem = ["M", "TH"];

class AttendanceForm extends StatelessWidget {
  const AttendanceForm({
    Key key,
    @required this.dto,
    @required this.onChange,
  }) : super(key: key);

  final AttendanceFormDto dto;
  final Function(String status) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          leftItem(context),
          rightItem(),
        ],
      ),
    );
  }

  Widget leftItem(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage(dto.avatar),
        ),
        SizedBox(width: 10),
        Text(
          dto.fullName,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget rightItem() {
    return DropdownButton(
      onChanged: onChange,
      value: dto.status.isEmpty ? "TH" : dto.status,
      items: statusItem
          .map(
            (item) => DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
          .toList(),
    );
  }
}
